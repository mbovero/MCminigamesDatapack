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
gamemode adventure @a
gamerule showDeathMessages false
kill @e[type=armor_stand,scores={TickTime=0..}]
kill @e[type=armor_stand,tag=spawn]
kill @e[type=item]

##Buttons
#KOTH
forceload add 8 -631
setblock 8 -59 -631 stone_button[facing=south]
forceload remove 8 -631

##Scoreboard 
scoreboard players reset @e TickTime
scoreboard objectives setdisplay sidebar
scoreboard objectives remove Score
scoreboard players set @a Deaths 0
scoreboard players reset @a Kills
scoreboard players reset @a Kills2
scoreboard players reset @a KillsSuper
scoreboard players reset @a TotalKills
scoreboard players set bool GameInSession 0
#KOTH
scoreboard players set bool KOTH 0
scoreboard players set buttontick KOTHstart 0
scoreboard players set bool KOTHend 0
scoreboard players reset @a KOTHkit
scoreboard players reset @a ylevel
scoreboard players reset @a PearlUsed
scoreboard players reset max

team leave @a