###Starting processes
#reset
scoreboard players set @s whg.start 0
#start messages
tellraw @a ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\nThe first to","italic":true,"color":"white"},{"text":" 6000 points wins","bold":true,"italic":true,"color":"green"},{"text":". ","italic":true,"color":"white"},{"text":"Good luck!\n\n\n","italic":true,"color":"gray"}]
title @a title {"text":"GO!","bold":true,"italic":true,"color":"green"}
#display scoreboard
scoreboard objectives setdisplay sidebar WHTime
scoreboard players set @a WHTime 0
#player/environment reset
effect clear @a
xp set @a 0 levels
xp set @a 0 points
gamemode survival @a
effect give @a saturation 1 255 true
effect give @a regeneration 1 255 true
time set day
weather clear
clear @a
execute as @s run worldborder center ~ ~
execute as @s run setworldspawn
kill @e[type=item]
#tp all players to starting player
execute as @s run tp @a @s
#give compass
execute as @a run function player_tracker:players/give_compass
#begin game
scoreboard players set bool GameEnd 0
#begin balancing
schedule function milesdp:balancing 450s replace