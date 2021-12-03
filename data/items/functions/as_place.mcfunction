summon armor_stand ~ ~ ~ {ShowArms:1b,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},Invisible:1b,Tags:["sb_item_drop","global.ignore.kill","global.ignore.pos"]}

data modify entity @e[tag=sb_item_drop,limit=1,sort=nearest,tag=!sb_completed] HandItems[1] set from entity @s Item

data modify entity @e[tag=sb_item_drop,limit=1,sort=nearest,tag=!sb_completed] Motion set from entity @s Motion

scoreboard players set @e[tag=sb_item_drop,limit=1,sort=nearest,tag=!sb_completed] sblifetime 1

tag @s add sb_completed

kill @s