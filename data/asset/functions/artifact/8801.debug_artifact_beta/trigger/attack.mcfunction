#> asset:artifact/8801.debug_artifact_beta/trigger/attack
#
# 神器のメイン処理部
#
# @within function asset:artifact/8801.debug_artifact_beta/trigger/3.main

# 固定で9999.9ダメージを与える
    data modify storage api: Argument.Damage set value 99999.9f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.FixedDamage set value 1b
    function api:damage/
    function api:damage/reset