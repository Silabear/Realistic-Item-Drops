
# DROPPING system
#display 0 = armor_stand
#display 1 = item_frame
#display 2 = default (item)
execute if score .display ridsb.settings matches 0 as @e[type=item,tag=!sb.pickup,tag=!global.ignore,predicate=items:2s] at @s run function items:as_place
execute if score .display ridsb.settings matches 1 as @e[type=item,predicate=items:if_check,tag=!sb.pickup,tag=!global.ignore] at @s unless block ~ ~-0.1 ~ #items:ignore unless entity @e[type=item_frame,distance=..1] run function items:if_place

# Detecting distance
execute as @e[tag=sb.item_drop,predicate=items:imang] at @s if entity @e[type=player,distance=..1.2] run function items:as_break
execute as @e[tag=sb.on_floor,tag=sb.item_flat] at @s if entity @a[distance=..1] run function items:if_break

execute if score .despawns ridsb.settings matches 1 run scoreboard players add @e[tag=sb.item_drop] sb.lifetime 1

kill @e[scores={sb.lifetime=6000..},tag=!global.ignore,tag=!global.ignore.kill]

