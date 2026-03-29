#> asset:artifact/8800.debug_artifact_alpha/give/1.trigger
#
# 神器の取得処理の呼び出し時に実行されるfunction
#
# @within tag/function asset:artifact/give

execute if data storage asset:context {id:8800} run function asset:artifact/8800.debug_artifact_alpha/give/2.give
