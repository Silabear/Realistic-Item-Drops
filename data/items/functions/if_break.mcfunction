summon item ~ ~ ~ {Tags:["sb.pickup"],Item:{id:"minecraft:dirt",Count:1b},PickupDelay:1}
data modify entity @e[type=item,tag=sb.pickup,limit=1,sort=nearest] Item set from entity @s Item
kill @s