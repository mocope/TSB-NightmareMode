#> asset:mob/0259.shadow_stalker/hurt/darkness
#
# 
#
# @within function asset:mob/0259.shadow_stalker/hurt/

# 暗闇を付与
    data modify storage api: Argument set value {Duration: 60, ID: 24}
    execute if data storage mou: {firstJoin: 1b} run data modify storage api: Argument.Duration set value 200
    execute as @p[tag=Attacker] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
