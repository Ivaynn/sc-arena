#> any, at lobby

execute as @e[distance=..20,type=minecraft:item_display,tag=scarena.lobby] at @s run rotate @s ~.5 ~
execute as @a[distance=..20] if items entity @s weapon.mainhand minecraft:written_book run function scarena:lobby/suggestions/submit
