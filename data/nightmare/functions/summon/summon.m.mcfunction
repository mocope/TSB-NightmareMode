#> nightmare:summon/spawn.m
#
#
#
# @input args
#   X : int
#   Y : int
#   Z : int
# @within function nightmare:summon/try_summon

$execute align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~$(X) ~$(Y) ~$(Z) positioned ~ ~-0.5 ~ run function nightmare:summon/spawn/
scoreboard players set $NightmareSummonCount Global 0
