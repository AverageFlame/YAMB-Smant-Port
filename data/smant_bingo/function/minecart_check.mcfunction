execute if items entity @e[type=item,distance=..3,nbt={Age:0s}] contents tnt_minecart run scoreboard players set @s temp 1
execute unless score @s temp matches 1 run function smant_bingo:minecart_reward

kill @s