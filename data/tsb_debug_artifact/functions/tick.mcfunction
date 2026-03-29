#> tsb_debug_artifact:tick
#
# 常時実行部分
#
# @within tag/function minecraft:tick

# 一度だけ実行
    execute unless data storage tsb_debug_artifact: {FirstJoin:true} run function tsb_debug_artifact:first_join