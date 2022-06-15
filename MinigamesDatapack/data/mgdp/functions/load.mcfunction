###Load message


#####One-Time SETUP
###Gamerules
gamerule commandBlockOutput false
gamerule announceAdvancements false
gamerule disableRaids true
gamerule doInsomnia false
gamerule doMobSpawning false
gamerule doPatrolSpawning false
gamerule doTraderSpawning false
gamerule doWeatherCycle false
gamerule mobGriefing false
#####gamerule sendCommandFeedback false

tp bigbudderbob 8 -59 8

###Scoreboard Initialization
#armor stand timers
scoreboard objectives add TickTime dummy
############forceload add 8 -1200 8 -1200
#health bar on tab list
scoreboard objectives add Health health
scoreboard objectives setdisplay list Health
#death count for respawn tracking
scoreboard objectives add Deaths deathCount
#kill detection
scoreboard objectives add Kills playerKillCount
scoreboard objectives add Kills2 playerKillCount
scoreboard objectives add KillsSuper playerKillCount
scoreboard objectives add TotalKills playerKillCount
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
scoreboard players set mapnum KOTHmap 0


###Team Initialization
team add Striker
team modify Striker suffix ["",{"text":" <","bold":true,"color":"gray"},{"text":"Striker","italic":true,"color":"dark_red"},{"text":">","bold":true,"color":"gray"}]
team add Tank
team modify Tank suffix ["",{"text":" <","bold":true,"color":"gray"},{"text":"Tank","italic":true,"color":"dark_blue"},{"text":">","bold":true,"color":"gray"}]
team add Archer
team modify Archer suffix ["",{"text":" <","bold":true,"color":"gray"},{"text":"Archer","italic":true,"color":"dark_green"},{"text":">","bold":true,"color":"gray"}]
team add Warper
team modify Warper suffix ["",{"text":" <","bold":true,"color":"gray"},{"text":"Warper","italic":true,"color":"dark_purple"},{"text":">","bold":true,"color":"gray"}]
team add Fisherman
team modify Fisherman suffix ["",{"text":" <","bold":true,"color":"gray"},{"text":"Fisherman","italic":true,"color":"dark_aqua"},{"text":">","bold":true,"color":"gray"}]

###Reset Scores (and other stuff)
function mgdp:reset