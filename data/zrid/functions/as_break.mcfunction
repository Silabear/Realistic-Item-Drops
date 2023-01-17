
#Summon the item
summon item ~ ~ ~ {Tags:["sb.pickup"],Item:{id:"minecraft:dirt",Count:1b},PickupDelay:1s}

#Store into a storage to avoid selector usage (@e)
data modify storage items:main temp set from entity @s HandItems[1]

#Replace the item
execute as @e[type=item,limit=1,sort=nearest,tag=sb.pickup] at @s run function zrid:as_break_2

#Kill the armor_stand
scoreboard players remove #as_marker_count sb_items.data 1
kill @s

