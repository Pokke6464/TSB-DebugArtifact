#> asset:artifact/8803.debugging_command_manual/give/1.trigger
#
# 神器の取得処理の呼び出し時に実行されるfunction
#
# @within tag/function asset:artifact/give

execute if data storage asset:context {id:8803} run function asset:artifact/8803.debugging_command_manual/give/2.give
