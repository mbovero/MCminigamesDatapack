###Detect and activate game

#run games
execute if score bool KOTH matches 1 run function mgdp:koth/tick





###Boost Pads
#jump
execute as @a at @s if block ~ ~-0.7 ~ gray_glazed_terracotta run effect give @s jump_boost 1 5 true
execute as @a at @s unless block ~ ~-0.3 ~ gray_glazed_terracotta unless block ~ ~-0.3 ~ air run effect clear @s jump_boost
#speed
execute as @a at @s if block ~ ~-0.7 ~ magenta_glazed_terracotta run effect give @s speed 1 15 true
execute as @a at @s unless block ~ ~-0.3 ~ magenta_glazed_terracotta unless block ~ ~-0.3 ~ air run effect clear @s speed


###Lobby Stuff
execute as @a at @s if entity @s[y=-69,dy=-5] run effect give @s levitation 1 12 true
execute as @a at @s if entity @s[y=-10,dy=-500] run effect give @s saturation 1 255 true







###Menu options enabling
#scoreboard players enable @a whg.mainmenu

###Menu options detecting
#execute as @a if score @s whg.mainmenu matches 1.. run function milesdp:mainmenu
