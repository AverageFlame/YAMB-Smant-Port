# Set Scores to 0
scoreboard players set @s banner 0
scoreboard players set @s bannerP 0

# Count total banners, and count non-patterned banners
execute store result score @s banner run clear @s #minecraft:banners 0
execute store result score @s bannerP run clear @s #minecraft:banners[minecraft:banner_patterns=[]] 0

# Account for naturally generating patterned banners
execute store result score #banner temp run clear @s minecraft:white_banner[banner_patterns=[{color:"cyan",pattern:"minecraft:rhombus"},{color:"light_gray",pattern:"minecraft:stripe_bottom"},{color:"gray",pattern:"minecraft:stripe_center"},{color:"light_gray",pattern:"minecraft:border"},{color:"black",pattern:"minecraft:stripe_middle"},{color:"light_gray",pattern:"minecraft:half_horizontal"},{color:"light_gray",pattern:"minecraft:circle"},{color:"black",pattern:"minecraft:border"}]] 0
scoreboard players operation @s bannerP += #banner temp
execute store result score #banner temp run clear @s minecraft:light_gray_banner[minecraft:banner_patterns=[{color:"white",pattern:"minecraft:flower"}]] 0
scoreboard players operation @s bannerP += #banner temp
execute store result score #banner temp run clear @s minecraft:magenta_banner[minecraft:banner_patterns=[{color:"black",pattern:"minecraft:triangle_top"},{color:"black",pattern:"minecraft:triangle_bottom"}]] 0
scoreboard players operation @s bannerP += #banner temp

# If more total banners than non-patterned, then there must be patterned banner, therefore loom has been used
execute if score @s banner > @s bannerP run advancement grant @s only smant_bingo:do_use_loom

# Otherwise, revoke trigger advancement
execute unless score @s banner > @s bannerP run advancement revoke @s only smant_bingo:trigger_banner