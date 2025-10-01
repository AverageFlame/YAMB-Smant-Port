advancement revoke @s only smant_bingo:trigger_sleep
tag @s add sleeping
execute unless entity @p[distance=0..,tag=!sleeping] run advancement grant @s only smant_bingo:do_sleep_alone
tag @s remove sleeping