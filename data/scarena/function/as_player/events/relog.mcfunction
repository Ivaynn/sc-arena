#> as player, at @s

execute if score @s scarena.player.tutorial matches 1.. run function scarena:rooms/tutorial/exit
execute unless score @s scarena.player.tutorial matches -1 run tellraw @s ["",{text:"> ",color:"red",bold:true},{text:"You haven't finished the tutorial yet! ",color:"gray"},{text:"Click here",underlined:true,color:"dark_green",click_event:{action:"run_command",command:"/trigger tutorial set 1"},hover_event:{action:"show_text",value:{text:"Click to play the tutorial",color:"gray"}}},{text:" • ",color:dark_gray},{text:"dismiss",underlined:true,color:"gray",click_event:{action:"run_command",command:"/trigger tutorial set 2"},hover_event:{action:"show_text",value:{text:"Click to dismiss this message",color:"gray"}}}]

execute if score @s scarena.player.state matches 1..3 run function scarena:as_player/state/join/lobby
execute if score @s scarena.player.state matches 4 run function scarena:game/as_player/relog
