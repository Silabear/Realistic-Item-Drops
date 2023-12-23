summon item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["ritems.temp","ritems.no_drop"]}
data modify entity @e[type=item,limit=1,tag=ritems.temp,sort=nearest] Item set from entity @s ArmorItems[3]
tag @e[type=item,limit=1,tag=ritems.temp,sort=nearest] remove ritems.temp
kill @s