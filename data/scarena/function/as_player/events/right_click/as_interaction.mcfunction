#> as interaction, at player

scoreboard players set $this_player scarena.tmp 0
execute on target if entity @s[tag=scarena.tmp] run scoreboard players set $this_player scarena.tmp 1
execute if score $this_player scarena.tmp matches 0 run return 0

data remove entity @s interaction


# The player right-clicked this interaction entity


execute as @s[tag=scarena.lobby.queue] as @p[distance=..0.001,tag=scarena.tmp] run trigger queue
execute as @s[tag=scarena.lobby.arena] as @p[distance=..0.001,tag=scarena.tmp] run trigger arena
execute as @s[tag=scarena.lobby.room] as @p[distance=..0.001,tag=scarena.tmp] run trigger room
execute as @s[tag=scarena.lobby.book] as @p[distance=..0.001,tag=scarena.tmp] run function scarena:lobby/suggestions/trigger
