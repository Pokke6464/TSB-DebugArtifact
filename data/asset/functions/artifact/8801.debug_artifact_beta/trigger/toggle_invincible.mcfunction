#> asset:artifact/8801.debug_artifact_beta/trigger/toggle_invincible
#
# 神器のメイン処理部
#
# @within function asset:artifact/8801.debug_artifact_beta/trigger/3.main

# 無敵が付与されているなら解除
    execute if data entity @s active_effects[{id:"minecraft:resistance",amplifier:9b}] run playsound disabled_sounds:item.armor.equip_leather player @a ~ ~ ~ 1 1
    execute if data entity @s active_effects[{id:"minecraft:resistance",amplifier:9b}] run particle smoke ~ ~0.75 ~ 0.5 0.7 0.5 0.1 30
    execute if data entity @s active_effects[{id:"minecraft:resistance",amplifier:9b}] run return run effect clear @s resistance

# 無敵が付与されていないなら無敵化
    playsound block.anvil.place player @a ~ ~ ~ 1 1.5
    particle electric_spark ~ ~0.75 ~ 0.5 0.7 0.5 1 30
    effect give @s resistance infinite 9 true