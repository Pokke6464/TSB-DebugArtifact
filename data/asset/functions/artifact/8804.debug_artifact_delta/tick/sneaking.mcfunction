#> asset:artifact/8804.debug_artifact_delta/tick/sneaking
#
#
#
# @within function asset:artifact/8804.debug_artifact_delta/tick/3.main

# パーティクルを表示
# 1行なら3.main内にこのコマンドをそのまま書いて、return runで分岐させればいいと思ったらその場合複数のエンティティを対象にできなかった
    execute positioned as @e[type=!player,tag=!8800.TagDisplay,distance=..100,sort=nearest,limit=100] if predicate lib:random_pass_per/50 run particle flash ~ ~ ~ 0 0 0 0 1 force @s
