
## Turn the item into an item frame
#Summon item_frame
summon item_frame ~ ~ ~ {Facing:1b,Invisible:1b,Tags:["sb.item_flat","sb.temp"],Fixed:1b,Invulnerable:1b}
schedule function zrid:schedules/if_loops 1t replace
scoreboard players add #if_count sb_items.data 1

#Store in a storage item nbt to avoid selector usage (@e).
data modify storage items:main temp set from entity @s Item
execute as @e[type=item_frame,tag=sb.temp,distance=..1,limit=1,sort=nearest] run function zrid:if_place_2

#Delete item
kill @s

