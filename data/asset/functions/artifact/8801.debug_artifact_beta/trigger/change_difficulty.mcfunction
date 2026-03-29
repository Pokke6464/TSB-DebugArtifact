#> asset:artifact/8801.debug_artifact_beta/trigger/change_difficulty
#
# 神器のメイン処理部
#
# @within function asset:artifact/8801.debug_artifact_beta/trigger/3.main

# 難易度を変更
    scoreboard players add $Difficulty Global 1
    execute if score $Difficulty Global matches 4.. run scoreboard players set $Difficulty Global 1
    playsound ui.button.click player @a ~ ~ ~ 1 1

# 変更後の難易度を表示
    execute if score $Difficulty Global matches 1 run tellraw @a [{"translate":"難易度を %s に変更しました。","color":"white","with":[{"storage":"settings:","nbt":"TextRegistry.WithoutHoverEvent[1]","interpret":true}]},{"text":"(難易度値: 1)","color":"gray"}]
    execute if score $Difficulty Global matches 2 run tellraw @a [{"translate":"難易度を %s に変更しました。","color":"white","with":[{"storage":"settings:","nbt":"TextRegistry.WithoutHoverEvent[2]","interpret":true}]},{"text":"(難易度値: 2)","color":"gray"}]
    execute if score $Difficulty Global matches 3 run tellraw @a [{"translate":"難易度を %s に変更しました。","color":"white","with":[{"storage":"settings:","nbt":"TextRegistry.WithoutHoverEvent[3]","interpret":true}]},{"text":"(難易度値: 3)","color":"gray"}]