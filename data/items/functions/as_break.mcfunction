summon item ~ ~ ~ {Tags:["sb.pickup"],Item:{id:"minecraft:dirt",Count:1b},PickupDelay:1}
data modify entity @e[tag=sb.pickup,limit=1,sort=nearest] Item set from entity @s HandItems[1]
execute as @e[type=item,limit=1,sort=nearest,tag=sb.pickup] at @s run tp @s ~ ~1.3 ~
kill @s