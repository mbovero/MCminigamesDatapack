

###End KOTH (reset)
scoreboard players set bool KOTHstart 0
scoreboard players set bool KOTHend 0
scoreboard players set @a Deaths 0
scoreboard players set @a Kills 0
scoreboard players set @a KillsSuper 0
scoreboard players reset @a PearlUsed
scoreboard players set @a TotalKills 0
scoreboard players set bool GameInSession 0
scoreboard players set bool KOTH 0
gamerule doImmediateRespawn false
gamerule keepInventory false
team remove 1
team remove 2
team remove 3
team remove 4
clear @a
spawnpoint @a 8 -59 8
tp @a[tag=queued] 8 -59 8
tag @a remove queued
setblock 8 -59 -631 minecraft:stone_button[facing=south] replace
effect clear @a



#Winner
scoreboard players operation max Score > @a Score
execute as @a if score @s Score = max Score run tag @s add Winner
title @a[tag=Winner] title {"text":"You win!","bold":true,"color":"green"}
execute as @a[tag=Winner] run playsound minecraft:item.goat_horn.sound.0 master @s ~ ~ ~ 999999999999 1.5
execute as @a[tag=Winner] run playsound minecraft:entity.firework_rocket.twinkle_far master @s ~ ~ ~ 999999999999 1
tag @a[tag=!Winner] add Loser
#Loser actions
title @a[tag=Loser] title {"text":"You lost","bold":true,"color":"red"}
execute as @a[tag=Loser] run playsound minecraft:item.goat_horn.sound.3 master @s ~ ~ ~ 999999999999 1.3
#Reset roles
tag @a remove Loser
tag @a remove Winner
scoreboard players reset max Score

scoreboard objectives remove Score
