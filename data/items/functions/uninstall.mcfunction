scoreboard players set .value ridsb.uninstalled 1

kill @e[tag=sb_item_drop]
kill @e[tag=sb_item_flat]

tellraw @a ["",{"text":"Realistic Item Drops has been uninstalled.","bold":true,"color":"dark_red"},{"text":"\n"},{"text":"Thank you for using the pack!","color":"dark_aqua"},{"text":" "},{"text":"[Silabear]","underlined":true,"color":"aqua","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/member/silabear/"}}]