advancement revoke @s only smant_bingo:trigger_level
scoreboard players set .highest countLevels 0
scoreboard players operation .highest countLevels > @a currentxp
execute if score .highest countLevels matches 0 run scoreboard players set @a mostLevels 0

execute if score @s currentxp < .highest countLevels run scoreboard players set @s mostLevels 0
execute if score @s[scores={currentxp=1..}] currentxp = .highest countLevels run scoreboard players set @s mostLevels 1
