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
#remove suffixes
team leave @a

#####Game Setup
##map detection
execute if score map KOTHmap matches 0 run summon armor_stand 8 10 -1200 {Tags:["spawn"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b}
execute if score map KOTHmap matches 0 run setworldspawn 7 14 -1215
execute if score map KOTHmap matches 0 run spawnpoint @a[tag=queued] 8 12 -1200
execute if score map KOTHmap matches 0 run summon armor_stand 8 10 -1200 {Tags:["five_min_timer"],Invisible:1,Invulnerable:1,NoGravity:1,Marker:1}
#castle of dreams
execute if score map KOTHmap matches 1 run summon area_effect_cloud -900 12 0 {Tags:["spawn"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if score map KOTHmap matches 1 run setworldspawn -904 12 7
execute if score map KOTHmap matches 1 run spawnpoint @a[tag=queued] -900 12 2
execute if score map KOTHmap matches 1 run summon armor_stand -900 12 0 {Tags:["five_min_timer"],Invisible:1,Invulnerable:1,NoGravity:1,Marker:1}


#spawning
gamerule doImmediateRespawn true
gamerule keepInventory true
gamerule spawnRadius 0
kill @a[tag=queued]
###############Try just teleporting instead?
gamerule showDeathMessages true
#kit give
scoreboard players set @a[tag=queued] Deaths 1
gamemode adventure @a


