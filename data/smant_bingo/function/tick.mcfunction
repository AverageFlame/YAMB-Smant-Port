execute as @a at @s if items entity @s armor.head carved_pumpkin run scoreboard players add @s pumpkin 1
execute as @a at @s if score @s dropKelp matches 1.. run function smant_bingo:kelp_count
execute as @a at @s if score @s dropHoppers matches 1.. run function smant_bingo:hopper_count
execute as @e[type=marker,tag=minecart,predicate=!smant_bingo:riding] at @s run function smant_bingo:minecart_check