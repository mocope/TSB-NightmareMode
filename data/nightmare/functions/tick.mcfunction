#> nightmare:tick
#
# 
#
# @within tag/function minecraft:tick

# 初回ログイン時メッセージ
    execute as @a[tag=!NightmareLogin] run function nightmare:message

# 常時夜
    time set midnight

# 30秒に一回召喚
    scoreboard players add $NightmareSummonCount Global 1
# 召喚
    execute if score $NightmareSummonCount Global matches 600.. as @r[gamemode=!spectator,tag=!Death] at @s align xyz positioned ~0.5 ~ ~0.5 run function nightmare:summon/try_summon
