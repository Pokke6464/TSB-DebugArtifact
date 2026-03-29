#> asset:artifact/8801.debug_artifact_beta/trigger/over_difficulty
#
# 神器のメイン処理部
#
# @within function asset:artifact/8801.debug_artifact_beta/trigger/3.main

# 既に限界突破しているか否かで鳴らす音を変える
    execute if score $Difficulty Global matches ..3 run playsound minecraft:item.totem.use player @a ~ ~ ~ 1 1.25
    execute if score $Difficulty Global matches 4.. run playsound entity.blaze.shoot player @a ~ ~ ~ 1 0.6
    execute if score $Difficulty Global matches 4.. run playsound entity.blaze.shoot player @a ~ ~ ~ 1 0.7

# 難易度を限界突破させる
    execute if score $Difficulty Global matches ..2 run scoreboard players set $Difficulty Global 3
    scoreboard players add $Difficulty Global 1

# 変更後の難易度を表示 / []の中には(難易度値 - 3)した値を表示
    scoreboard players operation $Difficulty Temporary = $Difficulty Global
    scoreboard players operation $Difficulty Temporary -= $3 Const
    tellraw @a [{"text":"難易度を ","color":"white"},{"text":"OverDifficulty[","color":"dark_red","bold":true},{"score":{"name":"$Difficulty","objective":"Temporary"},"color":"dark_red","bold":true},{"text":"]","color":"dark_red","bold":true},{"text":" に変更しました。"},{"text":"(難易度値: ","color":"gray","bold":false},{"score":{"name":"$Difficulty","objective":"Global"},"color":"gray"},{"text":")","color":"gray"}]
    scoreboard players reset $Difficulty Temporary
