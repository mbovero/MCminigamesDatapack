###End KOTH
scoreboard players set bool KOTHstart 0
scoreboard players set bool KOTHend 0
scoreboard players set @a KOTHkit 0
scoreboard objectives remove Score
scoreboard players set @a Deaths 0
scoreboard players set @a Kills 0
scoreboard players set @a TotalKills 0
scoreboard players set bool GameInSession 0
scoreboard players set bool KOTH 0
team remove 1
team remove 2
team remove 3
team remove 4
clear @a
spawnpoint @a 8 -59 8
tp @a[tag=queued] 8 -59 8
tag @a remove queued