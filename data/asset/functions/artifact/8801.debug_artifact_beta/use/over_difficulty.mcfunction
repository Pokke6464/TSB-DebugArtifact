#> asset:artifact/8801.debug_artifact_beta/use/over_difficulty
#
# 神器のメイン処理部
#
# @within function asset:artifact/8801.debug_artifact_beta/use/3.main

# 既に限界突破しているか否かで鳴らす音を変える
    execute if score $Difficulty Global matches ..3 run playsound minecraft:item.totem.use player @a ~ ~ ~ 0.7 1.25
    execute if score $Difficulty Global matches 4.. run playsound entity.blaze.shoot player @a ~ ~ ~ 1 0.6
    execute if score $Difficulty Global matches 4.. run playsound entity.blaze.shoot player @a ~ ~ ~ 1 0.7

# 難易度を限界突破させる
    execute if score $Difficulty Global matches ..2 run scoreboard players set $Difficulty Global 3
    scoreboard players add $Difficulty Global 1

# 変更後の難易度を表示 / []の中には(難易度値 - 3)した値を表示
    scoreboard players operation $Difficulty Temporary = $Difficulty Global
    scoreboard players operation $Difficulty Temporary -= $3 Const
    tellraw @a [{"text":"難易度を ","color":"white"},{"translate":"OverDifficulty[%1$s]","color":"dark_red","bold":true, "with":[{"score":{"name":"$Difficulty","objective":"Temporary"},"color":"white","bold":true}]},{"text":" に変更しました。","color":"white","bold":false},{"translate":"(難易度値: %1$s)","color":"gray","bold":false, "with":[{"score":{"name":"$Difficulty","objective":"Global"}}]}]
    scoreboard players reset $Difficulty Temporary
