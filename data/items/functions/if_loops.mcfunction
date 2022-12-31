
# Detecting a player nearby to drop the item
execute if entity @a[distance=..1] run function items:if_break

# Despawning system
execute if score .despawns ridsb.settings matches 1 if entity @s[tag=!global.ignore,tag=!global.ignore.kill] run function items:despawn_score

