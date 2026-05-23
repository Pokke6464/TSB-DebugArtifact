#> asset:artifact/8800.debug_artifact_alpha/trigger/mp_reduce
#
# 神器のメイン処理部
#
# @within function asset:artifact/8800.debug_artifact_alpha/trigger/3.main

# 演出
    playsound block.beacon.deactivate player @a ~ ~ ~ 1 1.5
    particle dust_color_transition 0 1 0.886 1 0 0.235 1 ~ ~1 ~ 0.5 0.7 0.5 0 50

# MPを減らす
    data modify storage api: Argument.Fluctuation set value -9999f
    function api:mp/fluctuation
