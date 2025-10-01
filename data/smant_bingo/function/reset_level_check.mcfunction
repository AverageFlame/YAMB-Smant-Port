advancement revoke @s only smant_bingo:trigger_enchant
advancement revoke @s only smant_bingo:trigger_anvil
scoreboard players operation @s xpcheck = @s currentxp
scoreboard players set @s nearAnvil 0
execute store result score @s nearAnvil run clone ~-6 ~-6 ~-6 ~6 ~6 ~6 ~-6 ~-6 ~-6 filtered #minecraft:anvil force
execute unless score @s nearAnvil matches 1.. run scoreboard players reset @s anvil