
# Armor stand loops
execute as @e[type=armor_stand,tag=sb.is_marker] at @s run function items:as_loops

# Loop again if there are remaining armor_stands that needs to be checked (auto stopped by items:schedules/loop_5s)
execute if score #as_marker_count sb_items.data matches 1.. run schedule function items:schedules/as_gravity 1t replace

