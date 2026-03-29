#> asset:artifact/8802.debug_artifact_gamma/charge/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/8802.debug_artifact_gamma/charge/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    data modify storage asset:artifact DisabledCheckFlag.Believe set value true
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/8802.debug_artifact_gamma/charge/3.main