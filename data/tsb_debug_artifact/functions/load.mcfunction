#> tsb_debug_artifact:load
#
# #load時に実行される処理
#
# @within tag/function minecraft:load

# 一度だけ実行
    execute unless data storage tsb_debug_artifact: {FirstJoin:true} run function tsb_debug_artifact:first_join

# Verの更新
    # function tsb_debug_artifact:version_update/check
