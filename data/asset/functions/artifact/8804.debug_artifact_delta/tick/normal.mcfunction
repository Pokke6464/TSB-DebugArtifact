#> asset:artifact/8804.debug_artifact_delta/tick/normal
#
#
#
# @within function asset:artifact/8804.debug_artifact_delta/tick/3.main

# 上に飛ぶflameを低確率で表示
    execute if predicate lib:random_pass_per/5 run particle flame ~ ~ ~ 0 0.5 0 1 0 force @p[tag=6SK.ArtifactUser]

# dustを表示。種類によって色を変える
    # マーカー：赤
        execute if entity @s[type=marker] run return run execute if predicate lib:random_pass_per/33 run particle dust 1 0 0 1.5 ~ ~ ~ 0 0 0 0 1 force @p[tag=6SK.ArtifactUser]
    # 防具立て/AEC/display系：黄
        execute unless entity @s[type=!armor_stand,type=!area_effect_cloud,type=!item_display,type=!block_display,type=!text_display] run return run execute if predicate lib:random_pass_per/33 run particle dust 1 1 0 1.5 ~ ~ ~ 0 0 0 0 1 force @p[tag=6SK.ArtifactUser]
    # その他：緑
        execute if predicate lib:random_pass_per/33 run particle dust 0 1 0 1.5 ~ ~ ~ 0 0 0 0 1 force @p[tag=6SK.ArtifactUser]
