
# Set an armor_stand marker's nbt when it is on the ground
execute as @e[type=armor_stand,tag=sb.check_ground,predicate=items:on_ground] run function items:as_on_ground

# Loop again if there are remaining armor_stands that needs to be checked
execute if score #as_count sb_items.data matches 1.. run schedule function items:schedules/waiting_as_on_ground 1t replace

