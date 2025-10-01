execute as @s at @s run data modify entity @s Motion set from entity @n[type=marker,tag=sb,scores={temp=1..}] Motion

execute store result score @s px run data get entity @s Pos[0] 10000
execute store result score @s py run data get entity @s Pos[1] 10000
execute store result score @s pz run data get entity @s Pos[2] 10000

execute store result score @s vx run data get entity @s Motion[0] 10000
execute store result score @s vy run data get entity @s Motion[1] 10000
execute store result score @s vz run data get entity @s Motion[2] 10000

scoreboard players operation @s vx *= #sbDrag temp
scoreboard players operation @s vx /= #percent temp

scoreboard players operation @s vy *= #sbDrag temp
scoreboard players operation @s vy /= #percent temp
scoreboard players operation @s vy -= #sbGrav temp

scoreboard players operation @s vz *= #sbDrag temp
scoreboard players operation @s vz /= #percent temp

execute store result entity @s Pos[0] double .0001 run scoreboard players operation @s px += @s vx
execute store result entity @s Pos[1] double .0001 run scoreboard players operation @s py += @s vy
execute store result entity @s Pos[2] double .0001 run scoreboard players operation @s pz += @s vz

# Run Raytrace
execute as @s at @s positioned ~-.6 ~-.6 ~-.6 if entity @p[dx=0.2,dy=0.2,dz=0.2] run advancement grant @p[dx=0.2,dy=0.2,dz=0.2] only smant_bingo:do_snowball

# Kill Marker
kill @s