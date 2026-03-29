#> tsb_debug_artifact:give
#
# 神器付与やメッセージの表示
#
# @within function tsb_debug_artifact:first_join

# デバッグ用神器を与える
    data modify storage api: Argument.ID set value 8800
    execute as @a at @s run function api:artifact/give/from_id
    data modify storage api: Argument.ID set value 8801
    execute as @a at @s run function api:artifact/give/from_id
    data modify storage api: Argument.ID set value 8802
    execute as @a at @s run function api:artifact/give/from_id
    data modify storage api: Argument.ID set value 8803
    execute as @a at @s run function api:artifact/give/from_id

# メッセージ
    tellraw @a {"text":"　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　","color":"white","strikethrough":true}
    tellraw @a {"text":"データパック [TSB Debug Artifact] の導入に成功しました。","color":"white"}
    tellraw @a {"text":""}
    tellraw @a {"text":"神器の見た目はこれが正常です。","color":"white"}
    tellraw @a {"text":""}
    tellraw @a {"text":"Ver 1.3.0","color":"white","bold":true}
    tellraw @a {"text":"　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　","color":"white","strikethrough":true}
