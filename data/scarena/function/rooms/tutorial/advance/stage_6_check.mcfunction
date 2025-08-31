#> as marker, at @s

tag @s add scarena.tutorial.ignore

scoreboard players set $spell.0 scarena.tmp 0
scoreboard players set $spell.1 scarena.tmp 0
scoreboard players set $spell.2 scarena.tmp 0

execute store result score $spell.0 scarena.tmp run data get entity @s data.spellcrafter.spells[0]
execute store result score $spell.1 scarena.tmp run data get entity @s data.spellcrafter.spells[1]
execute store result score $spell.2 scarena.tmp run data get entity @s data.spellcrafter.spells[2]

execute if score $spell.0 scarena.tmp matches 20 run return run scoreboard players set $success scarena.tmp 1
execute if score $spell.1 scarena.tmp matches 20 run return run scoreboard players set $success scarena.tmp 1
execute if score $spell.2 scarena.tmp matches 20 run return run scoreboard players set $success scarena.tmp 1
