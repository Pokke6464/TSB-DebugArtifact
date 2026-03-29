#> asset:artifact/8802.debug_artifact_gamma/curse/successful
#
# 神器のメイン処理部
#
# @within function asset:artifact/8802.debug_artifact_gamma/curse/3.main

# 解呪数を1減らす
    scoreboard players remove $PurifiedIslands Global 1

# 演出
    playsound entity.illusioner.prepare_blindness player @a ~ ~ ~ 1 0.5 1
    playsound entity.illusioner.prepare_blindness player @a ~ ~ ~ 1 0.5 1
    particle dust 0.5 0 0.5 2.5 ~ ~0.3 ~ 0.75 0.2 0.75 0 30 force @a
    particle enchant ~ ~1.5 ~ 0.1 0.1 0.1 10 150 force @a

# 解呪進行度を取得
    function api:global_vars/game_progress
    execute store result storage lib: Temp.Progress int 1 run data get storage api: Return.Progress 100

# タイトル
    title @a times 10 60 30
    title @a title [{"text":"ISLAND CURSED","bold":true,"color":"dark_red"}]
    title @a subtitle {"text":"","bold":false,"extra":[{"text":"PROGRESS ","color":"aqua"},{"score":{"name":"$PurifiedIslands","objective":"Global"},"color":"white"},{"text":"\u0002","font":"space"},{"text":"/","color":"gray"},{"text":"\u0002","font":"space"},{"score":{"name":"$TotalIslands","objective":"Global"},"color":"white"},{"text":"\u0002","font":"space"},{"text":"("},{"storage":"lib:","nbt":"Temp.Progress"},{"text":"%)"}]}

# 再び祈れるようにする
    function debug:entity_storage/merge.m {Path:"IslandData",Data:"{DispelPhase:0b}"}
    tag @s remove DispelledCursedArtifact

# リセット
    data remove storage lib: Temp