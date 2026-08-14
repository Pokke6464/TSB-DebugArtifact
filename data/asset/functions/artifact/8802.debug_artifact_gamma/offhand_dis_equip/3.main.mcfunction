#> asset:artifact/8802.debug_artifact_gamma/offhand_dis_equip/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/8802.debug_artifact_gamma/offhand_dis_equip/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    #function asset:artifact/common/use/offhand

# ここから先は神器側の効果の処理を書く

# 空腹を解除
    effect clear @s hunger
