#> [tick] as player, at @s

execute unless predicate spellcrafter:holding_wand run return 0

execute unless entity @n[distance=..5,type=minecraft:marker,tag=spellcrafter.projectile,tag=spellcrafter.spell.magic_missile,tag=spellcrafter.spell.rainbow] run return 0


# Advance
scoreboard players set @s scarena.player.tutorial 5
playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2

data modify entity @n[distance=..50,type=minecraft:text_display,tag=scarena.tutorial.title] text set value [{text:"Chain two projectiles",color:"#ebebeb"}]
data modify entity @n[distance=..50,type=minecraft:text_display,tag=scarena.tutorial.text] text set value [{text:"Combine Firebolt and Magic Missile",color:"#d4d4d4"}]

loot give @s loot spellcrafter:spells/fireball
