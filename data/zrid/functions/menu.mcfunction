execute if score .value ridsb.uninstalled matches 0 run tellraw @s ["",{"text":"{------ ","color":"gold"},{"text":"Realistic Item Drops Menu","bold":true,"color":"yellow"},{"text":" ------}","color":"gold"},{"text":"\nDisplay Type: "},{"text":"[Realistic]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set .display ridsb.settings 0"}},{"text":" ","color":"green"},{"text":"[Flat]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set .display ridsb.settings 1"}},{"text":" ","color":"green"},{"text":"[Disable]","color":"yellow","clickEvent":{"action":"run_command","value":"/scoreboard players set .display ridsb.settings 2"}},{"text":"\nDespawn: "},{"text":"[Will Despawn]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set .despawns ridsb.settings 1"}},{"text":" ","color":"green"},{"text":"[Will Not Despawn]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set .despawns ridsb.settings 0"}},{"text":"\nDebug: "},{"text":"[Kill ","color":"red","clickEvent":{"action":"run_command","value":"/kill @e[tag=sb.item_flat]"}},{"text":"flat","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/kill @e[tag=sb.item_flat]"}},{"text":" Items]","color":"red","clickEvent":{"action":"run_command","value":"/kill @e[tag=sb.item_flat]"}},{"text":" ","color":"red"},{"text":"[Kill ","color":"red","clickEvent":{"action":"run_command","value":"/kill @e[tag=sb.item_drop]"}},{"text":"Realistic","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/kill @e[tag=sb.item_drop]"}},{"text":" Items]","color":"red","clickEvent":{"action":"run_command","value":"/kill @e[tag=sb.item_drop]"}},{"text":"\n"},{"text":"{-----------------------------------}","color":"gold"}]