summon armor_stand ~ ~ ~ {ShowArms:1b,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},Invisible:1b,Tags:["sb.item_drop","global.ignore.kill","global.ignore.pos","global.ignore"],Silent:1b,Invulnerable:1b}

execute unless entity @p[distance=..2,predicate=items:sprinting] run data modify entity @e[tag=sb.item_drop,limit=1,sort=nearest,tag=!sb.completed] Motion set from entity @s Motion

execute if entity @p[distance=..2,predicate=items:sprinting] run execute store result entity @e[tag=sb.item_drop,limit=1,sort=nearest,tag=!sb.completed] Motion[0] double 0.001 run data get entity @s Motion[0] 3000

execute if entity @p[distance=..2,predicate=items:sprinting] run execute store result entity @e[tag=sb.item_drop,limit=1,sort=nearest,tag=!sb.completed] Motion[1] double 0.001 run data get entity @s Motion[1] 3000

execute if entity @p[distance=..2,predicate=items:sprinting] run execute store result entity @e[tag=sb.item_drop,limit=1,sort=nearest,tag=!sb.completed] Motion[2] double 0.001 run data get entity @s Motion[2] 3000


data modify entity @e[tag=sb.item_drop,limit=1,sort=nearest,tag=!sb.completed] HandItems[1] set from entity @s Item

scoreboard players set @e[tag=sb.item_drop,limit=1,sort=nearest,tag=!sb.completed] sblifetime 1

tag @s add sb.completed

kill @s