#> [tick] as player, at @s

execute unless predicate spellcrafter:holding_wand run return 0

scoreboard players set $success scarena.tmp 0
execute as @n[distance=..5,type=minecraft:marker,tag=spellcrafter.projectile,tag=!scarena.tutorial.ignore] run function scarena:rooms/tutorial/advance/stage_6_check
execute unless score $success scarena.tmp matches 1 run return 0


# Advance
scoreboard players set @s scarena.player.tutorial -1
playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2

data modify entity @n[distance=..50,type=minecraft:text_display,tag=scarena.tutorial.title] text set value [{text:"Tutorial complete",color:"#774bc9"}]
data modify entity @n[distance=..50,type=minecraft:text_display,tag=scarena.tutorial.text] text set value [{text:"All spells unlocked!",color:"#ebebeb"}]

scoreboard players set @s spellcrafter.inf_page 102
function scarena:rooms/tutorial/exit
