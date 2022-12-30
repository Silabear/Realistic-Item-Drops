
# Store numbers of entity to launch proper schedules
execute store result score #as_count sb_items.data if entity @e[type=armor_stand,tag=sb.check_ground]

# Loops
execute if score #as_count sb_items.data matches 1.. run schedule function items:schedules/waiting_as_on_ground 1t replace

# Loop again!
schedule function items:schedules/loop_5s 5s replace

