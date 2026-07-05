#> asset:artifact/8804.debug_artifact_delta/tick/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/tick

# storage asset:idのheadに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{head:8804} run function asset:artifact/8804.debug_artifact_delta/tick/2.check_condition
