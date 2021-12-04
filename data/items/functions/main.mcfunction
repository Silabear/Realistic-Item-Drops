# Detecting Placement
execute as @e[type=item,tag=!pickup,tag=!global.ignore,nbt={Age:2s},tag=!smithed.entity] at @s if score .display ridsb-settings matches 0 run function items:as_place

execute as @e[type=item,nbt={Age:2s,Item:{Count:1b}},tag=!pickup,tag=!global.ignore,tag=!smithed.entity] at @s if score .display ridsb-settings matches 1 unless block ~ ~-1 ~ #items:ignore unless entity @e[type=item_frame,distance=..1] run function items:if_place

execute as @e[nbt={OnGround:1b},nbt=!{NoGravity:1b},nbt=!{Marker:1b},tag=sb_item_drop,type=armor_stand,tag=!smithed.entity] run data merge entity @s {NoGravity:1b,Marker:1b}
execute as @e[tag=sb_item_drop,nbt={NoGravity:1b,Marker:1b},tag=!smithed.entity,type=armor_stand] at @s if block ~ ~0.6 ~ #items:ignore run tp @s ~ ~-0.2 ~

# Detecting distance
execute as @e[tag=sb_item_drop,nbt={Marker:1b,NoGravity:1b},type=armor_stand,tag=!smithed.entity] at @s if entity @a[distance=..1.2] run function items:as_break
execute as @e[tag=on_floor,tag=realistic_frame,type=item_frame,tag=!smithed.entity] at @s if entity @a[distance=..1] run function items:if_break

execute if score .despawns ridsb-settings matches 1 run scoreboard players add @e[tag=sb_item_drop] sblifetime 1

kill @e[scores={sblifetime=6000..},tag=!global.ignore,tag=!global.ignore.kill,tag=!smithed.entity]