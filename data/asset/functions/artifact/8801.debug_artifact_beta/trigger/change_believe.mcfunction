#> asset:artifact/8801.debug_artifact_beta/trigger/change_believe
#
# 神器のメイン処理部
#
# @within function asset:artifact/8801.debug_artifact_beta/trigger/3.main

# 変更後の信仰を表示
    execute if entity @s[tag=Believe.None] run tellraw @s [{"text":"信仰を ","color":"white"},{"text":"\uE000","font":"icon"},{"text":"フローラ","color":"white","bold":true},{"text":" に変更しました。","color":"white"}]
    execute if entity @s[tag=Believe.Flora] run tellraw @s [{"text":"信仰を ","color":"white"},{"text":"\uE001","font":"icon"},{"text":"ウルバン","color":"white","bold":true},{"text":" に変更しました。","color":"white"}]
    execute if entity @s[tag=Believe.Urban] run tellraw @s [{"text":"信仰を ","color":"white"},{"text":"\uE002","font":"icon"},{"text":"ニャプトフ","color":"white","bold":true},{"text":" に変更しました。","color":"white"}]
    execute if entity @s[tag=Believe.Nyaptov] run tellraw @s [{"text":"信仰を ","color":"white"},{"text":"\uE003","font":"icon"},{"text":"ウィ＝キ","color":"white","bold":true},{"text":" に変更しました。","color":"white"}]
    execute if entity @s[tag=Believe.Wi-ki] run tellraw @s [{"text":"信仰を ","color":"white"},{"text":"\uE004","font":"icon"},{"text":"ルーモア","color":"white","bold":true},{"text":" に変更しました。","color":"white"}]
    execute if entity @s[tag=Believe.Rumor] run tellraw @s [{"text":"信仰を ","color":"white"},{"text":"無信仰","color":"white","bold":true},{"text":" に変更しました。","color":"white"}]

# 演出
    execute if entity @s[tag=Believe.None] as @e[limit=2] run playsound block.grass.fall player @p ~ ~ ~ 1 0.8
    execute if entity @s[tag=Believe.Flora] run playsound entity.player.attack.knockback player @s ~ ~ ~ 1 0.8
    execute if entity @s[tag=Believe.Urban] run playsound entity.cat.ambient player @s ~ ~ ~ 1 0.8
    execute if entity @s[tag=Believe.Nyaptov] run playsound block.enchantment_table.use player @s ~ ~ ~ 1 1
    execute if entity @s[tag=Believe.Wi-ki] as @e[limit=2] run playsound block.amethyst_block.fall player @p ~ ~ ~ 1 0.8
    execute if entity @s[tag=Believe.Rumor] run playsound block.glass.break player @s ~ ~ ~ 1 0.7

# 信仰を変更
    execute if entity @s[tag=Believe.None] run return run function debug:change_believe/flora
    execute if entity @s[tag=Believe.Flora] run return run function debug:change_believe/urban
    execute if entity @s[tag=Believe.Urban] run return run function debug:change_believe/nyaptov
    execute if entity @s[tag=Believe.Nyaptov] run return run function debug:change_believe/wi-ki
    execute if entity @s[tag=Believe.Wi-ki] run return run function debug:change_believe/rumor
    execute if entity @s[tag=Believe.Rumor] run return run function debug:change_believe/none
