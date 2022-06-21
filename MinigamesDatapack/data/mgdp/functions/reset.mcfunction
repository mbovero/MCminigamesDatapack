#####Resets
##Gamerules
gamerule doImmediateRespawn false
gamerule keepInventory false

##Lobby
effect clear @a
clear @a
xp set @a 0 levels
xp set @a 0 points
gamerule spawnRadius 0
setworldspawn -16 -44 -18
spawnpoint @a -16 -43 -18
gamemode adventure @a[tag=!GameDev]
gamerule showDeathMessages false
kill @e[type=area_effect_cloud,scores={TickTime=0..}]
kill @e[type=area_effect_cloud,tag=spawn]
kill @e[type=item]
kill @e[type=arrow,nbt={inGround:1b}]

##Hub reset
#KOTH
forceload add 8 -631
setblock 8 -59 -631 stone_button[facing=south]
#data modify entity @e[type=area_effect_cloud,tag=koth_map_display,limit=1] CustomName set value '{"text":"Test"}'
forceload remove 8 -631

##Scoreboard 
scoreboard players reset @e TickTime
scoreboard objectives setdisplay sidebar
scoreboard objectives remove Score
scoreboard players set @a KOTHdeaths 0
scoreboard players reset @a KOTHkills
scoreboard players reset @a KOTHkills2
scoreboard players reset @a KOTHkillssuper
scoreboard players reset @a KOTHtotalkills
scoreboard players set bool GameInSession 0
#KOTH
scoreboard players set bool KOTH 0
scoreboard players set buttontick KOTHstart 0
scoreboard players set bool KOTHend 0
scoreboard players set @a KOTHkit 10
scoreboard players reset @a ylevel
scoreboard players reset @a PearlUsed
#scoreboard players set map KOTHmap 0
scoreboard players reset max

team leave @a