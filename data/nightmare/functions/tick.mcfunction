#> nightmare:tick
#
# 
#
# @within tag/function minecraft:tick

# 初回ログイン時メッセージ
    execute as @a[tag=!NightmareLogin] run function nightmare:message

# 常時夜
    time set midnight
