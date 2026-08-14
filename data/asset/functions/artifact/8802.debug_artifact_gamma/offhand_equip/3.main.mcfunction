#> asset:artifact/8802.debug_artifact_gamma/offhand_equip/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/8802.debug_artifact_gamma/offhand_equip/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    #function asset:artifact/common/use/offhand

# ここから先は神器側の効果の処理を書く

# 演出
    playsound entity.husk.ambient player @a ~ ~ ~ 1 2
    particle dust_color_transition 0.45 0.6 0.45 2 0.2 0.35 0.2 ~ ~0.75 ~ 0.5 0.7 0.5 0 20

# 空腹を与える
    effect give @s hunger infinite 200 true
