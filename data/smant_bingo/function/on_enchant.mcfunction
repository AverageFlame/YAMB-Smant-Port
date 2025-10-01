execute unless entity @s[advancements={smant_bingo:do_use_anvil=true}] run tag @s add enchant
execute unless entity @s[advancements={smant_bingo:do_use_anvil=true}] run schedule function smant_bingo:reset_xp 2t
execute unless entity @s[advancements={smant_bingo:do_use_anvil=true}] run advancement revoke @s only smant_bingo:trigger_enchant