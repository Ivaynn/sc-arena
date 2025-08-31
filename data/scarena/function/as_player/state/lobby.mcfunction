#> [tick] as player, at @s
# Executed if player is at spawn (state 1)


# Manage player
scoreboard players set @s spellcrafter.cooldown 21


# Triggers
scoreboard players enable @s arena
scoreboard players enable @s room
scoreboard players enable @s queue
scoreboard players enable @s spectator
scoreboard players enable @s spawn
scoreboard players enable @s tutorial

execute if score @s arena matches 1.. run function scarena:as_player/state/join/arena
scoreboard players set @s arena 0

execute if score @s spectator matches 1.. run function scarena:as_player/state/join/spectator
scoreboard players set @s spectator 0

execute if score @s spawn matches 1.. run function scarena:as_player/state/join/lobby
scoreboard players set @s spawn 0

execute if score @s room matches 1.. run function scarena:as_player/state/join/room
scoreboard players set @s room 0

execute if score @s queue matches 1.. run function scarena:as_player/queue/trigger
scoreboard players set @s queue 0

execute if score @s tutorial matches 2 run scoreboard players set @s scarena.player.tutorial -1
execute if score @s tutorial matches 1 run function scarena:as_player/state/join/tutorial
scoreboard players set @s tutorial 0
