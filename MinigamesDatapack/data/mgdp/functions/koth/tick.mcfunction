###Hill
execute as @a at @s if block ~ ~-0.3 ~ gold_block run scoreboard players add @s Score 1
execute as @a at @s if block ~ ~-0.3 ~ gold_block run effect give @s glowing 1 255 true
execute as @a at @s if block ~ ~-1.9 ~ gold_block run scoreboard players add @s Score 1
execute as @a at @s if block ~ ~-1.9 ~ gold_block run effect give @s glowing 1 255 true

###Void
execute as @a at @s if entity @s[y=0,dy=-5] run kill @s

###No Hunger
execute as @a[nbt={foodLevel:19}] run effect give @s minecraft:saturation 1 1 true
execute as @a[nbt={foodLevel:17}] run effect give @s minecraft:saturation 1 1 true


###Game Timer
#count down display
scoreboard players add @e[type=armor_stand,nbt={Tags:["five_min_timer"]}] TickTime 1
    execute if entity @e[type=armor_stand,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=0}] run tellraw @a "Game ends in 5 mins"
    execute if entity @e[type=armor_stand,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=1200}] run tellraw @a "Game ends in 4 mins"
    execute if entity @e[type=armor_stand,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=2400}] run tellraw @a "Game ends in 3 mins"
    execute if entity @e[type=armor_stand,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=3600}] run tellraw @a "Game ends in 2 mins"
    execute if entity @e[type=armor_stand,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=4800}] run tellraw @a "Game ends in 1 min"
    execute if entity @e[type=armor_stand,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=5400}] run tellraw @a "Game ends in 30 seconds!"
    execute if entity @e[type=armor_stand,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=5700}] run tellraw @a "Game ends in 15 seconds!"
    execute if entity @e[type=armor_stand,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=5900}] run tellraw @a "5"
    execute if entity @e[type=armor_stand,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=5900}] run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 9999999999999999999999999 2
    execute if entity @e[type=armor_stand,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=5920}] run tellraw @a "4"
    execute if entity @e[type=armor_stand,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=5920}] run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 9999999999999999999999999 1.8
    execute if entity @e[type=armor_stand,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=5940}] run tellraw @a "3"
    execute if entity @e[type=armor_stand,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=5940}] run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 9999999999999999999999999 1.6
    execute if entity @e[type=armor_stand,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=5960}] run tellraw @a "2"
    execute if entity @e[type=armor_stand,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=5960}] run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 9999999999999999999999999 1.4
    execute if entity @e[type=armor_stand,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=5980}] run tellraw @a "1"
    execute if entity @e[type=armor_stand,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=5980}] run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 9999999999999999999999999 .1
#end game at end of timer
execute if entity @e[type=armor_stand,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=6000}] run scoreboard players set bool KOTHend 1
execute if score bool KOTHend matches 1 run function mgdp:koth/end




###Random Spawns
team empty 1
team empty 2
team empty 3
team empty 4
team join 1 @r[team=]
team join 2 @r[team=]
team join 3 @r[team=]
team join 4 @r[team=]
team join 1 @r[team=]
team join 2 @r[team=]
team join 3 @r[team=]
team join 4 @r[team=]
execute as @a[team=1] run spawnpoint @s 8 11 -1194
execute as @a[team=2] run spawnpoint @s 2 11 -1200
execute as @a[team=3] run spawnpoint @s 8 11 -1206
execute as @a[team=4] run spawnpoint @s 14 11 -1200



###Check Kits
#Striker
    execute as @e[type=player,scores={Deaths=1..}] if score @s KOTHkit matches 10 run function mgdp:koth/kits/striker

#Tank
    execute as @e[type=player,scores={Deaths=1..}] if score @s KOTHkit matches 20 run function mgdp:koth/kits/tank

#Archer
    execute as @e[type=player,scores={Deaths=1..}] if score @s KOTHkit matches 30 run function mgdp:koth/kits/archer

#Warper
    execute as @e[type=player,scores={Deaths=1..}] if score @s KOTHkit matches 40 run function mgdp:koth/kits/warper

#Fisherman
    execute as @e[type=player,scores={Deaths=1..}] if score @s KOTHkit matches 50 run function mgdp:koth/kits/fisherman




###Detect respawn
#execute if score bool GameEnd matches 0 as @e[type=player,scores={Deaths=1..}] run command
execute if score bool GameEnd matches 0 run scoreboard players reset @e[type=player,scores={Deaths=1..}] Deaths
