#> asset:artifact/8802.debug_artifact_gamma/charge/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/8802.debug_artifact_gamma/charge/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    #function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# スニーク時間を取得
    execute store result score $SneakTime Temporary run data get storage asset:context SneakTime.mainhand 1

# 3秒経過まではパーティクルを表示
    execute if score $SneakTime Temporary matches ..59 run particle dust 0.5 0 0.5 1.5 ~ ~0.1 ~ 1 0 1 0 2

# リセット
    scoreboard players reset $SneakTime Temporary