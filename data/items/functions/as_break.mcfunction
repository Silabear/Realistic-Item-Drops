summon item ~ ~ ~ {Tags:["pickup"],Item:{id:"minecraft:dirt",Count:1b},PickupDelay:1}
data modify entity @e[tag=pickup,limit=1,sort=nearest] Item set from entity @s HandItems[1]
execute as @e[type=item,limit=1,sort=nearest] at @s run tp @s ~ ~1.3 ~
kill @s