advancement revoke @s only smant_bingo:trigger_kelp
scoreboard players reset @s dropKelp
execute store result score @s countKelp run clear @s dried_kelp 0
scoreboard players set .highest countKelp 0
scoreboard players operation .highest countKelp > @a countKelp
execute if score .highest countKelp matches 0 run scoreboard players set @a mostKelp 0

execute as @a if score @s countKelp < .highest countKelp run scoreboard players set @s mostKelp 0
execute as @a[scores={countKelp=1..}] if score @s countKelp = .highest countKelp run scoreboard players set @s mostKelp 1
