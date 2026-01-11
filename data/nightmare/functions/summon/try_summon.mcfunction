#> nightmare:summon/try_summon
#
# 
#
# @within function nightmare:tick

# 適当な座標を指定する
    execute store result score $X Temporary run random value -48..48
    execute store result score $Y Temporary run random value -8..24
    execute store result score $Z Temporary run random value -48..48
# 座標をストレージに代入
    execute store result storage nightmare: Darkness.Check.X int 1 run scoreboard players get $X Temporary
    execute store result storage nightmare: Darkness.Check.Y int 1 run scoreboard players get $Y Temporary
    execute store result storage nightmare: Darkness.Check.Z int 1 run scoreboard players get $Z Temporary
# プレイヤーの近くは選定しないように
    execute if function nightmare:summon/is_player_nearby/ run return run function nightmare:summon/break

# 一時スコアのリセット
    scoreboard players reset $X Temporary
    scoreboard players reset $Y Temporary
    scoreboard players reset $Z Temporary

# 指定した座標に足場があるかどうか判定する
    execute store success storage nightmare: CanSummon byte 1 run function nightmare:summon/check/.m with storage nightmare: Darkness.Check

# 召喚可能であれば召喚
    execute if data storage nightmare: {CanSummon: 1b} run function nightmare:summon/summon.m with storage nightmare: Darkness.Check

# リセット
    data remove storage nightmare: Darkness.Check
    data remove storage nightmare: CanSummon
