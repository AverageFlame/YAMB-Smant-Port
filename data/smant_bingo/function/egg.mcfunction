execute at @e[type=egg,tag=!processed] run summon marker ~ ~ ~ {Tags:["egg"]}
execute as @e[type=egg,tag=!processed] at @s run ride @n[type=marker,tag=egg,distance=..0.01] mount @s
execute at @e[type=egg,tag=!processed] run data modify entity @n[type=marker,tag=egg,distance=..0.01] data.owner set from entity @n[type=egg,tag=!processed] Owner
tag @e[type=egg,tag=!processed] add processed

execute at @e[type=marker,tag=egg,predicate=!smant_bingo:riding] if entity @e[type=chicken,nbt={Age:-24000},distance=..3] run function smant_bingo:egg_success

execute as @e[type=marker,tag=egg,predicate=!smant_bingo:riding] run kill @s
