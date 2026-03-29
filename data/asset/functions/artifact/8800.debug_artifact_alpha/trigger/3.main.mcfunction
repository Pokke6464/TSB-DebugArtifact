#> asset:artifact/8800.debug_artifact_alpha/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/8800.debug_artifact_alpha/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 直立：MPを9999回復
    execute unless predicate lib:is_sneaking if entity @s[x_rotation=-90..80] run data modify storage api: Argument.Fluctuation set value 9999f
    execute unless predicate lib:is_sneaking if entity @s[x_rotation=-90..80] run function api:mp/fluctuation
    execute unless predicate lib:is_sneaking if entity @s[x_rotation=-90..80] run playsound block.beacon.power_select player @a ~ ~ ~ 1 2
    execute unless predicate lib:is_sneaking if entity @s[x_rotation=-90..80] run particle dust 0.5 1 1 1 ~ ~1 ~ 0.5 0.7 0.5 0 50

# 直立+下向き：MPを9999消費
    execute unless predicate lib:is_sneaking unless entity @s[x_rotation=-90..80] run data modify storage api: Argument.Fluctuation set value -9999f
    execute unless predicate lib:is_sneaking unless entity @s[x_rotation=-90..80] run function api:mp/fluctuation
    execute unless predicate lib:is_sneaking unless entity @s[x_rotation=-90..80] run playsound block.beacon.deactivate player @a ~ ~ ~ 1 1.5
    execute unless predicate lib:is_sneaking unless entity @s[x_rotation=-90..80] run particle dust_color_transition 0 1 0.886 1 0 0.235 1 ~ ~1 ~ 0.5 0.7 0.5 0 50

# スニーク：HPを9999.9回復
    execute if predicate lib:is_sneaking if entity @s[x_rotation=-80..80] run function asset:artifact/8800.debug_artifact_alpha/trigger/heal

# スニーク+下向き：自身のHPを2にする
    execute if predicate lib:is_sneaking unless entity @s[x_rotation=-90..80] run function asset:artifact/8800.debug_artifact_alpha/trigger/lethal_damage

# スニーク+上向き：開発特権の切り替え
    execute if predicate lib:is_sneaking unless entity @s[x_rotation=-80..90] run function asset:artifact/8800.debug_artifact_alpha/trigger/toggle_dev_privilege