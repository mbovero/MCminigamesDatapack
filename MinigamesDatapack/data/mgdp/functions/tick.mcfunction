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


###Game Start Timers
#KOTH
execute if block 8 -59 -631 stone_button[powered=true] run scoreboard players add bool KOTHstart 1
execute if score bool KOTHstart matches 19 run summon armor_stand 8 -58 -627 {Tags:["five_sec_timer"],Invisible:1,Invulnerable:1,NoGravity:1,Marker:1,CustomNameVisible:1b}

scoreboard players add @e[type=armor_stand,nbt={Tags:["five_sec_timer"]}] TickTime 1
data modify entity @e[type=armor_stand,nbt={Tags:["five_sec_timer"]},limit=1,scores={TickTime=0}] CustomName set value "5"
data modify entity @e[type=armor_stand,nbt={Tags:["five_sec_timer"]},limit=1,scores={TickTime=20}] CustomName set value "4"
data modify entity @e[type=armor_stand,nbt={Tags:["five_sec_timer"]},limit=1,scores={TickTime=40}] CustomName set value "3"
data modify entity @e[type=armor_stand,nbt={Tags:["five_sec_timer"]},limit=1,scores={TickTime=60}] CustomName set value "2"
data modify entity @e[type=armor_stand,nbt={Tags:["five_sec_timer"]},limit=1,scores={TickTime=80}] CustomName set value "1"
kill @e[type=armor_stand,nbt={Tags:["five_sec_timer"]},scores={TickTime=100}]


###Menu options enabling
#scoreboard players enable @a whg.mainmenu

###Menu options detecting
#execute as @a if score @s whg.mainmenu matches 1.. run function milesdp:mainmenu
