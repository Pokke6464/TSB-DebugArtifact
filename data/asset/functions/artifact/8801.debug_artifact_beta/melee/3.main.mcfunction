#> asset:artifact/8801.debug_artifact_beta/melee/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/8801.debug_artifact_beta/melee/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 攻撃を与えた対象を消滅させる
    execute as @e[type=#lib:living,type=!player,tag=Victim,tag=!Uninterferable,distance=..10] at @s run function asset:artifact/8801.debug_artifact_beta/melee/remove_mob
