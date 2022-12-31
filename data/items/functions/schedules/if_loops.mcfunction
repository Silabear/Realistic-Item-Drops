
# Item frame loops
execute as @e[type=item_frame,tag=sb.item_flat] at @s run function items:if_loops

# Loop again if there are remaining armor_stands that needs to be checked (auto stopped by items:schedules/loop_5s)
execute if score #if_count sb_items.data matches 1.. run schedule function items:schedules/if_loops 1t replace

