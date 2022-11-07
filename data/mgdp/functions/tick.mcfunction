###Detect and Activate Games
execute if score KOTH BooleanVariables matches 1 run function mgdp:koth/tick


###Boost Pads
#jump/speed
execute as @a at @s if block ~ ~-0.9 ~ lime_glazed_terracotta run effect give @s jump_boost 1 7 true
execute as @a at @s if block ~ ~-0.7 ~ lime_glazed_terracotta run effect give @s speed 1 15 true
#jump
execute as @a at @s if block ~ ~-0.9 ~ gray_glazed_terracotta run effect give @s jump_boost 1 5 true
execute as @a at @s unless block ~ ~-0.3 ~ gray_glazed_terracotta unless block ~ ~-0.3 ~ air unless block ~ ~-0.3 ~ lime_glazed_terracotta run effect clear @s jump_boost
#speed
execute as @a at @s if block ~ ~-0.7 ~ magenta_glazed_terracotta run effect give @s speed 1 15 true
execute as @a at @s unless block ~ ~-0.3 ~ magenta_glazed_terracotta unless block ~ ~-0.3 ~ air unless block ~ ~-0.3 ~ lime_glazed_terracotta run effect clear @s speed



#####Lobby Stuff
##false void    -  use x coord to make complete box
#main hub
execute as @a at @s if entity @s[y=-69,z=-300,dy=-5,dz=600] run effect give @s levitation 1 22 true
#KOTH hub
execute as @a at @s if entity @s[y=-69,z=-300,dy=-5,dz=-600] run effect give @s levitation 1 10 true

#tp back if glitch through
execute as @a at @s if entity @s[y=-120,dy=-500] run effect give @s resistance 1 255 true
execute as @a at @s if entity @s[y=-120,dy=-500] run tp @s -16 -43 -18
#prevent death/starvation
execute as @a at @s if entity @s[y=-20,dy=-500] run effect give @s saturation 10 255 true
execute as @a at @s if entity @s[y=-20,dy=-500] run effect give @s regeneration 10 255 true
#clear team in main lobby
execute as @a[x=8,y=-59,z=8,distance=..100] run team leave @s
#gamemode adventure on lobby tp
execute as @a[x=-16,y=-44,z=-18,distance=..1,gamemode=survival] run gamemode adventure

#####Game Start Timers
execute positioned 8 -30 -600 if entity @p[distance=..250] run function mgdp:koth/detect

###Custom Commands
function mgdp:customcommands/tick
###Custom Items
#detect special snowballs if a game is in session
execute if score GameInSession BooleanVariables matches 1 run function mgdp:customitems/snowballs/tick
#prevent item dropping during a game
execute if score GameInSession BooleanVariables matches 1 as @e[type=item,tag=!processed] run function mgdp:customitems/noitemdrop