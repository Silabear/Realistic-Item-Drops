
scoreboard players remove #as_count sb_items.data 1
data modify entity @s NoGravity set value 1b
data modify entity @s Marker set value 1b
tag @s remove sb.check_ground

schedule function zrid:schedules/as_loops 1t replace
scoreboard players add #as_marker_count sb_items.data 1
tag @s add sb.is_marker

