#> asset:artifact/8803.debugging_command_manual/give/2.give
#
# 神器の作成部 ここでID等を定義する
#
# @user
# @within function asset:artifact/8803.debugging_command_manual/give/1.trigger

# 神器の説明や消費MPなどをここで設定する。
# 最後にasset:artifact/common/giveを実行することで入手可能。

# 神器のID (int) スプレッドシートの値を入れる
    data modify storage asset:artifact ID set value 8803
# 神器のベースアイテム
    data modify storage asset:artifact Item set value "minecraft:written_book"
# 神器の名前 (TextComponentString)
    data modify storage asset:artifact Name set value '{"text":"デバッグ用コマンド説明書","color":"white"}'
# 神器の説明文 (TextComponentString[])
    data modify storage asset:artifact Lore set value ['{"text":"様々なデバッグ用のコマンドについて書かれた本。"}','{"text":"コマンドを実行できる権限が無いと使うことができない。"}','{"text":"取り扱いには§c注意が必要§fだ。"}']
# 消費アイテム ({Item: TextComponent, Count: int, Extra?: TextComponent}) (オプション)
    # data modify storage asset:artifact ConsumeItem.Item set value
    # data modify storage asset:artifact ConsumeItem.Count set value
    # data modify storage asset:artifact ConsumeItem.Extra set value
# 使用回数 (int) (オプション)
    # data modify storage asset:artifact RemainingCount set value
# 神器を発動できるスロット (string) Wikiを参照
    data modify storage asset:artifact Slot set value "auto"
# 神器のトリガー (string) Wikiを参照
    data modify storage asset:artifact Trigger set value "onClick"
# 神器の発動条件 (TextComponentString) (オプション)
    # data modify storage asset:artifact Condition set value
# 攻撃に関する情報 -Damage量 (literal[]/literal) Wikiを参照 (オプション)
    # data modify storage asset:artifact AttackInfo.Damage set value [0,0]
# 攻撃に関する情報 -攻撃タイプ (string[]) Wikiを参照 (オプション)
    # data modify storage asset:artifact AttackInfo.AttackType set value [Physical,Magic]
# 攻撃に関する情報 -攻撃属性 (string[]) Wikiを参照 (オプション)
    # data modify storage asset:artifact AttackInfo.ElementType set value [Fire,Water,Thunder,None]
# 攻撃に関する情報 -防御無視 (boolean) Wikiを参照 (オプション)
    # data modify storage asset:artifact AttackInfo.BypassResist set value
# 攻撃に関する情報 -範囲攻撃 (string) Wikiを参照 (オプション)
    # data modify storage asset:artifact AttackInfo.IsRangeAttack set value
# 攻撃に関する情報 -攻撃範囲 (literal) Wikiを参照 (オプション)
    # data modify storage asset:artifact AttackInfo.AttackRange set value
# MP消費量 (int)
    data modify storage asset:artifact MPCost set value 0
# MP必要量 (int) (オプション)
    # data modify storage asset:artifact MPRequire set value
# 神器のクールダウン (int) (オプション)
    # data modify storage asset:artifact LocalCooldown set value
# 種別クールダウン ({Type: string, Duration: int}) (オプション)
    # data modify storage asset:artifact TypeCooldown.Type set value
    # data modify storage asset:artifact TypeCooldown.Duration set value
# グローバルクールダウン (int) (オプション)
    # data modify storage asset:artifact SpecialCooldown set value
# クールダウンによる使用不可のメッセージを非表示にするか否か (boolean) (オプション)
    # data modify storage asset:artifact DisableCooldownMessage set value
# MP不足による使用不可のメッセージを非表示にするか否か (boolean) (オプション)
    # data modify storage asset:artifact DisableMPMessage set value
# 扱える神 (string[]) Wikiを参照
    data modify storage asset:artifact CanUsedGod set value "ALL"
