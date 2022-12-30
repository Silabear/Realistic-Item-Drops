
# Armor stand manual gravity to put the entity in the floor
execute as @e[type=armor_stand,tag=sb.is_marker] at @s if block ~ ~0.8 ~ #items:ignore run tp @s ~ ~-0.2 ~

# Detecting a player nearby to drop the item
execute as @e[type=armor_stand,tag=sb.is_marker] at @s if entity @e[type=player,distance=..1.2] run function items:as_break

# Loop again if there are remaining armor_stands that needs to be checked (auto stopped by items:schedules/loop_5s)
execute if score #as_marker_count sb_items.data matches 1.. run schedule function items:schedules/as_gravity 1t replace

