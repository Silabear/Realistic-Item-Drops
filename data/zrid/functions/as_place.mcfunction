
#Summon visual
summon armor_stand ~ ~ ~ {ShowArms:1b,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},Invisible:1b,Tags:["sb.item_drop","sb.check_ground","global.ignore.kill","global.ignore.pos","global.ignore"],Silent:1b,Invulnerable:1b}
schedule function zrid:schedules/waiting_as_on_ground 1t replace
scoreboard players add #as_count sb_items.data 1

#Store result of player sprinting check
scoreboard players set #success sb_items.data 0
execute store success score #success sb_items.data if entity @p[distance=..2,predicate=items:sprinting]

#Store in a storage item nbt to avoid selector usage (@e).
data modify storage items:main temp set from entity @s

#Run the function on the new armor_stand to avoid multiple @e selectors.
execute as @e[type=armor_stand,tag=sb.item_drop,distance=..1,limit=1,sort=nearest,tag=!sb.completed] run function zrid:as_place_2

#Delete item
kill @s

