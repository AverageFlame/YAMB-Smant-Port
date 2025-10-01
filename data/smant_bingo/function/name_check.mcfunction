loot spawn ~ ~ ~ loot smant_bingo:head
data modify storage smant_bingo:bn name set from entity @n[nbt={Item:{id:"minecraft:player_head"}}] Item.components."minecraft:profile".name
function smant_bingo:book_check with storage smant_bingo:bn
kill @n[nbt={Item:{id:"minecraft:player_head"}}]