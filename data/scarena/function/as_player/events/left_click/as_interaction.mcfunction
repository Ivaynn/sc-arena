#> as interaction, at player

scoreboard players set $this_player scarena.tmp 0
execute on attacker if entity @s[tag=scarena.tmp] run scoreboard players set $this_player scarena.tmp 1
execute if score $this_player scarena.tmp matches 0 run return 0

data remove entity @s attack


# The player left-clicked this interaction entity
