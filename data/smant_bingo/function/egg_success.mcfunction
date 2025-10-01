execute at @n[type=marker,tag=egg,predicate=!smant_bingo:riding] run summon snowball ~ ~ ~ {Tags:["user"]}

data modify entity @n[type=snowball,tag=user] Owner set from entity @n[type=marker,tag=egg,predicate=!smant_bingo:riding] data.owner

execute as @n[type=snowball,tag=user] run execute on origin run advancement grant @s only smant_bingo:do_spawn_chicken
kill @e[type=snowball,tag=user]