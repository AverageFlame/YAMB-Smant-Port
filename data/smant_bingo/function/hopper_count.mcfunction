advancement revoke @s only smant_bingo:trigger_hopper
execute store result score @s countHoppers run clear @s hopper 0
scoreboard players set .highest countHoppers 0
scoreboard players operation .highest countHoppers > @a countHoppers
execute if score .highest countHoppers matches 0 run scoreboard players set @a mostHoppers 0

execute as @a if score @s countHoppers < .highest countHoppers run scoreboard players set @s mostHoppers 0
execute as @a[scores={countHoppers=1..}] if score @s countHoppers = .highest countHoppers run scoreboard players set @s mostHoppers 1
