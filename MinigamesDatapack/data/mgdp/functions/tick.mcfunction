###Detect and Activate Games
execute if score bool KOTH matches 1 run function mgdp:koth/tick





###Boost Pads
#jump
execute as @a at @s if block ~ ~-0.7 ~ gray_glazed_terracotta run effect give @s jump_boost 1 5 true
execute as @a at @s unless block ~ ~-0.3 ~ gray_glazed_terracotta unless block ~ ~-0.3 ~ air run effect clear @s jump_boost
#speed
execute as @a at @s if block ~ ~-0.7 ~ magenta_glazed_terracotta run effect give @s speed 1 15 true
execute as @a at @s unless block ~ ~-0.3 ~ magenta_glazed_terracotta unless block ~ ~-0.3 ~ air run effect clear @s speed


###Lobby Stuff
execute as @a at @s if entity @s[y=-69,dy=-5] run effect give @s levitation 1 10 true
execute as @a at @s if entity @s[y=-20,dy=-500] run effect give @s saturation 10 255 true
#clear team in main lobby
execute as @a[x=8,y=-59,z=8,distance=..100] run team leave @s

#####Game Start Timers
execute positioned 8 -30 -600 if entity @p[distance=..250] run function mgdp:koth/detect
