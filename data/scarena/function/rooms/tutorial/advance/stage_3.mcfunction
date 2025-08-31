#> [tick] as player, at @s

execute unless predicate spellcrafter:holding_wand run return 0

execute unless entity @n[distance=..5,type=minecraft:marker,tag=spellcrafter.projectile,tag=spellcrafter.spell.magic_missile] run return 0


# Advance
scoreboard players set @s scarena.player.tutorial 4
playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2

data modify entity @n[distance=..50,type=minecraft:text_display,tag=scarena.tutorial.title] text set value [{text:"Add Rainbow to Magic Missile",color:"#ebebeb"}]
data modify entity @n[distance=..50,type=minecraft:text_display,tag=scarena.tutorial.text] text set value [{text:"Modifiers go BEFORE the projectile",color:"#d4d4d4"}]

loot give @s loot spellcrafter:spells/rainbow
