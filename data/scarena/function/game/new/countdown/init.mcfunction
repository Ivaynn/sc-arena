#> any


# Count players
execute unless score queue.players scarena.main >= queue.min_players scarena.main run return 0
execute unless score queue.players scarena.main <= queue.max_players scarena.main run return run tellraw @a ["",{text:"> ",color:"red",bold:true},{text:"Error: there are too many players!",color:"gray"}]


# Start timer
execute if score queue.timer scarena.main matches 1.. run return 0
scoreboard players set queue.timer scarena.main 1
