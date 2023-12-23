execute positioned ~ ~2 ~ align y run tp @s ~ ~-1.1 ~
tag @s remove ritems.grounded
data modify storage particle Particle set from entity @s ArmorItems[3].id
execute positioned ~ ~1.4 ~ positioned ^ ^ ^.2 run function items:realistic/stop_descend/show_particle with storage particle