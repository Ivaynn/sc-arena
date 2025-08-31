#> advancement reward
advancement revoke @s only scarena:left_click

tag @s add scarena.tmp
execute as @e[distance=..5,type=minecraft:interaction] run function scarena:as_player/events/left_click/as_interaction
tag @s remove scarena.tmp
