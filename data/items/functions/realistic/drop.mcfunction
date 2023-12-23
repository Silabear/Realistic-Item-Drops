# y = -1.7
summon armor_stand ~ ~0.2 ~ {Tags:["ritems.realistic_container","ritems.temp","ritems.flying","ritems.first_tick"],Invisible:true,Invulnerable:true,ArmorItems:[{},{},{},{}],Pose:{Head:[90f,0f,0f]}}
data modify entity @e[type=armor_stand,tag=ritems.temp,limit=1] ArmorItems[3] set from entity @s Item
kill @s
execute as @e[type=armor_stand,tag=ritems.temp,limit=1] run function items:realistic/process