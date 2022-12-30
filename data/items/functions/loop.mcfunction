
## DROPPING system
# display 0 = armor_stand
# display 1 = item_frame
# display 2 = default (item)
execute if score .display ridsb.settings matches 0 as @e[type=item,tag=!sb.pickup,tag=!global.ignore,predicate=items:2s] at @s run function items:as_place
execute if score .display ridsb.settings matches 1 as @e[type=item,predicate=items:if_check,tag=!sb.pickup,tag=!global.ignore] at @s unless block ~ ~-0.1 ~ #items:ignore unless entity @e[type=item_frame,distance=..1] run function items:if_place

## Suggestion: only affect items close to a player to allow hopper and other stuff to work properly
## uncomment the following lines to enable this and comment out the lines above
#execute if score .display ridsb.settings matches 0 at @a as @e[type=item,distance=..16,tag=!sb.pickup,tag=!global.ignore,predicate=items:2s] at @s run function items:as_place
#execute if score .display ridsb.settings matches 1 at @a as @e[type=item,distance=..16,predicate=items:if_check,tag=!sb.pickup,tag=!global.ignore] at @s unless block ~ ~-0.1 ~ #items:ignore unless entity @e[type=item_frame,distance=..1] run function items:if_place

