#> asset:artifact/8800.debug_artifact_alpha/trigger/lethal_damage
#
# 神器のメイン処理部
#
# @within function asset:artifact/8800.debug_artifact_alpha/trigger/3.main

# HPを2にする
    function api:data_get/health
    execute store result score @s Temporary run data get storage api: Health
    execute store result storage api: Argument.Damage double 1 run scoreboard players remove @s Temporary 1
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.FixedDamage set value 1b
    execute if entity @s[tag=!PlayerShouldInvulnerable] run function api:damage/
    function api:damage/reset

# 演出
    playsound entity.zombie.break_wooden_door player @a ~ ~ ~ 1 0.65
    particle dust 0.5 0 0 1 ~ ~0.75 ~ 0.5 0.7 0.5 0 50
