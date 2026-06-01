#> tsb_debug_artifact:give
#
# 神器を与える
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
