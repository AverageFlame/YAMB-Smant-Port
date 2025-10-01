execute store result score @s current_lingering run clear @s minecraft:lingering_potion 0
execute if score @s current_lingering matches 1.. run advancement grant @s only smant_bingo:do_brew_lingering
execute unless score @s current_lingering matches 1.. run advancement revoke @s only smant_bingo:trigger_brew