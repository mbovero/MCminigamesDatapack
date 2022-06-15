###Hill
execute as @a at @s if block ~ ~-0.9 ~ gold_block run scoreboard players add @s Score 1
execute as @a at @s if block ~ ~-0.9 ~ gold_block run effect give @s glowing 1 255 true
execute as @a at @s if block ~ ~-1.9 ~ gold_block run scoreboard players add @s Score 1
execute as @a at @s if block ~ ~-1.9 ~ gold_block run effect give @s glowing 1 255 true

###Void
execute as @a at @s if entity @s[y=0,dy=-5] run gamerule showDeathMessages true
execute as @a at @s if entity @s[y=0,dy=-5] run kill @s
execute as @a at @s if entity @s[y=0,dy=-5] run gamerule showDeathMessages false

###No Hunger
execute as @a[nbt={foodLevel:19}] run effect give @s saturation 1 1 true
execute as @a[nbt={foodLevel:17}] run effect give @s saturation 1 1 true

###Prevent Cheating/Collaboration
kill @e[type=item]


###Game Timer
#count down display
scoreboard players add @e[type=armor_stand,nbt={Tags:["five_min_timer"]}] TickTime 1
    execute if entity @e[type=armor_stand,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=1}] run tellraw @a ["",{"text":"Game ends in ","bold":true},{"text":"5","bold":true,"color":"gold"},{"text":" mins","bold":true}]
    execute if entity @e[type=armor_stand,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=1200}] run tellraw @a ["",{"text":"Game ends in ","bold":true},{"text":"4","bold":true,"color":"gold"},{"text":" mins","bold":true}]
    execute if entity @e[type=armor_stand,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=2400}] run tellraw @a ["",{"text":"Game ends in ","bold":true},{"text":"3","bold":true,"color":"gold"},{"text":" mins","bold":true}]
    execute if entity @e[type=armor_stand,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=3600}] run tellraw @a ["",{"text":"Game ends in ","bold":true},{"text":"2","bold":true,"color":"gold"},{"text":" mins","bold":true}]
    execute if entity @e[type=armor_stand,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=4800}] run tellraw @a ["",{"text":"Game ends in ","bold":true},{"text":"1","bold":true,"color":"dark_red"},{"text":" min","bold":true}]
    execute if entity @e[type=armor_stand,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=5400}] run tellraw @a ["",{"text":"Game ends in ","bold":true},{"text":"30","bold":true,"color":"dark_red"},{"text":" seconds","bold":true}]
    execute if entity @e[type=armor_stand,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=5700}] run tellraw @a ["",{"text":"Game ends in ","bold":true},{"text":"15","bold":true,"color":"dark_red"},{"text":" seconds!","bold":true}]
    execute if entity @e[type=armor_stand,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=5900}] run tellraw @a {"text":"5","bold":true,"color":"red"}
    execute if entity @e[type=armor_stand,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=5900}] run playsound block.note_block.chime master @a ~ ~ ~ 9999999999999999999999999 2
    execute if entity @e[type=armor_stand,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=5920}] run tellraw @a {"text":"4","bold":true,"color":"red"}
    execute if entity @e[type=armor_stand,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=5920}] run playsound block.note_block.chime master @a ~ ~ ~ 9999999999999999999999999 1.8
    execute if entity @e[type=armor_stand,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=5940}] run tellraw @a {"text":"3","bold":true,"color":"red"}
    execute if entity @e[type=armor_stand,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=5940}] run playsound block.note_block.chime master @a ~ ~ ~ 9999999999999999999999999 1.6
    execute if entity @e[type=armor_stand,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=5960}] run tellraw @a {"text":"2","bold":true,"color":"red"}
    execute if entity @e[type=armor_stand,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=5960}] run playsound block.note_block.chime master @a ~ ~ ~ 9999999999999999999999999 1.4
    execute if entity @e[type=armor_stand,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=5980}] run tellraw @a {"text":"1","bold":true,"color":"red"}
    execute if entity @e[type=armor_stand,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=5980}] run playsound block.note_block.chime master @a ~ ~ ~ 9999999999999999999999999 .1
#end game at end of timer
execute if entity @e[type=armor_stand,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=6000..}] run scoreboard players set bool KOTHend 1
kill @e[type=armor_stand,nbt={Tags:["five_min_timer"]},scores={TickTime=6000..}]
execute if score bool KOTHend matches 1 run function mgdp:koth/end


###Random Spawns
spreadplayers 8 -1200 3 200 under 11 false @e[tag=spawn]
execute at @e[tag=spawn] as @a[tag=queued] run spawnpoint



#####Kits
#clear on death
execute as @e[type=player,scores={Deaths=1..},tag=queued] as @s run clear @s

