#> as player
# player is holding the book


tellraw @s ["",{text:"> ",color:"dark_aqua",bold:true},{text:"Thank you for the suggestion!",color:"gray"}]
data modify storage scarena:suggestions all append from entity @s SelectedItem.components."minecraft:written_book_content"
item replace entity @s weapon.mainhand with minecraft:air
