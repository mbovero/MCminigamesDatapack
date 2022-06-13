###Load message
tellraw @p ["",{"text":"[","bold":true,"color":"dark_blue"},{"text":"Loaded ","color":"gray"},{"text":"World Height ","italic":true,"color":"white","clickEvent":{"action":"run_command","value":"/trigger whg.mainmenu"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to display main menu","italic":true,"color":"gray"}]}},{"text":"Game","color":"gray"},{"text":"]","bold":true,"color":"dark_blue"}]


###Objectives Setup
gamerule commandBlockOutput false
#health bar on tab list
scoreboard objectives add Health health
scoreboard objectives setdisplay list Health
#game start/end
scoreboard objectives add GameEnd dummy
scoreboard players set bool GameEnd -1
#score keeping
scoreboard objectives add WHTime dummy "Score"
scoreboard players reset * WHTime
#elytra balancing bool
scoreboard objectives add Elytra dummy
scoreboard players set bool Elytra 0
#teleport balancing bool
scoreboard objectives add Teleport dummy
scoreboard players set bool Teleport 0
#death count for compass on respawn
scoreboard objectives add Deaths deathCount
scoreboard players set @a Deaths 0

###Menu Options Setup
scoreboard objectives add whg.mainmenu trigger
scoreboard objectives add whg.bordermenu trigger
scoreboard objectives add whg.start trigger
scoreboard objectives add whg.elytraoption trigger
scoreboard objectives add whg.teleportoption trigger
scoreboard objectives add whg.nobalance trigger
scoreboard objectives add whg.relocate trigger

