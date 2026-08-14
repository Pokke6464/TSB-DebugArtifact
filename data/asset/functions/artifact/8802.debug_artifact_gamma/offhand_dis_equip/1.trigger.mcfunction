#> asset:artifact/8802.debug_artifact_gamma/offhand_dis_equip/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/*

# storage asset:context idのauto/feet/legs/chest/head/mainhand/offhandに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{offhand:8802} run function asset:artifact/8802.debug_artifact_gamma/offhand_dis_equip/2.check_condition