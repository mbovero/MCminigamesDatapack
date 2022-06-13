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
gamerule doImmediateRespawn false
#gamerule sendCommandFeedback false
forceload add 8 -1200 8 -1200


###Lobby Setup
gamemode adventure @a
setworldspawn 8 -60 8
kill @e[type=armor_stand,scores={TickTime=0..}]
spawnpoint @a 8 -60 8

###Scoreboard Setup
#armor stand timers
scoreboard objectives add TickTime dummy
#KOTH start button
scoreboard objectives add KOTHstart dummy
scoreboard players set bool KOTHstart 0
#KOTH end game bool
scoreboard objectives add KOTHend dummy
scoreboard players set bool KOTHend 0
#kit detection
scoreboard objectives add KOTHkit dummy
scoreboard players set @a KOTHkit 0
#health bar on tab list
scoreboard objectives add Health health
scoreboard objectives setdisplay list Health
#hard score reset
scoreboard objectives remove Score
#team reset
team remove 1
team remove 2
team remove 3
team remove 4
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