##Striker
    execute as @e[type=player,scores={Deaths=1..,KOTHkit=10},tag=queued] as @s run function mgdp:koth/kits/10striker
    #kill super reward
    execute as @a[scores={KOTHkit=10,KillsSuper=5..},tag=queued] as @s run give @s minecraft:potion{Potion:"minecraft:water",CustomPotionEffects:[{Id:11,Amplifier:2,Duration:200}],display:{Name:'"Super Resistance Pot"'}}
    execute as @a[scores={KOTHkit=10,KillsSuper=5..},tag=queued] as @s run playsound minecraft:block.anvil.use master @a ~ ~ ~ 9999999 .7
    execute as @a[scores={KOTHkit=10,KillsSuper=5..},tag=queued] as @s run scoreboard players set @s KillsSuper 0


##Tank
    execute as @e[type=player,scores={Deaths=1..,KOTHkit=20},tag=queued] as @s run function mgdp:koth/kits/20tank
    #kill reward
    execute as @a[scores={KOTHkit=20,Kills=3..},tag=queued] as @s run give @s shield{Damage:250} 1
    execute as @a[scores={KOTHkit=20,Kills=3..},tag=queued] as @s run scoreboard players set @s Kills 0
    #kill super reward
    execute as @a[scores={KOTHkit=20,KillsSuper=5..},tag=queued] as @s run give @s minecraft:potion{Potion:"minecraft:water",CustomPotionEffects:[{Id:10,Amplifier:3,Duration:200}],display:{Name:'"Super Regen Pot"'}}
    execute as @a[scores={KOTHkit=20,KillsSuper=5..},tag=queued] as @s run playsound minecraft:entity.witch.drink master @a ~ ~ ~ 9999999 .7
    execute as @a[scores={KOTHkit=20,KillsSuper=5..},tag=queued] as @s run scoreboard players set @s KillsSuper 0

##Archer
    execute as @e[type=player,scores={Deaths=1..,KOTHkit=30},tag=queued] as @s run function mgdp:koth/kits/30archer
    #kill reward
    execute as @a[scores={KOTHkit=30,Kills=3..},tag=queued] as @s run give @s arrow 10
    execute as @a[scores={KOTHkit=30,Kills=3..},tag=queued] as @s run scoreboard players set @s Kills 0
    #kill super reward
    execute as @a[scores={KOTHkit=30,KillsSuper=5..},tag=queued] as @s run give @s bow{Damage:379,Enchantments:[{id:"punch",lvl:3},{id:"power",lvl:5}],display:{Name:'"Super Bow"'}}
    execute as @a[scores={KOTHkit=30,KillsSuper=5..},tag=queued] as @s run playsound minecraft:entity.villager.work_fletcher master @a ~ ~ ~ 9999999 .7
    execute as @a[scores={KOTHkit=30,KillsSuper=5..},tag=queued] as @s run scoreboard players set @s KillsSuper 0

