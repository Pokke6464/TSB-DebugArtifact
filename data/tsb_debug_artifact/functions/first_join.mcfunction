#> tsb_debug_artifact:first_join
#
# データパックを導入した初回のみ実行されるfunction
#
# @within function tsb_debug_artifact:load

# このfunctionを二度と実行されないようにする 
    data modify storage tsb_debug_artifact: FirstJoin set value true

# デバッグ用神器を与える
    execute as @a at @s run function tsb_debug_artifact:give

# メッセージを表示
    function tsb_debug_artifact:message
