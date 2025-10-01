# Summon Marker to any snowball, have it ride the snowball, and tag snowball to trigger summon only once
execute at @e[type=snowball,tag=!processed] run summon marker ~ ~ ~ {Tags:["snowball"]}
execute as @e[type=snowball,tag=!processed] at @s run ride @n[type=marker,tag=snowball,distance=..0.1] mount @s
tag @e[type=snowball,tag=!processed] add processed

# Summon Marker for getting Motion

execute as @e[type=snowball,tag=processed] at @s run summon marker ~ ~ ~ {Tags:["sb","snowball"]}
execute as @e[type=snowball,tag=processed] at @s run data modify entity @n[type=marker,tag=sb] Motion set from entity @s Motion

# Any Marker not riding a snowball will run landed function
execute as @e[type=marker,tag=snowball,tag=!sb,predicate=!smant_bingo:riding] at @s if entity @p[distance=..5] run function smant_bingo:snowball_landed

scoreboard players add @e[type=marker,tag=snowball,tag=!sb,predicate=!smant_bingo:riding] temp 1
scoreboard players add @e[type=marker,tag=sb] temp 1

kill @e[type=marker,tag=sb,scores={temp=2..}]
kill @e[type=marker,tag=snowball,scores={temp=2..}]