##Warper
    execute as @e[type=player,scores={Deaths=1..,KOTHkit=40},tag=queued] as @s run function mgdp:koth/kits/40warper
    #kill reward
    execute as @a[scores={KOTHkit=40,Kills=1..},tag=queued] as @s run give @s ender_pearl{display:{Name:'"Tp Random Player"'}}
    execute as @a[scores={KOTHkit=40,Kills=1..},tag=queued] as @s run scoreboard players set @s Kills 0
    #kill reward 2
    execute as @a[scores={KOTHkit=40,Kills2=3..},tag=queued] as @s run give @s ender_pearl{display:{Name:'"Randomize Player Locations"'}}
    execute as @a[scores={KOTHkit=40,Kills2=3..},tag=queued] as @s run scoreboard players set @s Kills2 0
    #kill super reward
    execute as @a[scores={KOTHkit=40,KillsSuper=5..},tag=queued] as @s run give @s ender_pearl{display:{Name:'"Tp Highest Player"'},Enchantments:[{id:"",lvl:1}]}
    execute as @a[scores={KOTHkit=40,KillsSuper=5..},tag=queued] as @s run playsound minecraft:entity.enderman.death master @a ~ ~ ~ 9999999 .7
    execute as @a[scores={KOTHkit=40,KillsSuper=5..},tag=queued] as @s run scoreboard players set @s KillsSuper 0
    #tp @r pearl
    execute if entity @e[type=minecraft:ender_pearl,nbt={Item:{id:"minecraft:ender_pearl",Count:1b,tag:{display:{Name:'"Tp Random Player"'}}}},limit=1] as @a[scores={KOTHkit=40,PearlUsed=1},tag=queued] at @s run tag @a[distance=0.5..,tag=queued] add WarperTarget
    execute if entity @e[type=minecraft:ender_pearl,nbt={Item:{id:"minecraft:ender_pearl",Count:1b,tag:{display:{Name:'"Tp Random Player"'}}}},limit=1] as @a[scores={KOTHkit=40,PearlUsed=1},tag=queued] run tp @r[tag=WarperTarget]
    execute if entity @e[type=minecraft:ender_pearl,nbt={Item:{id:"minecraft:ender_pearl",Count:1b,tag:{display:{Name:'"Tp Random Player"'}}}},limit=1] as @a[scores={KOTHkit=40,PearlUsed=1},tag=queued] run tag @a remove WarperTarget
    execute if entity @e[type=minecraft:ender_pearl,nbt={Item:{id:"minecraft:ender_pearl",Count:1b,tag:{display:{Name:'"Tp Random Player"'}}}},limit=1] run kill @e[type=minecraft:ender_pearl,nbt={Item:{id:"minecraft:ender_pearl",Count:1b,tag:{display:{Name:'"Tp Random Player"'}}}}]
    #randomize player locations pearl
    execute if entity @e[type=minecraft:ender_pearl,nbt={Item:{id:"minecraft:ender_pearl",Count:1b,tag:{display:{Name:'"Randomize Player Locations"'}}}},limit=1] as @a[scores={KOTHkit=40,PearlUsed=1},tag=queued] at @s run spreadplayers ~ ~ 7 100 false @a[tag=queued]
    execute if entity @e[type=minecraft:ender_pearl,nbt={Item:{id:"minecraft:ender_pearl",Count:1b,tag:{display:{Name:'"Randomize Player Locations"'}}}},limit=1] run kill @e[type=minecraft:ender_pearl,nbt={Item:{id:"minecraft:ender_pearl",Count:1b,tag:{display:{Name:'"Randomize Player Locations"'}}}}]
    #Tp Highest Player pearl
    execute if entity @e[type=minecraft:ender_pearl,nbt={Item:{id:"minecraft:ender_pearl",Count:1b,tag:{display:{Name:'"Tp Highest Player"'}}}},limit=1] as @a[scores={KOTHkit=40,PearlUsed=1},tag=queued] run execute as @a[tag=queued] run execute store result score @s ylevel run data get entity @s Pos[1]
    execute if entity @e[type=minecraft:ender_pearl,nbt={Item:{id:"minecraft:ender_pearl",Count:1b,tag:{display:{Name:'"Tp Highest Player"'}}}},limit=1] as @a[scores={KOTHkit=40,PearlUsed=1},tag=queued] run scoreboard players set max ylevel -1000
    execute if entity @e[type=minecraft:ender_pearl,nbt={Item:{id:"minecraft:ender_pearl",Count:1b,tag:{display:{Name:'"Tp Highest Player"'}}}},limit=1] as @a[scores={KOTHkit=40,PearlUsed=1},tag=queued] run scoreboard players operation max ylevel > @a[tag=queued] ylevel
    execute if entity @e[type=minecraft:ender_pearl,nbt={Item:{id:"minecraft:ender_pearl",Count:1b,tag:{display:{Name:'"Tp Highest Player"'}}}},limit=1] as @a[scores={KOTHkit=40,PearlUsed=1},tag=queued] run execute as @a[tag=queued] if score @s ylevel = max ylevel run tag @s add WarperTarget
    execute if entity @e[type=minecraft:ender_pearl,nbt={Item:{id:"minecraft:ender_pearl",Count:1b,tag:{display:{Name:'"Tp Highest Player"'}}}},limit=1] as @a[scores={KOTHkit=40,PearlUsed=1},tag=queued] run tp @p[tag=WarperTarget]
    execute if entity @e[type=minecraft:ender_pearl,nbt={Item:{id:"minecraft:ender_pearl",Count:1b,tag:{display:{Name:'"Tp Highest Player"'}}}},limit=1] as @a[scores={KOTHkit=40,PearlUsed=1},tag=queued] run tag @a remove WarperTarget 
    execute if entity @e[type=minecraft:ender_pearl,nbt={Item:{id:"minecraft:ender_pearl",Count:1b,tag:{display:{Name:'"Tp Highest Player"'}}}},limit=1] run kill @e[type=minecraft:ender_pearl,nbt={Item:{id:"minecraft:ender_pearl",Count:1b,tag:{display:{Name:'"Tp Highest Player"'}}}}]
    #reset pearl detection
    execute as @a[scores={KOTHkit=40,PearlUsed=1},tag=queued] run scoreboard players reset @s PearlUsed

##Fisherman
    execute as @e[type=player,scores={Deaths=1..,KOTHkit=50},tag=queued] as @s run function mgdp:koth/kits/50fisherman
    #kill super reward
    execute as @a[scores={KOTHkit=50,KillsSuper=5..},tag=queued] as @s run give @s golden_chestplate{display:{Name:'"Super Pufferfish Chestplate"'},Enchantments:[{id:"thorns",lvl:20}],Damage:102}
    execute as @a[scores={KOTHkit=50,KillsSuper=5..},tag=queued] as @s run playsound minecraft:entity.puffer_fish.blow_up master @a ~ ~ ~ 9999999 .7
    execute as @a[scores={KOTHkit=50,KillsSuper=5..},tag=queued] as @s run scoreboard players set @s KillsSuper 0





###Reset detection for respawn
#reset kill streak
scoreboard players reset @e[type=player,tag=queued,scores={Deaths=1..}] KillsSuper
#reset deaths
scoreboard players reset @e[type=player,tag=queued,scores={Deaths=1..}] Deaths
