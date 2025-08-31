#> any
# recursive function

tellraw @s ["",{storage:"scarena:tmp",nbt:"pages[0].raw",color:"white"}]
tellraw @s ""

data remove storage scarena:tmp pages[0]
scoreboard players remove $iter scarena.tmp 1
execute if score $iter scarena.tmp matches 1.. if data storage scarena:tmp pages[0] run function scarena:lobby/suggestions/for_page
