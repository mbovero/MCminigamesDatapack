###Load message?


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
gamerule doEntityDrops false
gamerule doMobLoot false
#####gamerule sendCommandFeedback false


###Scoreboard Initialization
#armor stand timers
scoreboard objectives add TickTime dummy
#health bar on tab list
scoreboard objectives add Health health
scoreboard objectives setdisplay list Health



###KOTH init
function mgdp:koth/init
###KOTH init
function mgdp:murmyst/init

###Reset Scores (and other stuff)        |||||| UPDATE FOR MM
function mgdp:reset


###Custom Commands Initialization
function mgdp:customcommands/init
###Custom Items Initialization
function mgdp:customitems/init
