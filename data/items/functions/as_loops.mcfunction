
# Armor stand manual gravity to put the entity in the floor
execute if block ~ ~0.8 ~ #items:ignore run tp @s ~ ~-0.2 ~

# Detecting a player nearby to drop the item
execute if entity @e[type=player,distance=..1.2] run function items:as_break

