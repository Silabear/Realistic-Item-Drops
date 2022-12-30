
# Armor stand manual gravity to put the entity in the floor
execute as @e[tag=sb.item_drop,predicate=items:imang] at @s if block ~ ~0.8 ~ #items:ignore run tp @s ~ ~-0.2 ~

# Loop again if there are remaining armor_stands that needs to be checked (auto stopped by items:schedules/loop_5s)
execute if score #as_marker_count sb_items.data matches 1.. run schedule function items:schedules/as_gravity 1t replace

