#> asset:mob/0259.shadow_stalker/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/259/tick
# @patch

# 明るくても透明化
    execute unless entity @s[tag=77.Dark] run function asset:mob/0259.shadow_stalker/tick/armor_dis_equip
