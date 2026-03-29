#> asset:artifact/8800.debug_artifact_alpha/trigger/heal
#
# 神器のメイン処理部
#
# @within function asset:artifact/8800.debug_artifact_alpha/trigger/3.main

# HPを回復
    data modify storage api: Argument.Heal set value 9999.9f
    data modify storage api: Argument.FixedHeal set value true
    function api:heal/
    function api:heal/reset

# 演出
    playsound ogg:random.levelup player @a ~ ~ ~ 1 2
    particle happy_villager ~ ~0.75 ~ 0.5 0.7 0.5 0 30
