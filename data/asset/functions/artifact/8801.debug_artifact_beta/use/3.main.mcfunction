#> asset:artifact/8801.debug_artifact_beta/use/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/8801.debug_artifact_beta/use/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 直立：難易度を変更
    execute unless predicate lib:is_sneaking if entity @s[x_rotation=-90..80] run function asset:artifact/8801.debug_artifact_beta/use/change_difficulty

# 直立+下向き：難易度を限界突破させる
    execute unless predicate lib:is_sneaking unless entity @s[x_rotation=-90..80] run function asset:artifact/8801.debug_artifact_beta/use/over_difficulty

# スニーク：無敵化の付与/解除
    execute if predicate lib:is_sneaking if entity @s[x_rotation=-90..80] run function asset:artifact/8801.debug_artifact_beta/use/toggle_invincible

# スニーク+下向き：半径50m内の全ての敵に9999.9ダメージを与える
    execute if predicate lib:is_sneaking unless entity @s[x_rotation=-90..80] run function asset:artifact/8801.debug_artifact_beta/use/attack
