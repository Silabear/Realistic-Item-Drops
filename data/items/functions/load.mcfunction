# Display a message
tellraw @a ["",{"text":">","color":"gray"},{"text":" You are using","color":"gold"},{"text":" Realistic Item Drops","color":"aqua"},{"text":" by ","color":"gold"},{"text":"Silabear","color":"dark_green"}]


# Scoreboards
scoreboard objectives add ridsb-initcheck dummy
execute store success score .init ridsb-initcheck run scoreboard objectives add ridsb-settings dummy
execute unless score .init ridsb-initcheck matches 0 run scoreboard players set .display ridsb-settings 0
 
scoreboard objectives add sblifetime dummy
playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 21312837129837129837