#> asset:artifact/8801.debug_artifact_beta/melee/remove_mob
#
# 神器のメイン処理部
#
# @within function asset:artifact/8801.debug_artifact_beta/melee/3.main

# 演出
    playsound block.respawn_anchor.set_spawn player @a ~ ~ ~ 1 1.5
    particle flash ~ ~0.25 ~ 0.1 0.1 0.1 0 10

# 消滅させる
    function api:mob/remove
