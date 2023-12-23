tag @e[type=armor_stand,tag=ritems.first_tick] remove ritems.first_tick
execute as @e[type=item,tag=!ritems.no_drop] at @s run function items:realistic/drop
execute as @e[type=armor_stand,tag=ritems.flying,tag=!ritems.first_tick] at @s unless block ~ ~-0.01 ~ air run function items:realistic/grounded
execute as @e[type=armor_stand,tag=ritems.grounded] at @s run function items:realistic/descend

execute as @e[type=armor_stand,tag=ritems.realistic_container,predicate=!items:is_override] at @s positioned ~ ~1.4 ~ positioned ^ ^ ^.85 run function items:realistic/at_display
execute as @e[type=armor_stand,tag=ritems.realistic_container,predicate=items:is_override] at @s positioned ~ ~1.4 ~ positioned ^ ^ ^.2 run function items:realistic/at_display