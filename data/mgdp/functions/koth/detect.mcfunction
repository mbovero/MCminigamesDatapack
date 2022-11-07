###KOTH detect button press
execute if block 8 -59 -631 stone_button[powered=true] run scoreboard players add buttontick KOTHstart 1
#start timer on one button press
execute if score buttontick KOTHstart matches 18 run summon armor_stand 8 -58.15 -630.25 {Tags:["ten_sec_timer"],Invisible:1,Invulnerable:1,NoGravity:1,Marker:1,CustomNameVisible:1b,CustomName:"10"}
execute if score buttontick KOTHstart matches 18 run tellraw @a[distance=..100] {"text":"King of the Hill is starting . . .","bold":true,"color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Press the button again to stop the queue","italic":true,"color":"gray"}]}}
execute if score buttontick KOTHstart matches 18 run tag @a[x=10,y=-62,z=-625,dx=-4,dy=6,dz=-4] add KOTH_queued
execute if score buttontick KOTHstart matches 18 run title @a[tag=KOTH_queued] title {"text":"Queued","bold":true,"color":"dark_green"}
execute if score buttontick KOTHstart matches 18 run playsound minecraft:block.beacon.activate master @a[distance=..100] 8 -58 -627 99999999999999 1.3
    #count down display
    scoreboard players add @e[type=armor_stand,nbt={Tags:["ten_sec_timer"]}] TickTime 1
        data modify entity @e[type=armor_stand,nbt={Tags:["ten_sec_timer"]},limit=1,scores={TickTime=0}] CustomName set value "10"
        data modify entity @e[type=armor_stand,nbt={Tags:["ten_sec_timer"]},limit=1,scores={TickTime=20}] CustomName set value "9"
        data modify entity @e[type=armor_stand,nbt={Tags:["ten_sec_timer"]},limit=1,scores={TickTime=40}] CustomName set value "8"
        data modify entity @e[type=armor_stand,nbt={Tags:["ten_sec_timer"]},limit=1,scores={TickTime=60}] CustomName set value "7"
        data modify entity @e[type=armor_stand,nbt={Tags:["ten_sec_timer"]},limit=1,scores={TickTime=80}] CustomName set value "6"
        data modify entity @e[type=armor_stand,nbt={Tags:["ten_sec_timer"]},limit=1,scores={TickTime=100}] CustomName set value "5"
        execute if entity @e[type=armor_stand,nbt={Tags:["ten_sec_timer"]},limit=1,scores={TickTime=100}] run playsound block.note_block.bit master @a[distance=..100] 8 -58 -627 99999999999999 1.2
        data modify entity @e[type=armor_stand,nbt={Tags:["ten_sec_timer"]},limit=1,scores={TickTime=120}] CustomName set value "4"
        execute if entity @e[type=armor_stand,nbt={Tags:["ten_sec_timer"]},limit=1,scores={TickTime=120}] run playsound block.note_block.bit master @a[distance=..100] 8 -58 -627 99999999999999 1.4
        data modify entity @e[type=armor_stand,nbt={Tags:["ten_sec_timer"]},limit=1,scores={TickTime=140}] CustomName set value "3"
        execute if entity @e[type=armor_stand,nbt={Tags:["ten_sec_timer"]},limit=1,scores={TickTime=140}] run playsound block.note_block.bit master @a[distance=..100] 8 -58 -627 99999999999999 1.6
        data modify entity @e[type=armor_stand,nbt={Tags:["ten_sec_timer"]},limit=1,scores={TickTime=160}] CustomName set value "2"
        execute if entity @e[type=armor_stand,nbt={Tags:["ten_sec_timer"]},limit=1,scores={TickTime=160}] run playsound block.note_block.bit master @a[distance=..100] 8 -58 -627 99999999999999 1.8
        data modify entity @e[type=armor_stand,nbt={Tags:["ten_sec_timer"]},limit=1,scores={TickTime=180}] CustomName set value "1"
        execute if entity @e[type=armor_stand,nbt={Tags:["ten_sec_timer"]},limit=1,scores={TickTime=180}] run playsound block.note_block.bit master @a[distance=..100] 8 -58 -627 99999999999999 2
        execute if entity @e[type=armor_stand,nbt={Tags:["ten_sec_timer"]},limit=1,scores={TickTime=180}] run particle end_rod 8 -58 -627 .75 .1 .75 0 50 normal
        execute if entity @e[type=armor_stand,nbt={Tags:["ten_sec_timer"]},limit=1,scores={TickTime=180}] run particle glow 8 -58 -627 .75 .1 .75 0 50 normal
    #start game at end of timer
    execute if entity @e[type=armor_stand,nbt={Tags:["ten_sec_timer"]},limit=1,scores={TickTime=200}] run function mgdp:koth/start
    execute if entity @e[type=armor_stand,nbt={Tags:["ten_sec_timer"]},limit=1,scores={TickTime=200}] run scoreboard players set KOTH BooleanVariables 1 
    #remove KOTH queue button
    execute if entity @e[type=armor_stand,nbt={Tags:["ten_sec_timer"]},limit=1,scores={TickTime=200}] run setblock 8 -59 -631 air
        ##############disable all other game buttons too?
    execute if entity @e[type=armor_stand,nbt={Tags:["ten_sec_timer"]},limit=1,scores={TickTime=200}] run scoreboard players set buttontick KOTHstart 0
    #kill timer display
    kill @e[type=armor_stand,nbt={Tags:["ten_sec_timer"]},scores={TickTime=200..}]
#end timer on two button presses
execute if score buttontick KOTHstart matches 25.. run kill @e[type=armor_stand,nbt={Tags:["ten_sec_timer"]},limit=1,scores={TickTime=0..}]
execute if score buttontick KOTHstart matches 25.. run tellraw @a[distance=..100] {"text":"KOTH queue interrupted","italic":true,"color":"red"}
execute if score buttontick KOTHstart matches 25.. run tag @a remove KOTH_queued 
execute if score buttontick KOTHstart matches 25.. run setblock 8 -59 -631 stone_button[facing=south] replace
execute if score buttontick KOTHstart matches 25.. run playsound minecraft:block.beacon.deactivate master @a[distance=..100] 8 -58 -627 99999999999999 1.3
execute if score buttontick KOTHstart matches 25.. run scoreboard players set buttontick KOTHstart 0
