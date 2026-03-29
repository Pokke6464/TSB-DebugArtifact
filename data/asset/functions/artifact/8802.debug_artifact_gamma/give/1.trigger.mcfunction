#> asset:artifact/8802.debug_artifact_gamma/give/1.trigger
#
# 神器の取得処理の呼び出し時に実行されるfunction
#
# @within tag/function asset:artifact/give

execute if data storage asset:context {id:8802} run function asset:artifact/8802.debug_artifact_gamma/give/2.give
