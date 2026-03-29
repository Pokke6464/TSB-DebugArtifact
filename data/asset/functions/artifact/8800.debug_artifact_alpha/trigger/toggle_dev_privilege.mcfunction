#> asset:artifact/8800.debug_artifact_alpha/trigger/toggle_dev_privilege
#
# 神器のメイン処理部
#
# @within function asset:artifact/8800.debug_artifact_alpha/trigger/3.main

# 演出
    playsound ui.button.click player @s ~ ~ ~ 1 1

# 開発特権を持っているなら剝奪
    execute if entity @s[tag=DevPrivilege] run tellraw @s {"text":"開発特権を剝奪しました。","color":"red"}
    execute if entity @s[tag=DevPrivilege] run return run tag @s remove DevPrivilege

# 開発特権を持っていないなら付与
    tellraw @s {"text":"開発特権を取得しました。","color":"gold"}
    tag @s add DevPrivilege