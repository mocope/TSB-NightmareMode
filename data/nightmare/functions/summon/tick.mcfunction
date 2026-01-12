#> nightmare:summon/tick
#
# 
#
# @within function nightmare:tick

# (600 / (攻略率(e2) / 10 + 10 - 16m以内の敵数))秒毎に召喚
    # MaxEnemies
        function api:global_vars/game_progress
        execute store result score $MaxEnemies Temporary run data get storage api: Return.Progress 10
        scoreboard players add $MaxEnemies Temporary 10
    # EnemyCount
        execute store result score $EnemyCount Temporary if entity @e[type=#lib:living_without_player,tag=Enemy,distance=..16]
        scoreboard players operation $MaxEnemies Temporary -= $EnemyCount Temporary
    # 周囲に敵が全くいない場合カウントが加速(x2)
        execute if entity @e[type=#lib:living_without_player,tag=Enemy,distance=..32] unless entity @e[type=#lib:living_without_player,tag=Enemy.Boss,distance=..64,limit=1] run scoreboard players operation $MaxEnemies Temporary *= $2 Temporary
    # NightmareCount
        execute if score $MaxEnemies Temporary matches 1.. run scoreboard players operation @s NightmareCount += $MaxEnemies Temporary

# reset
    scoreboard players reset $MaxEnemies Temporary
    scoreboard players reset $EnemyCount Temporary

# 30秒分以上で召喚
execute if score @s NightmareCount matches 12000.. align xyz positioned ~0.5 ~ ~0.5 run function nightmare:summon/try_summon
