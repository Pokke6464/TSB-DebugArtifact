#> asset:artifact/8804.debug_artifact_delta/tick/data_display
#
#
#
# @within function asset:artifact/8804.debug_artifact_delta/tick/3.main

# ObjectIDの設定
    execute store result storage api: Argument.FieldOverride.ObjectID int 1 run scoreboard players get @s ObjectID
    execute if entity @s[tag=!AssetObject] run data modify storage api: Argument.FieldOverride.ObjectID set value "無し"

# タグの設定
    function api:data_get/tags
    data modify storage api: Argument.FieldOverride.Tags set from storage api: Tags
    execute unless data storage api: Tags run data modify storage api: Argument.FieldOverride.Tags set value "無し"

# 召喚
    data modify storage api: Argument.ID set value 8800
    execute positioned ~ ~1 ~ run function api:object/summon
