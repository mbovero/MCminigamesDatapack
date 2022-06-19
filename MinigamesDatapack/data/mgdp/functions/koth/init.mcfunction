###Scoreboard Initialization
#death count for respawn tracking
scoreboard objectives add KOTHdeaths deathCount
#kill detection
scoreboard objectives add KOTHkills playerKillCount
scoreboard objectives add KOTHkills2 playerKillCount
scoreboard objectives add KOTHkillssuper playerKillCount
scoreboard objectives add KOTHtotalkills playerKillCount
#game detection
scoreboard objectives add GameInSession dummy
tag @a remove queued
#KOTH game detection
scoreboard objectives add KOTH dummy
#KOTH start button
scoreboard objectives add KOTHstart dummy
#KOTH end game bool
scoreboard objectives add KOTHend dummy
#KOTH kit detection
scoreboard objectives add KOTHkit dummy
scoreboard players set @a KOTHkit 0
#y-level detection
scoreboard objectives add ylevel dummy
#warper pearl detection
scoreboard objectives add PearlUsed minecraft.used:minecraft.ender_pearl
#KOTH map detection
scoreboard objectives add KOTHmap dummy


###KOTH Team Initialization
team add Striker
team modify Striker suffix ["",{"text":" <","bold":true,"color":"gray"},{"text":"Striker","italic":true,"color":"dark_red"},{"text":">","bold":true,"color":"gray"}]
team add Orc
team modify Orc suffix ["",{"text":" <","bold":true,"color":"gray"},{"text":"Orc","italic":true,"color":"dark_red"},{"text":">","bold":true,"color":"gray"}]
team add Pyro
team modify Pyro suffix ["",{"text":" <","bold":true,"color":"gray"},{"text":"Pyro","italic":true,"color":"dark_red"},{"text":">","bold":true,"color":"gray"}]
team add Saiyan
team modify Saiyan suffix ["",{"text":" <","bold":true,"color":"gray"},{"text":"Saiyan","italic":true,"color":"dark_red"},{"text":">","bold":true,"color":"gray"}]
team add Knight
team modify Knight suffix ["",{"text":" <","bold":true,"color":"gray"},{"text":"Knight","italic":true,"color":"dark_blue"},{"text":">","bold":true,"color":"gray"}]
team add TMNT
team modify TMNT suffix ["",{"text":" <","bold":true,"color":"gray"},{"text":"TMNT","italic":true,"color":"dark_blue"},{"text":">","bold":true,"color":"gray"}]
team add Trapper
team modify Trapper suffix ["",{"text":" <","bold":true,"color":"gray"},{"text":"Trapper","italic":true,"color":"dark_blue"},{"text":">","bold":true,"color":"gray"}]
team add Archer
team modify Archer suffix ["",{"text":" <","bold":true,"color":"gray"},{"text":"Archer","italic":true,"color":"dark_green"},{"text":">","bold":true,"color":"gray"}]
team add Sniper
team modify Sniper suffix ["",{"text":" <","bold":true,"color":"gray"},{"text":"Sniper","italic":true,"color":"dark_green"},{"text":">","bold":true,"color":"gray"}]
team add IceSpirit
team modify IceSpirit suffix ["",{"text":" <","bold":true,"color":"gray"},{"text":"Ice Spirit","italic":true,"color":"dark_green"},{"text":">","bold":true,"color":"gray"}]
team add Warper
team modify Warper suffix ["",{"text":" <","bold":true,"color":"gray"},{"text":"Warper","italic":true,"color":"dark_purple"},{"text":">","bold":true,"color":"gray"}]
team add ClockMaster
team modify ClockMaster suffix ["",{"text":" <","bold":true,"color":"gray"},{"text":"Clock Master","italic":true,"color":"dark_purple"},{"text":">","bold":true,"color":"gray"}]
team add Wizard
team modify Wizard suffix ["",{"text":" <","bold":true,"color":"gray"},{"text":"Wizard","italic":true,"color":"dark_purple"},{"text":">","bold":true,"color":"gray"}]
team add Druid
team modify Druid suffix ["",{"text":" <","bold":true,"color":"gray"},{"text":"Druid","italic":true,"color":"dark_purple"},{"text":">","bold":true,"color":"gray"}]
team add Fisherman
team modify Fisherman suffix ["",{"text":" <","bold":true,"color":"gray"},{"text":"Fisherman","italic":true,"color":"dark_aqua"},{"text":">","bold":true,"color":"gray"}]
team add OceanMan
team modify OceanMan suffix ["",{"text":" <","bold":true,"color":"gray"},{"text":"Ocean Man","italic":true,"color":"dark_aqua"},{"text":">","bold":true,"color":"gray"}]
team add BirdPerson
team modify BirdPerson suffix ["",{"text":" <","bold":true,"color":"gray"},{"text":"Bird Person","italic":true,"color":"dark_aqua"},{"text":">","bold":true,"color":"gray"}]
team add Spider
team modify Spider suffix ["",{"text":" <","bold":true,"color":"gray"},{"text":"Spider","italic":true,"color":"dark_aqua"},{"text":">","bold":true,"color":"gray"}]

