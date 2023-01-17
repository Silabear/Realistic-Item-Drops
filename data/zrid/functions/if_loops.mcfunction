
# Detecting a player nearby to drop the item
execute if entity @a[distance=..1] run function zrid:if_break

# Despawning system
execute if score .despawns ridsb.settings matches 1 if entity @s[tag=!global.ignore,tag=!global.ignore.kill] run function zrid:despawn_score

