#> asset:object/8800.tag_display/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/8800/summon

# 元となるEntityを召喚する
    summon text_display ~ ~ ~ {Tags:["ObjectInit","8800.TagDisplay"],text:'["",{"text":"ObjectID\\n","color":"gold"},{"storage":"asset:context","nbt":"this.ObjectID"},{"text":"\\nTags\\n","color":"gold"},{"storage":"asset:context","nbt":"this.Tags"}]',background:-16777216,billboard:"center",brightness:{sky:15,block:15},see_through:true,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,0f]}}
