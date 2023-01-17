# Scoreboards
scoreboard objectives add sb_items.data dummy
scoreboard objectives add ridsb.initcheck dummy

execute store success score .uninstall ridsb.initcheck run scoreboard objectives add ridsb.uninstalled dummy
execute unless score .uninstall ridsb.initcheck matches 0 run scoreboard players set .value ridsb.uninstalled 0

execute store success score .settings ridsb.initcheck run scoreboard objectives add ridsb.settings dummy
execute unless score .settings ridsb.initcheck matches 0 run scoreboard players set .display ridsb.settings 0
 
scoreboard objectives add sb.lifetime dummy
function zrid:schedules/loop_5s

#define storage items:main

