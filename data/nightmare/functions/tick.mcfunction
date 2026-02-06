#> nightmare:tick
#
# 
#
# @within tag/function minecraft:tick

# 初回ログイン時メッセージ
    execute as @a[tag=!NightmareLogin0.1.6] run function nightmare:message

# 常時夜
    time set midnight

# 暗視
    effect give @a[tag=!DarkNightmare] night_vision 11 0 true

# 召喚カウント
    execute as @r[gamemode=!spectator,tag=!Death,limit=3] at @s run function nightmare:summon/tick
