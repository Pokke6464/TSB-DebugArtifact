#> tsb_debug_artifact:first_join
#
# データパックを導入した初回のみ実行されるfunction
#
# @within function tsb_debug_artifact:tick

# このfunctionを二度と実行されないようにする 
    data modify storage tsb_debug_artifact: FirstJoin set value true

# 1秒後にデバッグ用神器を与える&メッセージを表示
    schedule function tsb_debug_artifact:give 20t replace
