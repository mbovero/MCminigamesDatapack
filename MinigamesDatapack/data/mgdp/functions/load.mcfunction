###Load message


#####SETUP
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
#gamerule sendCommandFeedback false


###Lobby Setup
#gamemode adventure @a


###Scoreboard Setup
#armor stand timers
scoreboard objectives add TickTime dummy
scoreboard objectives add KOTHstart dummy
scoreboard players set bool KOTHstart 0
#kit detection
scoreboard objectives add KOTHkit dummy
scoreboard players set @a KOTHkit 0
#health bar on tab list
scoreboard objectives add Health health
scoreboard objectives setdisplay list Health
#hard score reset
scoreboard objectives remove Score
#death count for respawn tracking
scoreboard objectives add Deaths deathCount
scoreboard players set @a Deaths 0
#kill detection
scoreboard objectives add Kills playerKillCount
scoreboard players set @a Kills 0
scoreboard objectives add TotalKills playerKillCount
scoreboard players set @a TotalKills 0

#game detection
scoreboard objectives add GameInSession dummy
scoreboard players set bool GameInSession 0
#KOTH game detection
scoreboard objectives add KOTH dummy
scoreboard players set bool KOTH 0





###Menu Options Setup
#scoreboard objectives add whg.mainmenu trigger

