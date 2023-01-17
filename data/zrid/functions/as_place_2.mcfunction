
#Success 0 = no player sprinting nearby
execute if score #success sb_items.data matches 0 run data modify entity @s Motion set from storage items:main temp.Motion

#Success 1 = player sprinting nearby
execute if score #success sb_items.data matches 1 store result entity @s Motion[0] double 1 run data get storage items:main temp.Motion[0] 3
execute if score #success sb_items.data matches 1 store result entity @s Motion[1] double 1 run data get storage items:main temp.Motion[1] 3
execute if score #success sb_items.data matches 1 store result entity @s Motion[2] double 1 run data get storage items:main temp.Motion[2] 3

#Set visual item + scores
data modify entity @s HandItems[1] set from storage items:main temp.Item
scoreboard players set @s sb.lifetime 1
tag @s add sb.completed

