#lobby at 8 -59 -600
#arena at 8 10 -1200

#spawns:
    #8 11 -1194
    #2 11 -1200
    #8 11 -1206
    #14 11 -1200

#game end function (7 mins?)
#summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["spawn"]}

###Load message
title @a title {"text":"KOTH","bold":true,"color":"gold"}
playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 999999999999999999999999999999999999999999 .5

###Scoreboard Initialization
scoreboard objectives add Score dummy
scoreboard objectives setdisplay sidebar Score
scoreboard players set @a Score 0
scoreboard players reset @a Deaths

###Game Setup
#spawning
gamerule doImmediateRespawn true
team add 1
team add 2
team add 3
team add 4
spawnpoint @a[tag=queued] 8 10 -1200
kill @a[tag=queued]
#timer
summon armor_stand 8 10 -1200 {Tags:["five_min_timer"],Invisible:1,Invulnerable:1,NoGravity:1,Marker:1}


