#> nightmare:summon/is_player_nearby/
#
#
#
# @input storage nightmare: Darkness.Check: {X: int, Y: int, Z: int}
# @output args IsPlayerNearby: boolean
# @within function nightmare:summon/try_summon

return run function nightmare:summon/is_player_nearby/check.m with storage nightmare: Darkness.Check
