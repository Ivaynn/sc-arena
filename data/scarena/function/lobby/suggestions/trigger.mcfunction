#> as player

execute if items entity @s weapon.mainhand minecraft:written_book run return run function scarena:lobby/suggestions/submit

execute unless items entity @s hotbar.* minecraft:writable_book run give @s minecraft:writable_book

tellraw @s ["",{text:"> ",color:"dark_aqua",bold:true},{text:"Sign the book to submit your suggestion",color:"gray"}]
