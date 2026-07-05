#> asset:artifact/8804.debug_artifact_delta/tick/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/8804.debug_artifact_delta/tick/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    data modify storage asset:artifact DisabledCheckFlag.Believe set value true
    function asset:artifact/common/check_condition/head
# 他にアイテム等確認する場合はここに書く

# スニークしているかつテレポーターが近くにあるならCanUsedを削除
    execute if predicate lib:is_sneaking if entity @e[type=item_display,tag=Teleporter,distance=..1.5,limit=1] run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/8804.debug_artifact_delta/tick/3.main
