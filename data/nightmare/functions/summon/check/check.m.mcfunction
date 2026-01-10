#> nightmare:summon/check/check.m
#
#
#
# @input args Sub : int
# @within function nightmare:summon/check/.m

#> temp
# @private
    #declare score_holder $Y

# 拠点は安全を担保された地点である (ものとする)
    execute if score @s InArea matches 2 if score @s InSubArea matches 1 run return fail

# 現Y相対座標を代入
    execute store result score $Y Temporary run data get storage nightmare: Darkness.Check.Y 1
    $execute store result storage nightmare: Darkness.Check.Y int 1 run scoreboard players remove $Y Temporary $(Sub)
    scoreboard players reset $Y Temporary

# 暗闇かどうかはチェックしない
    # return run execute if predicate nightmare:summon/in_darkness
    return 1
