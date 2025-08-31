#> as player, at structure origin


# Store hotbar in ender chest
item replace entity @s enderchest.0 from entity @s hotbar.0
item replace entity @s enderchest.1 from entity @s hotbar.1
item replace entity @s enderchest.2 from entity @s hotbar.2
item replace entity @s enderchest.3 from entity @s hotbar.3
item replace entity @s enderchest.4 from entity @s hotbar.4
item replace entity @s enderchest.5 from entity @s hotbar.5
item replace entity @s enderchest.6 from entity @s hotbar.6
item replace entity @s enderchest.7 from entity @s hotbar.7
item replace entity @s enderchest.8 from entity @s hotbar.8
clear @s

loot replace entity @s hotbar.0 loot spellcrafter:wand
loot replace entity @s hotbar.1 loot spellcrafter:spells/magic_missile


execute positioned ~ ~-24.8 ~ run summon minecraft:text_display ~ ~ ~ {text:[{text:"Welcome to SpellCrafter",color:"#774bc9"}],Tags:["scarena.tutorial","scarena.tutorial.title"],view_range:0.35f,billboard:"center",see_through:1b}
execute positioned ~ ~-25.1 ~ run summon minecraft:text_display ~ ~ ~ {text:[{text:"Open this table while holding your wand",color:"#ebebeb"}],Tags:["scarena.tutorial","scarena.tutorial.text"],view_range:0.35f,billboard:"center",see_through:1b}
