#> any

tellraw @a[tag=debug] ["",{text:"> ",color:"gold",bold:true},{text:"Placing lobby structure at ",color:"gray"},{text:"[0, ~, 0]",color:"green",hover_event:{action:"show_text",value:{text:"Click to teleport",color:"gray"}},click_event:{action:"suggest_command",command:"/tp @s 0 ~ 0"}}]


# Structure
setblock 0 -25 0 minecraft:structure_block[mode=load]{author:"?",components:{},ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"scarena:lobby",posX:-22,posY:-20,posZ:-22,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:45,sizeY:20,sizeZ:45,strict:0b}
setblock 0 -26 0 minecraft:redstone_block
fill 23 -46 23 -23 -25 -23 minecraft:barrier outline


# Entities
execute positioned 0 -42 0 as @e[distance=..100] run function scarena:arena/remove_entity


# Queue
summon minecraft:interaction 0.5 -40.8 5.5 {height:.8,width:.8,Tags:["scarena.lobby","scarena.lobby.queue"]}
summon minecraft:item_display 0.5 -40 5.5 {item:{id:"minecraft:purple_glazed_terracotta"},Tags:["scarena.lobby","scarena.lobby.queue"],transformation:{scale:[0.6f,0.6f,0.6f],right_rotation:[0.73,1,0,1],left_rotation:[0,0,0,1],translation:[0,-.4,0]},teleport_duration:5}
summon minecraft:text_display 0.5 -40 5.5 {text:{text:"Join Queue",color:"gray"},Tags:["scarena.lobby","scarena.lobby.queue"],Rotation:[180f,0f],transformation:{scale:[1,1,1],translation:[0f,-1.3f,0f],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]}}

# Private Room
summon minecraft:interaction -4.5 -40.8 0.5 {height:.8,width:.8,Tags:["scarena.lobby","scarena.lobby.room"]}
summon minecraft:item_display -4.5 -40 0.5 {item:{id:"minecraft:lime_glazed_terracotta"},Tags:["scarena.lobby","scarena.lobby.room"],transformation:{scale:[0.6f,0.6f,0.6f],right_rotation:[0.73,1,0,1],left_rotation:[0,0,0,1],translation:[0,-.4,0]},teleport_duration:5}
summon minecraft:text_display -4.5 -40 0.5 {text:{text:"Private Room",color:"gray"},Tags:["scarena.lobby","scarena.lobby.room"],Rotation:[-90,0f],transformation:{scale:[1,1,1],translation:[0f,-1.3f,0f],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]}}

# Arena
summon minecraft:interaction 5.5 -40.8 0.5 {height:.8,width:.8,Tags:["scarena.lobby","scarena.lobby.arena"]}
summon minecraft:item_display 5.5 -40 0.5 {item:{id:"minecraft:yellow_glazed_terracotta"},Tags:["scarena.lobby","scarena.lobby.arena"],transformation:{scale:[0.6f,0.6f,0.6f],right_rotation:[0.73,1,0,1],left_rotation:[0,0,0,1],translation:[0,-.4,0]},teleport_duration:5}
summon minecraft:text_display 5.5 -40 0.5 {text:{text:"FFA Arena",color:"gray"},Tags:["scarena.lobby","scarena.lobby.arena"],Rotation:[90,0f],transformation:{scale:[1,1,1],translation:[0f,-1.3f,0f],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]}}

# Suggestions
summon minecraft:interaction 0.5 -40.8 -4.5 {height:.8,width:.8,Tags:["scarena.lobby.book"]}
summon minecraft:item_display 0.5 -40 -4.5 {item:{id:"minecraft:writable_book"},Tags:["scarena.lobby.book"],Rotation:[180,0f],transformation:{scale:[0.7f,0.7f,0.7f],right_rotation:[0,0,0,1],left_rotation:[0,0,0,1],translation:[0,-.4,0]}}
summon minecraft:text_display 0.5 -40 -4.5 {text:{text:"Suggestions",color:"gray"},Tags:["scarena.lobby.book"],Rotation:[0f,0f],transformation:{scale:[1,1,1],translation:[0f,-1.3f,0f],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]}}
