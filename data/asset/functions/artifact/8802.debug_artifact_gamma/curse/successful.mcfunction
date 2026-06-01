#> asset:artifact/8802.debug_artifact_gamma/curse/successful
#
#
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
    function oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].IslandData.DispelPhase set value 0b
    tag @s remove DispelledCursedArtifact

# 祝福を手に入らないようにする
    tag @s add NoBlessing

# 近くにエンドからの帰還ポータルがあれば消去
    kill @e[type=marker,tag=BetaEndingPortal,distance=..10,sort=nearest,limit=1]

# シャード解禁状況のスコアを更新
    function asset_manager:island/dispel/update_unlocked_shard_lv/

# 商人の取引内容を更新する
    function api:trader/schedule_recipe_update_check

# リセット
    data remove storage lib: Temp
