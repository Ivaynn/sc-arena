#> executed by #minecraft:tick

function scarena:arena/tick
function scarena:rooms/tick
function scarena:game/tick
execute as @a at @s run function scarena:as_player/tick

execute positioned 0 -40 0 run function scarena:lobby/tick
