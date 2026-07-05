#> asset:artifact/8804.debug_artifact_delta/tick/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/8804.debug_artifact_delta/tick/2.check_condition

# 一定間隔で最寄りの対象のタグなどを表示
    scoreboard players operation @s Temporary = $PlayTime Global
    scoreboard players operation @s Temporary %= $5 Const
    execute if score @s Temporary matches 0 as @e[type=!player,tag=!8800.TagDisplay,distance=..100,sort=nearest,limit=1] positioned as @s run function asset:artifact/8804.debug_artifact_delta/tick/data_display
    scoreboard players reset @s Temporary

# スニークしているならflashを表示してreturn
    execute if predicate lib:is_sneaking run return run function asset:artifact/8804.debug_artifact_delta/tick/sneaking

# タグ付与
    tag @s add 6SK.ArtifactUser

# エンティティの位置にdustを表示、種類によって色を変える
    execute as @e[type=!player,tag=!8800.TagDisplay,distance=..100,sort=nearest,limit=100] positioned as @s run function asset:artifact/8804.debug_artifact_delta/tick/normal

# タグ削除
    tag @s remove 6SK.ArtifactUser
