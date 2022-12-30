# DROPPING
execute if score .display ridsb.settings matches 0 as @e[type=item,tag=!pickup,tag=!global.ignore,predicate=items:2s] at @s run function items:as_place
execute if score .display ridsb.settings matches 1 as @e[type=item,predicate=items:if_check,tag=!pickup,tag=!global.ignore] at @s unless block ~ ~-0.1 ~ #items:ignore unless entity @e[type=item_frame,distance=..1] run function items:if_place

execute as @e[type=armor_stand,nbt={OnGround:1b},predicate=!items:imang,tag=sb.item_drop] run data merge entity @s {NoGravity:1b,Marker:1b}
execute as @e[tag=sb.item_drop,predicate=items:imang] at @s if block ~ ~0.8 ~ #items:ignore run tp @s ~ ~-0.2 ~

# Detecting distance
execute as @e[tag=sb.item_drop,predicate=items:imang] at @s if entity @e[type=player,distance=..1.2] run function items:as_break
execute as @e[tag=on_floor,tag=sb.item_flat] at @s if entity @a[distance=..1] run function items:if_break

execute if score .despawns ridsb.settings matches 1 run scoreboard players add @e[tag=sb.item_drop] sb.lifetime 1

kill @e[scores={sb.lifetime=6000..},tag=!global.ignore,tag=!global.ignore.kill]