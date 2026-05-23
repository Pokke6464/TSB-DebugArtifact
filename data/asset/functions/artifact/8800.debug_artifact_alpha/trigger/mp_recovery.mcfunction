#> asset:artifact/8800.debug_artifact_alpha/trigger/mp_recovery
#
# 神器のメイン処理部
#
# @within function asset:artifact/8800.debug_artifact_alpha/trigger/3.main

# 演出
    playsound block.beacon.power_select player @a ~ ~ ~ 1 2
    particle dust 0.5 1 1 1 ~ ~1 ~ 0.5 0.7 0.5 0 50

# MPを回復
    data modify storage api: Argument.Fluctuation set value 9999f
    function api:mp/fluctuation
