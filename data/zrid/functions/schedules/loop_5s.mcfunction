
## Loop 5s
## As soon as an entity is detected, it will launch the proper loop
## Avoiding useless tick loops using @e with no results

# Store numbers of entity to launch proper schedules
execute store result score #as_count sb_items.data if entity @e[type=armor_stand,tag=sb.check_ground]
execute store result score #as_marker_count sb_items.data if entity @e[type=armor_stand,tag=sb.is_marker]
execute store result score #if_count sb_items.data if entity @e[type=item_frame,tag=sb.item_flat]

# Start / Restart Loops
execute if score #as_count sb_items.data matches 1.. run schedule function zrid:schedules/waiting_as_on_ground 1t replace
execute if score #as_marker_count sb_items.data matches 1.. run schedule function zrid:schedules/as_loops 1t replace
execute if score #if_count sb_items.data matches 1.. run schedule function zrid:schedules/if_loops 1t replace

# Stop Loops
execute if score #as_count sb_items.data matches 0 run schedule clear items:schedules/waiting_as_on_ground
execute if score #as_marker_count sb_items.data matches 0 run schedule clear items:schedules/as_loops
execute if score #if_count sb_items.data matches 0 run schedule clear items:schedules/if_loops

# Loop again!
schedule function zrid:schedules/loop_5s 5s replace

