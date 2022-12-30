
# Store numbers of entity to launch proper schedules
execute store result score #as_count sb_items.data if entity @e[type=armor_stand,tag=sb.check_ground]
execute store result score #as_marker_count sb_items.data if entity @e[type=armor_stand,tag=sb.is_marker]

# Start / Restart Loops
execute if score #as_count sb_items.data matches 1.. run schedule function items:schedules/waiting_as_on_ground 1t replace
execute if score #as_marker_count sb_items.data matches 1.. run schedule function items:schedules/as_gravity 1t replace

# Stop Loops
execute if score #as_count sb_items.data matches 0 run schedule clear items:schedules/stop_waiting_as_on_ground
execute if score #as_marker_count sb_items.data matches 0 run schedule clear items:schedules/stop_as_gravity

# Loop again!
schedule function items:schedules/loop_5s 5s replace

