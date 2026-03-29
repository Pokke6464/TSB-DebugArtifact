#> asset:artifact/8802.debug_artifact_gamma/curse/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/8802.debug_artifact_gamma/curse/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 対象が無い場合の演出
    execute unless entity @e[type=armor_stand,tag=CursedArtifact,tag=DispelledCursedArtifact,distance=..2] run tellraw @s {"text":"近くに浄化済みの呪われた神器が存在しません。","color":"red"}
    execute unless entity @e[type=armor_stand,tag=CursedArtifact,tag=DispelledCursedArtifact,distance=..2] run playsound block.fire.extinguish player @a ~ ~ ~ 1 0.75
    execute unless entity @e[type=armor_stand,tag=CursedArtifact,tag=DispelledCursedArtifact,distance=..2] run particle large_smoke ~ ~0.1 ~ 1 0 1 0 30

# 呪われた神器が近くにあるなら島を再び呪う
    execute as @e[type=armor_stand,tag=CursedArtifact,tag=DispelledCursedArtifact,distance=..2,sort=nearest,limit=1] at @s run function asset:artifact/8802.debug_artifact_gamma/curse/successful