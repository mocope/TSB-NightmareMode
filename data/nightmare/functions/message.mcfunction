#> nightmare:message
#
# 
#
# @within function nightmare:tick

tag @s remove NightmareLogin
tag @s remove NightmareLogin0.1.1
tag @s remove NightmareLogin0.1.2
tag @s remove NightmareLogin0.1.3
tag @s add NightmareLogin0.1.4

# 導入メッセージ
    tellraw @s [{"text": "----------", "color": "white"},{"text":"TSB Nightmare v0.1.4", "color": "blue"},{"text":"----------", "color": "white"}]
    tellraw @s {"text": ""}
    tellraw @s {"text": "このパッチでは5つの機能が追加されています"}
    tellraw @s {"text": "・世界が常に夜になる"}
    tellraw @s {"text": "・本来暗所でスポーンするモブが明るさに関係なくスポーンする"}
    tellraw @s {"text": "・暗所でスポーンするモブの種類が増える"}
    tellraw @s {"text": "・とあるモブの能力が暗所でなくても発動する"}
    tellraw @s {"text": "・常に暗視が付く"}
    tellraw @s {"text": "　コマンドを有効化して「/tag @s add DarkNightmare」を実行することで削除できます"}
    tellraw @s {"text": ""}
    tellraw @s {"text": "------------------------------------"}
