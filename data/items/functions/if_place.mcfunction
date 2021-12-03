summon item_frame ~ ~ ~ {Facing:1b,Invisible:1b,Tags:["realistic_frame"],Fixed:1b,Invulnerable:1b}
data modify entity @e[type=item_frame,tag=realistic_frame,limit=1,sort=nearest] Item set from entity @s Item
tag @e[type=item_frame,tag=realistic_frame,limit=1,sort=nearest] add on_floor
kill @s