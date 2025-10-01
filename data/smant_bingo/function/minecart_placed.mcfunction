# Identify marker by player team
execute as @s[team=bingo_aqua] at @e[type=tnt_minecart,tag=!processed] run summon marker ~ ~ ~ {Tags:["minecart","aqua"]}
execute as @s[team=bingo_blue] at @e[type=tnt_minecart,tag=!processed] run summon marker ~ ~ ~ {Tags:["minecart","blue"]}
execute as @s[team=bingo_gray] at @e[type=tnt_minecart,tag=!processed] run summon marker ~ ~ ~ {Tags:["minecart","gray"]}
execute as @s[team=bingo_green] at @e[type=tnt_minecart,tag=!processed] run summon marker ~ ~ ~ {Tags:["minecart","green"]}
execute as @s[team=bingo_orange] at @e[type=tnt_minecart,tag=!processed] run summon marker ~ ~ ~ {Tags:["minecart","orange"]}
execute as @s[team=bingo_pink] at @e[type=tnt_minecart,tag=!processed] run summon marker ~ ~ ~ {Tags:["minecart","pink"]}
execute as @s[team=bingo_red] at @e[type=tnt_minecart,tag=!processed] run summon marker ~ ~ ~ {Tags:["minecart","red"]}
execute as @s[team=bingo_yellow] at @e[type=tnt_minecart,tag=!processed] run summon marker ~ ~ ~ {Tags:["minecart","yellow"]}

# Place Marker on TNT Minecart to tie it to the Team that placed it
execute as @e[type=tnt_minecart,tag=!processed] at @s run ride @n[type=marker,tag=minecart,distance=..0.1] mount @s
tag @e[type=tnt_minecart,tag=!processed] add processed
advancement revoke @s only smant_bingo:trigger_minecart