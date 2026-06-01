#> tsb_debug_artifact:load
#
# #load時に実行される処理
#
# @within tag/function minecraft:load

# 初回のみ実行
    execute unless data storage tsb_debug_artifact: {FirstJoin:true} run schedule function tsb_debug_artifact:first_join 20t replace

# Verの更新を確認
    # function tsb_debug_artifact:version_update/check
