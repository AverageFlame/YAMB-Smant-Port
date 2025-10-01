$execute store success score @s success run data get storage smant_bingo:inv {list:["$(id)"]}
$execute if score @s success matches 0 run data modify storage smant_bingo:inv list append value "$(id)"
execute if score @s success matches 0 run scoreboard players add @s unique_items 1