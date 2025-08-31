#> [tick] as player, at @s

execute unless predicate spellcrafter:holding_wand run return 0

execute unless entity @n[distance=..10,type=minecraft:item_display,tag=spellcrafter.table,scores={spellcrafter.id=1..}] run return 0


# Advance
scoreboard players set @s scarena.player.tutorial 2
playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2

data modify entity @n[distance=..50,type=minecraft:text_display,tag=scarena.tutorial.title] text set value [{text:"Add spells to your wand",color:"#ebebeb"}]
data modify entity @n[distance=..50,type=minecraft:text_display,tag=scarena.tutorial.text] text set value [{text:"Put Magic Missile in the table interface",color:"#d4d4d4"}]
