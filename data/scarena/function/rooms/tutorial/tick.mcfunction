#> [tick] as player, at @s
# Executed if player is at a private room (state 2) and in tutorial mode

execute unless score @s scarena.player.tutorial matches 1.. run return 0


# 1: the nearest table is open and player is holding a wand
execute if score @s scarena.player.tutorial matches 1 run return run function scarena:rooms/tutorial/advance/stage_1


# 2: hold wand with "magic_missile"
execute if score @s scarena.player.tutorial matches 2 run return run function scarena:rooms/tutorial/advance/stage_2


# 3: the nearest projectile is "magic_missile"
execute if score @s scarena.player.tutorial matches 3 run return run function scarena:rooms/tutorial/advance/stage_3


# 4: the nearest projectile is "magic_missile" + "rainbow"
execute if score @s scarena.player.tutorial matches 4 run return run function scarena:rooms/tutorial/advance/stage_4


# 5: the nearest projectile is "magic_missile" and has "fireball" is in its queue (may be swapped)
execute if score @s scarena.player.tutorial matches 5 run return run function scarena:rooms/tutorial/advance/stage_5


# 6: the nearest projectile has "small_explosion" in its queue
execute if score @s scarena.player.tutorial matches 6 run return run function scarena:rooms/tutorial/advance/stage_6
