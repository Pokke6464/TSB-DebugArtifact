#> asset:artifact/8801.debug_artifact_beta/trigger/attack
#
# 神器のメイン処理部
#
# @within function asset:artifact/8801.debug_artifact_beta/trigger/3.main

# 演出
    playsound block.fire.ambient player @a ~ ~ ~ 1 0.5
    particle squid_ink ~ ~0.25 ~ 0.5 0 0.5 0.1 10

# 固定で9999.9ダメージを与える
    data modify storage api: Argument.Damage set value 9999.9f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.FixedDamage set value 1b
    function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..50] run function api:damage/
    function api:damage/reset