# カスタムNBT (NBTCompound) 追加で指定したいNBT (オプション)
    data modify storage asset:artifact CustomNBT set value {title:"デバッグ用コマンド説明書", author:"", HideFlags:-1, pages:['[{"text":""},\
    {"text":"[神器の取得]", "color":"dark_purple", "hoverEvent": {"action": "show_text", "value": "debug:artifact/give.m"}, "clickEvent":{"action":"run_command", "value":"/tellraw @s [{\\"color\\":\\"white\\", \\"text\\":\\"\\\\nIDを入力することでそのIDの神器を取得できる。\\\\n「0001」のようにIDの先頭に0を付けたり、\\\\n存在しないIDを入力すると何も起こらないため注意。\\"}, {\\"color\\":\\"gold\\", \\"text\\":\\"\\\\n[例文をチャット欄に入力]\\", \\"clickEvent\\":{\\"action\\":\\"suggest_command\\", \\"value\\":\\"/function debug:artifact/give.m {ID:1}\\"}}]"}},\
    {"text":"\\n\\n[モブの召喚]", "color":"dark_purple", "hoverEvent": {"action": "show_text", "value": "debug:mob/summon.m"}, "clickEvent":{"action":"run_command", "value":"/tellraw @s [{\\"color\\":\\"white\\", \\"text\\":\\"\\\\nIDを入力することでそのIDのモブを召喚できる。\\\\n「0005」のようにIDの先頭に0を付けたり、\\\\n存在しないIDを入力するとエラーになる。\\\\n天使(ボス)や地形を破壊するモブもいるため注意。\\"}, {\\"color\\":\\"gold\\", \\"text\\":\\"\\\\n[例文をチャット欄に入力]\\", \\"clickEvent\\":{\\"action\\":\\"suggest_command\\", \\"value\\":\\"/function debug:mob/summon.m {ID:5}\\"}}]"}},\
    {"text":"\\n\\n[オブジェクトの召喚]", "color":"dark_purple", "hoverEvent": {"action": "show_text", "value": "debug:object/summon.m"}, "clickEvent":{"action":"run_command", "value":"/tellraw @s [{\\"color\\":\\"white\\", \\"text\\":\\"\\\\nIDを入力することでそのIDのオブジェクトを召喚できる。\\\\n「0001」のようにIDの先頭に0を付けたり、\\\\n存在しないIDを入力するとエラーになる。\\\\n召喚しても必要なデータが足りず召喚できない場合や、\\\\n召喚できても正常な挙動をしない場合がある。\\\\nまた、オブジェクトが消滅せずに残る可能性もあるため、注意すること。\\"}, {\\"color\\":\\"gold\\", \\"text\\":\\"\\\\n[例文をチャット欄に入力]\\", \\"clickEvent\\":{\\"action\\":\\"suggest_command\\", \\"value\\":\\"/function debug:object/summon.m {ID:1012}\\"}}]"}},\
    {"text":"\\n\\n[エフェクトの付与]", "color":"dark_purple", "hoverEvent": {"action": "show_text", "value": "debug:effect/give.m"}, "clickEvent":{"action":"run_command", "value":"/tellraw @s [{\\"color\\":\\"white\\", \\"text\\":\\"\\\\n神器などとは書き方が違い、ID以外のデータも設定可能。\\\\n付与中のエフェクトは下を向きながら見通しの書を使うことで確認できる。\\\\n「0001」のようにIDの先頭に0を付けたり、\\\\n存在しないIDを入力するとエラーになる。\\\\nDurationで効果時間を、Stackでスタック数を指定できる。\\\\nただしDurationはtick単位(1tick=0.05秒)で指定するため注意。\\\\n最初から効果時間やスタック数が設定されている場合や、\\\\n付与されても表示されないエフェクトも存在する。\\"}, {\\"color\\":\\"gold\\", \\"text\\":\\"\\\\n[例文をチャット欄に入力]\\", \\"clickEvent\\":{\\"action\\":\\"suggest_command\\", \\"value\\":\\"/function debug:effect/give.m {Argument:{ID:1,Duration:100,Stack:5}}\\"}}]"}},\
    {"text":"\\n\\n[データの表示]", "color":"dark_purple", "hoverEvent": {"action": "show_text", "value": "debug:entity_storage/show.m"}, "clickEvent":{"action":"run_command", "value":"/tellraw @s [{\\"color\\":\\"yellow\\", \\"text\\":\\"\\\\n[注意]このコマンドは知識が無いと分かりづらい上に、使用頻度も低いです。\\"},{\\"color\\":\\"white\\", \\"text\\":\\"\\\\nこのfunctionの実行者のデータを表示する。\\\\nexecuteコマンドで実行者を変えることで、\\\\nスポナーや呪われた神器などのデータを見ることができる。\\\\n表示する物はStorageなため、Pathに「aaa.bbb」のような\\\\n記述をすることで表示を絞ることも可能。\\\\n例文ではプレイヤー以外の最寄りのエンティティのデータを全て表示する。\\"}, {\\"color\\":\\"gold\\", \\"text\\":\\"\\\\n[例文をチャット欄に入力]\\", \\"clickEvent\\":{\\"action\\":\\"suggest_command\\", \\"value\\":\\"/execute as @e[type=!player,sort=nearest,limit=1] run function debug:entity_storage/show.m {Path:\\\\\\"\\\\\\"}\\"}}]"}},\
    {"text":"\\n\\n[IDはどこにある？]", "color":"dark_green", "clickEvent":{"action":"run_command", "value":"/tellraw @s [{\\"color\\":\\"white\\", \\"text\\":\\"\\\\nデフォルトの状態であれば、\\\\n.minecraft/saves/TheSkyBlessing/datapacks/\\\\nAsset.zip/data/asset/functions内に、\\\\nartifact(神器)やobjectなどのフォルダーがあり、\\\\nその中にIDが書かれたフォルダーがあります。\\"}]"}}]']}

# 神器の入手用function
    function asset:artifact/common/give
