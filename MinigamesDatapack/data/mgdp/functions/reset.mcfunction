#####Resets
##Gamerules
gamerule doImmediateRespawn false
gamerule keepInventory false

##Lobby
effect clear @a
clear @a
xp set @a 0 levels
xp set @a 0 points
setworldspawn 8 -59 8
spawnpoint @a 8 -59 8
gamemode adventure @a
kill @e[type=armor_stand,scores={TickTime=0..}]
kill @e[type=item]

##Buttons
#KOTH
setblock 8 -59 -631 stone_button[facing=south] replace

##teams for spawns reset    -   REWORK?
team remove 1
team remove 2
team remove 3
team remove 4

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
scoreboard players set bool KOTHstart 0
scoreboard players set bool KOTHend 0
scoreboard players reset @a PearlUsed
