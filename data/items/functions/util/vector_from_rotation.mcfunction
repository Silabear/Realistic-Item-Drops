execute positioned 0.0 0.0 0.0 run tp ^ ^ ^1
data modify storage minecraft:directionalmotion Motion set from entity @s Pos
tp ~ ~ ~
data modify entity @s Motion set from storage minecraft:directionalmotion Motion 