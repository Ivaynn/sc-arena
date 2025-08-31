#> as marker, at @s

tag @s add scarena.tutorial.ignore

scoreboard players set $spell.0 scarena.tmp 0
scoreboard players set $spell.1 scarena.tmp 0

execute store result score $spell.0 scarena.tmp run data get entity @s data.spellcrafter.spells[0]
execute store result score $spell.1 scarena.tmp run data get entity @s data.spellcrafter.spells[1]

execute as @s[tag=spellcrafter.spell.magic_missile] if score $spell.0 scarena.tmp matches 2 run return run scoreboard players set $success scarena.tmp 1
execute as @s[tag=spellcrafter.spell.magic_missile] if score $spell.1 scarena.tmp matches 2 run return run scoreboard players set $success scarena.tmp 1

execute as @s[tag=spellcrafter.spell.fireball] if score $spell.0 scarena.tmp matches 1 run return run scoreboard players set $success scarena.tmp 1
execute as @s[tag=spellcrafter.spell.fireball] if score $spell.1 scarena.tmp matches 1 run return run scoreboard players set $success scarena.tmp 1
