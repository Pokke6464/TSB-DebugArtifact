#> asset:artifact/8800.debug_artifact_alpha/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/8800.debug_artifact_alpha/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 直立：難易度を切り替える
    execute unless predicate lib:is_sneaking if entity @s[x_rotation=-80..80] run function asset:artifact/8801.debug_artifact_beta/trigger/change_difficulty

# 直立+下向き：難易度限界突破
    execute unless predicate lib:is_sneaking unless entity @s[x_rotation=-90..80] run function asset:artifact/8801.debug_artifact_beta/trigger/over_difficulty

# 直立+上向き：信仰を切り替える
    execute unless predicate lib:is_sneaking unless entity @s[x_rotation=-80..90] run function asset:artifact/8801.debug_artifact_beta/trigger/change_believe

# スニーク：無敵の切り替え
    execute if predicate lib:is_sneaking if entity @s[x_rotation=-90..80] run function asset:artifact/8801.debug_artifact_beta/trigger/toggle_invincible

# スニーク+下向き：半径50m内の全ての敵に9999.9ダメージ
    execute if predicate lib:is_sneaking unless entity @s[x_rotation=-90..80] run playsound minecraft:block.fire.ambient master @a ~ ~ ~ 1 0.5
    execute if predicate lib:is_sneaking unless entity @s[x_rotation=-90..80] run particle squid_ink ~ ~0.25 ~ 0.5 0 0.5 0.1 10
    execute if predicate lib:is_sneaking unless entity @s[x_rotation=-90..80] as @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..50] run function asset:artifact/8801.debug_artifact_beta/trigger/attack