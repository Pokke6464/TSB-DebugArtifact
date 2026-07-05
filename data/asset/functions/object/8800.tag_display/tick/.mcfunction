#> asset:object/8800.tag_display/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/8800/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 消滅
    kill @s[scores={General.Object.Tick=7..}]
