scoreboard players set $count scarena.tmp 0
execute store result score $count scarena.tmp run data get storage scarena:suggestions all

tellraw @s ""
execute if score $count scarena.tmp matches 0 run return run tellraw @s [{text:"There are no suggestions to display.",color:"gray"}]


# Header
tellraw @s [{text:"                                        ",color:"dark_gray",strikethrough:true}]
tellraw @s ["  ",{storage:"scarena:suggestions",nbt:"all[0].title.raw",color:"white"},{text:"  •  ",color:"dark_gray"},{storage:"scarena:suggestions",nbt:"all[0].author",color:"gray"}]
tellraw @s [{text:"                                        ",color:"dark_gray",strikethrough:true}]


# Content
tellraw @s ""
data modify storage scarena:tmp pages set from storage scarena:suggestions all[0].pages
scoreboard players set $iter scarena.tmp 3
function scarena:lobby/suggestions/for_page
execute if data storage scarena:tmp pages[0] run tellraw @s ["",{text:" ... cropped (too many pages)",color:"dark_gray"}]


# Footer
tellraw @s [{text:"                                        ",color:"dark_gray",strikethrough:true}]
tellraw @s ["  ",{text:"Total: ",color:"gray"},{score:{name:"$count",objective:"scarena.tmp"}},{text:"  •  ",color:dark_gray},{text:"Delete",color:"red",click_event:{action:"suggest_command",command:"/data remove storage scarena:suggestions all[0]"}}]
tellraw @s [{text:"                                        ",color:"dark_gray",strikethrough:true}]
