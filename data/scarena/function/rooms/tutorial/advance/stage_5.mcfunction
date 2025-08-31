#> [tick] as player, at @s

execute unless predicate spellcrafter:holding_wand run return 0

scoreboard players set $success scarena.tmp 0
execute as @n[distance=..5,type=minecraft:marker,tag=spellcrafter.projectile,tag=!scarena.tutorial.ignore] run function scarena:rooms/tutorial/advance/stage_5_check
execute unless score $success scarena.tmp matches 1 run return 0


# Advance
scoreboard players set @s scarena.player.tutorial 6
playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2

data modify entity @n[distance=..50,type=minecraft:text_display,tag=scarena.tutorial.title] text set value [{text:"Add an explosion!",color:"#ebebeb"}]
data modify entity @n[distance=..50,type=minecraft:text_display,tag=scarena.tutorial.text] text set value [{text:"Instant spells are used immediately",color:"#d4d4d4"}]

loot give @s loot spellcrafter:spells/small_explosion
