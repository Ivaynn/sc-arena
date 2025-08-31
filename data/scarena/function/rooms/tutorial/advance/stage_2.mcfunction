#> [tick] as player, at @s

execute unless predicate spellcrafter:holding_wand run return 0

scoreboard players set $spell scarena.tmp 0
execute store result score $spell scarena.tmp run data get entity @s SelectedItem.components."minecraft:custom_data".spellcrafter.wand.spells[0]
execute unless score $spell scarena.tmp matches 1.. run return 0


# Advance
scoreboard players set @s scarena.player.tutorial 3
playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2

data modify entity @n[distance=..50,type=minecraft:text_display,tag=scarena.tutorial.title] text set value [{keybind:"key.use",color:"#ebebeb"},{text:" to use the wand",color:"#ebebeb"}]
data modify entity @n[distance=..50,type=minecraft:text_display,tag=scarena.tutorial.text] text set value [{text:"Shoot that Target Dummy!",color:"#d4d4d4"}]
