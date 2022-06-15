#arena at 8 12 -1200
#hub at 8 -30 -600

###Load message
title @a title {"text":"KOTH","bold":true,"color":"gold"}
playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 999999999999999999999 .5

###Scoreboard Initialization
scoreboard objectives add Score dummy
scoreboard objectives setdisplay sidebar Score
scoreboard players set @a[tag=queued] Score 0
scoreboard players set @a Kills 0
scoreboard players set @a KillsSuper 0
scoreboard players reset @a PearlUsed
scoreboard players set @a TotalKills 0

##################Change this for multiple maps
###Game Setup
#remove suffixes
team leave @a
#spawning
gamerule doImmediateRespawn true
gamerule keepInventory true
team add 1
team add 2
team add 3
team add 4
spawnpoint @a[tag=queued] 8 12 -1200
kill @a[tag=queued]
gamerule showDeathMessages true
#timer
summon armor_stand 8 10 -1200 {Tags:["five_min_timer"],Invisible:1,Invulnerable:1,NoGravity:1,Marker:1}
#kit give
scoreboard players set @a[tag=queued] Deaths 1
gamemode adventure @a


