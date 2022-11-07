###Hill
execute if score KOTHdoublepoints BooleanVariables matches 0 as @a[tag=KOTH_queued] at @s if block ~ ~-0.9 ~ gold_block run scoreboard players add @s KOTHscore 1
execute if score KOTHdoublepoints BooleanVariables matches 0 as @a[tag=KOTH_queued] at @s if block ~ ~-0.9 ~ gold_block run effect give @s glowing 1 255 true
execute if score KOTHdoublepoints BooleanVariables matches 0 as @a[tag=KOTH_queued] at @s if block ~ ~-1.9 ~ gold_block run scoreboard players add @s KOTHscore 1
execute if score KOTHdoublepoints BooleanVariables matches 0 as @a[tag=KOTH_queued] at @s if block ~ ~-1.9 ~ gold_block run effect give @s glowing 1 255 true
#double points
execute if score KOTHdoublepoints BooleanVariables matches 1 as @a[tag=KOTH_queued] at @s if block ~ ~-0.9 ~ gold_block run scoreboard players add @s KOTHscore 2
execute if score KOTHdoublepoints BooleanVariables matches 1 as @a[tag=KOTH_queued] at @s if block ~ ~-0.9 ~ gold_block run effect give @s glowing 1 255 true
execute if score KOTHdoublepoints BooleanVariables matches 1 as @a[tag=KOTH_queued] at @s if block ~ ~-1.9 ~ gold_block run scoreboard players add @s KOTHscore 2
execute if score KOTHdoublepoints BooleanVariables matches 1 as @a[tag=KOTH_queued] at @s if block ~ ~-1.9 ~ gold_block run effect give @s glowing 1 255 true

###Void
execute as @a[tag=KOTH_queued] at @s if entity @s[y=0,dy=-5] run gamerule showDeathMessages false
execute as @a[tag=KOTH_queued] at @s if entity @s[y=0,dy=-5] run kill @s
execute as @a[tag=KOTH_queued] at @s if entity @s[y=0,dy=-5] run gamerule showDeathMessages true

###No Hunger
execute as @a[nbt={foodLevel:19},tag=KOTH_queued] run effect give @s saturation 1 1 true
execute as @a[nbt={foodLevel:17},tag=KOTH_queued] run effect give @s saturation 1 1 true

###Super Kills xp Bar Display
execute as @a[tag=KOTH_queued,scores={KOTHkillssuper=0}] run experience set @s 0 levels
execute as @a[tag=KOTH_queued,scores={KOTHkillssuper=0}] run experience set @s 0 points
execute as @a[tag=KOTH_queued,scores={KOTHkillssuper=1}] run experience set @s 1 levels
execute as @a[tag=KOTH_queued,scores={KOTHkillssuper=1}] run experience set @s 1 points
execute as @a[tag=KOTH_queued,scores={KOTHkillssuper=2}] run experience set @s 2 levels
execute as @a[tag=KOTH_queued,scores={KOTHkillssuper=2}] run experience set @s 4 points
execute as @a[tag=KOTH_queued,scores={KOTHkillssuper=3}] run experience set @s 3 levels
execute as @a[tag=KOTH_queued,scores={KOTHkillssuper=3}] run experience set @s 8 points
execute as @a[tag=KOTH_queued,scores={KOTHkillssuper=4}] run experience set @s 4 levels
execute as @a[tag=KOTH_queued,scores={KOTHkillssuper=4}] run experience set @s 13 points
execute as @a[tag=KOTH_queued,scores={KOTHkillssuper=5}] run experience set @s 5 levels
execute as @a[tag=KOTH_queued,scores={KOTHkillssuper=5}] run experience set @s 0 points


###Ability Reset Timers
#Timer
scoreboard players add @e[type=area_effect_cloud,nbt={Tags:["reset_timer"]}] TickTime 1
#Reset sniper camoflauge
execute at @e[type=area_effect_cloud,nbt={Tags:["reset_timer","camoflauge"]},limit=1,scores={TickTime=600..}] run function mgdp:koth/kits/31sniper/resetcamoflauge


###Game Timer
#count down display
scoreboard players add @e[type=area_effect_cloud,nbt={Tags:["five_min_timer"]}] TickTime 1
    execute if entity @e[type=area_effect_cloud,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=1}] run tellraw @a ["",{"text":"Game ends in ","bold":true},{"text":"5","bold":true,"color":"gold"},{"text":" mins","bold":true}]
    execute if entity @e[type=area_effect_cloud,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=1200}] run tellraw @a[tag=KOTH_queued] ["",{"text":"Game ends in ","bold":true},{"text":"4","bold":true,"color":"gold"},{"text":" mins","bold":true}]
    execute if entity @e[type=area_effect_cloud,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=2400}] run tellraw @a[tag=KOTH_queued] ["",{"text":"Game ends in ","bold":true},{"text":"3","bold":true,"color":"gold"},{"text":" mins","bold":true}]
    execute if entity @e[type=area_effect_cloud,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=3600}] run tellraw @a[tag=KOTH_queued] ["",{"text":"Game ends in ","bold":true},{"text":"2","bold":true,"color":"gold"},{"text":" mins","bold":true}]
    execute if entity @e[type=area_effect_cloud,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=4800}] run tellraw @a[tag=KOTH_queued] ["",{"text":"Game ends in ","bold":true},{"text":"1","bold":true,"color":"dark_red"},{"text":" min","bold":true}]
    execute if entity @e[type=area_effect_cloud,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=5400}] run tellraw @a[tag=KOTH_queued] ["",{"text":"Game ends in ","bold":true},{"text":"30","bold":true,"color":"dark_red"},{"text":" seconds","bold":true}]
    execute if entity @e[type=area_effect_cloud,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=5400}] run scoreboard players set KOTHdoublepoints BooleanVariables 1
    execute if entity @e[type=area_effect_cloud,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=5400}] run title @a[tag=KOTH_queued] actionbar {"text":"DOUBLE POINTS ACTIVATED","bold":true,"color":"dark_red"}
    execute if entity @e[type=area_effect_cloud,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=5400}] run playsound block.ender_chest.open master @a[tag=KOTH_queued] ~ ~ ~ 9999999999999999999999999 .1
    execute if entity @e[type=area_effect_cloud,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=5700}] run tellraw @a[tag=KOTH_queued] ["",{"text":"Game ends in ","bold":true},{"text":"15","bold":true,"color":"dark_red"},{"text":" seconds!","bold":true}]
    execute if entity @e[type=area_effect_cloud,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=5900}] run tellraw @a[tag=KOTH_queued] {"text":"5","bold":true,"color":"red"}
    execute if entity @e[type=area_effect_cloud,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=5900}] run playsound block.note_block.chime master @a[tag=KOTH_queued] ~ ~ ~ 9999999999999999999999999 2
    execute if entity @e[type=area_effect_cloud,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=5920}] run tellraw @a[tag=KOTH_queued] {"text":"4","bold":true,"color":"red"}
    execute if entity @e[type=area_effect_cloud,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=5920}] run playsound block.note_block.chime master @a[tag=KOTH_queued] ~ ~ ~ 9999999999999999999999999 1.8
    execute if entity @e[type=area_effect_cloud,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=5940}] run tellraw @a[tag=KOTH_queued] {"text":"3","bold":true,"color":"red"}
    execute if entity @e[type=area_effect_cloud,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=5940}] run playsound block.note_block.chime master @a[tag=KOTH_queued] ~ ~ ~ 9999999999999999999999999 1.6
    execute if entity @e[type=area_effect_cloud,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=5960}] run tellraw @a[tag=KOTH_queued] {"text":"2","bold":true,"color":"red"}
    execute if entity @e[type=area_effect_cloud,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=5960}] run playsound block.note_block.chime master @a[tag=KOTH_queued] ~ ~ ~ 9999999999999999999999999 1.4
    execute if entity @e[type=area_effect_cloud,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=5980}] run tellraw @a[tag=KOTH_queued] {"text":"1","bold":true,"color":"red"}
    execute if entity @e[type=area_effect_cloud,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=5980}] run playsound block.note_block.chime master @a[tag=KOTH_queued] ~ ~ ~ 9999999999999999999999999 .1
#end game at end of timer
execute if entity @e[type=area_effect_cloud,nbt={Tags:["five_min_timer"]},limit=1,scores={TickTime=6000..}] run scoreboard players set KOTHend BooleanVariables 1
kill @e[type=area_effect_cloud,nbt={Tags:["five_min_timer"]},scores={TickTime=6000..}]
execute if score KOTHend BooleanVariables matches 1 run function mgdp:koth/end


###Random Spawns
execute if score map KOTHmap matches 0 run spreadplayers 8 -1200 3 100 under 11 false @e[type=area_effect_cloud,tag=spawn]
execute if score map KOTHmap matches 1 run spreadplayers -900 0 3 100 under 12 false @e[type=area_effect_cloud,tag=spawn]
execute if score map KOTHmap matches 2 run spreadplayers -750 -1651 3 100 under 5 false @e[type=area_effect_cloud,tag=spawn]
execute if score map KOTHmap matches 3 run spreadplayers -900 -600 3 100 under 11 false @e[type=area_effect_cloud,tag=spawn]


execute at @e[type=area_effect_cloud,tag=spawn] as @a[tag=KOTH_queued] run spawnpoint



#####Kits
#clear on death
execute as @e[type=player,scores={KOTHdeaths=1..},tag=KOTH_queued] as @s run clear @s

##Striker
    execute as @e[type=player,scores={KOTHdeaths=1..,KOTHkit=10},tag=KOTH_queued] as @s run function mgdp:koth/kits/10striker/items
    #kill reward
    execute as @a[scores={KOTHkit=10,KOTHkills=3..},tag=KOTH_queued] as @s run give @s splash_potion{display:{Name:'{"text":"Slowness Splash Pot"}'},CustomPotionEffects:[{Id:2,Amplifier:3,Duration:400}],CustomPotionColor:5855577} 1
    execute as @a[scores={KOTHkit=10,KOTHkills=3..},tag=KOTH_queued] as @s run scoreboard players set @s KOTHkills 0
    #kill super reward
    execute as @a[scores={KOTHkit=10,KOTHkillssuper=5..},tag=KOTH_queued] as @s run give @s minecraft:potion{Potion:"minecraft:water",CustomPotionEffects:[{Id:11,Amplifier:2,Duration:200}],display:{Name:'"Super Resistance Pot"'}}
    execute as @a[scores={KOTHkit=10,KOTHkillssuper=5..},tag=KOTH_queued] as @s run playsound minecraft:block.anvil.use master @a ~ ~ ~ 9999999 .7
    execute as @a[scores={KOTHkit=10,KOTHkillssuper=5..},tag=KOTH_queued] as @s run scoreboard players set @s KOTHkillssuper 0

##Orc
    execute as @e[type=player,scores={KOTHdeaths=1..,KOTHkit=11},tag=KOTH_queued] as @s run function mgdp:koth/kits/11orc/items
                ####### What if we remove the regen pot, replace it with the resistance (and maybe strength still?), and replace the kill reward 2 with a goat horn that summons some husk/skeleton minions when used?
    #kill reward
    execute as @a[scores={KOTHkit=11,KOTHkills=3..},tag=KOTH_queued] as @s run give @s minecraft:potion{CustomPotionEffects:[{Id:10,Amplifier:3,Duration:400,Ambient:1b},{Id:5,Amplifier:1,Duration:400,Ambient:1b}],CustomPotionColor:11299688,display:{Name:'"Orc Boost Pot"'}}
    execute as @a[scores={KOTHkit=11,KOTHkills=3..},tag=KOTH_queued] as @s run scoreboard players set @s KOTHkills 0
    #kill reward 2
    execute as @a[scores={KOTHkit=11,KOTHkills2=5..},tag=KOTH_queued] as @s run give @s minecraft:potion{CustomPotionEffects:[{Id:11,Duration:600,Ambient:1b}],CustomPotionColor:9131600,display:{Name:'"Orc Resistance Pot"'}}
    execute as @a[scores={KOTHkit=11,KOTHkills2=5..},tag=KOTH_queued] as @s run scoreboard players set @s KOTHkills2 0
    #kill super reward
    #execute as @a[scores={KOTHkit=11,KOTHkillssuper=5..},tag=KOTH_queued] as @s 
        #trying to make it so the item can be used 3 times to groundpound around them


##Knight
    execute as @e[type=player,scores={KOTHdeaths=1..,KOTHkit=20},tag=KOTH_queued] as @s run function mgdp:koth/kits/20knight/items
    #kill reward
    execute as @a[scores={KOTHkit=20,KOTHkills=3..},tag=KOTH_queued] as @s run item replace entity @s weapon.offhand with shield{Damage:265}
    execute as @a[scores={KOTHkit=20,KOTHkills=3..},tag=KOTH_queued] as @s run scoreboard players set @s KOTHkills 0
    #kill reward 2
    execute as @a[scores={KOTHkit=20,KOTHkills2=5..},tag=KOTH_queued] as @s run give @s minecraft:potion{Potion:"minecraft:water",CustomPotionEffects:[{Id:5,Amplifier:1,Duration:400}],display:{Name:'"Knight Strength Pot"'}}
    execute as @a[scores={KOTHkit=20,KOTHkills2=5..},tag=KOTH_queued] as @s run scoreboard players set @s KOTHkills2 0
    #kill super reward
    execute as @a[scores={KOTHkit=20,KOTHkillssuper=5..},tag=KOTH_queued] as @s run give @s minecraft:potion{Potion:"minecraft:water",CustomPotionEffects:[{Id:10,Amplifier:3,Duration:200}],display:{Name:'"Super Regen Pot"'}}
    execute as @a[scores={KOTHkit=20,KOTHkillssuper=5..},tag=KOTH_queued] as @s run playsound minecraft:entity.witch.drink master @a ~ ~ ~ 9999999 .7
    execute as @a[scores={KOTHkit=20,KOTHkillssuper=5..},tag=KOTH_queued] as @s run scoreboard players set @s KOTHkillssuper 0

##Archer
    execute as @e[type=player,scores={KOTHdeaths=1..,KOTHkit=30},tag=KOTH_queued] as @s run function mgdp:koth/kits/30archer/items
    #kill reward
    execute as @a[scores={KOTHkit=30,KOTHkills=3..},tag=KOTH_queued] as @s run give @s arrow 10
    execute as @a[scores={KOTHkit=30,KOTHkills=3..},tag=KOTH_queued] as @s run scoreboard players set @s KOTHkills 0
    #kill super reward
    ### Test VVV
    execute as @a[scores={KOTHkit=30,KOTHkillssuper=5..},tag=KOTH_queued] as @s run give @s crossbow{display:{Name:'{"text":"Super Poison Crossbow"}'},Damage:460,Enchantments:[{id:"minecraft:quick_charge",lvl:3s}],ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{Potion:"minecraft:strong_poison"}},{id:"minecraft:tipped_arrow",Count:1b,tag:{Potion:"minecraft:strong_poison"}},{id:"minecraft:tipped_arrow",Count:1b,tag:{Potion:"minecraft:strong_poison"}}],Charged:1b} 1
    execute as @a[scores={KOTHkit=30,KOTHkillssuper=5..},tag=KOTH_queued] as @s run give @s tipped_arrow{Potion:"minecraft:strong_poison"} 2
    #execute as @a[scores={KOTHkit=30,KOTHkillssuper=5..},tag=KOTH_queued] as @s run give @s bow{Damage:379,Enchantments:[{id:"punch",lvl:3},{id:"power",lvl:5}],display:{Name:'"Super Bow"'}}
    execute as @a[scores={KOTHkit=30,KOTHkillssuper=5..},tag=KOTH_queued] as @s run playsound minecraft:entity.villager.work_fletcher master @a ~ ~ ~ 9999999 .7
    execute as @a[scores={KOTHkit=30,KOTHkillssuper=5..},tag=KOTH_queued] as @s run scoreboard players set @s KOTHkillssuper 0

##Sniper
    execute as @e[type=player,scores={KOTHdeaths=1..,KOTHkit=31},tag=KOTH_queued] as @s run function mgdp:koth/kits/31sniper/items
    #kill reward
    execute as @a[scores={KOTHkit=31,KOTHkills=3..},tag=KOTH_queued] as @s run give @s arrow 6
    execute as @a[scores={KOTHkit=31,KOTHkills=3..},tag=KOTH_queued] as @s run scoreboard players set @s KOTHkills 0
    #kill reward 2
    execute as @a[scores={KOTHkit=31,KOTHkills2=4..},tag=KOTH_queued] as @s run give @s snowball{customball:1b,customball_type:2,display:{Name:'"Deploy Camo Barrier"'}}
    execute as @a[scores={KOTHkit=31,KOTHkills2=4..},tag=KOTH_queued] as @s run scoreboard players set @s KOTHkills2 0
    #kill super reward
    execute as @a[scores={KOTHkit=31,KOTHkillssuper=5..},tag=KOTH_queued] as @s run give @s crossbow{display:{Name:'{"text":"Super Rocket Launcher"}'},Damage:464,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:20b,Explosions:[{Type:1,Colors:[I;16711680]},{Type:1,Colors:[I;16744448]},{Type:1,Colors:[I;16763904]},{Type:1,Colors:[I;16777215]},{Type:1,Colors:[I;11776947]},{Type:0,Colors:[I;16736003]},{Type:1,Colors:[I;4539717]},{Type:1,Colors:[I;16727040]},{Type:1,Colors:[I;16765468]},{Type:1,Colors:[I;16711680]},{Type:1,Colors:[I;13750737]}]}}},{},{}],Charged:1b} 1
    execute as @a[scores={KOTHkit=31,KOTHkillssuper=5..},tag=KOTH_queued] as @s run playsound minecraft:entity.firework_rocket.large_blast_far master @a ~ ~ ~ 9999999 .7
    execute as @a[scores={KOTHkit=31,KOTHkillssuper=5..},tag=KOTH_queued] as @s run scoreboard players set @s KOTHkillssuper 0
    #slowness when holding bow
    execute as @a[scores={KOTHkit=31},tag=KOTH_queued,nbt={SelectedItem:{id:"minecraft:bow",tag:{display:{Name:'"Sniper"'}}}}] run function mgdp:koth/kits/31sniper/slow
    execute as @a[scores={KOTHkit=31},tag=KOTH_queued,nbt={Inventory:[{Slot:-106b,id:"minecraft:bow",tag:{display:{Name:'"Sniper"'}}}]}] run function mgdp:koth/kits/31sniper/slow
#execute at @a[nbt={SelectedItem:{id:"minecraft:bow"}}] run summon area_effect_cloud ~ ~.1 ~ {Particle:"block air",ReapplicationDelay:0,Radius:.5f,Duration:6,Potion:"minecraft:empty",Effects:[{Id:2b,Amplifier:4b,Duration:5,ShowParticles:0b}]}

##Warper
    execute as @e[type=player,scores={KOTHdeaths=1..,KOTHkit=40},tag=KOTH_queued] as @s run function mgdp:koth/kits/40warper/items
    #kill reward
    execute as @a[scores={KOTHkit=40,KOTHkills=1..},tag=KOTH_queued] as @s run give @s ender_pearl{display:{Name:'"Tp Random Location"'}}
    execute as @a[scores={KOTHkit=40,KOTHkills=1..},tag=KOTH_queued] as @s run scoreboard players set @s KOTHkills 0
    #kill reward 2
    execute as @a[scores={KOTHkit=40,KOTHkills2=4..},tag=KOTH_queued] as @s run give @s ender_pearl{display:{Name:'"Randomize All Player Locations"'}}
    execute as @a[scores={KOTHkit=40,KOTHkills2=4..},tag=KOTH_queued] as @s run scoreboard players set @s KOTHkills2 0
    #kill super reward
    execute as @a[scores={KOTHkit=40,KOTHkillssuper=5..},tag=KOTH_queued] as @s run give @s ender_pearl{display:{Name:'"Tp Highest Player"'},Enchantments:[{id:"",lvl:1}]}
    execute as @a[scores={KOTHkit=40,KOTHkillssuper=5..},tag=KOTH_queued] as @s run playsound minecraft:entity.enderman.death master @a ~ ~ ~ 9999999 .7
    execute as @a[scores={KOTHkit=40,KOTHkillssuper=5..},tag=KOTH_queued] as @s run scoreboard players set @s KOTHkillssuper 0
    #tp random location pearl
    execute if entity @e[type=minecraft:ender_pearl,nbt={Item:{id:"minecraft:ender_pearl",Count:1b,tag:{display:{Name:'"Tp Random Location"'}}}},limit=1] as @a[scores={KOTHkit=40,PearlUsed=1},tag=KOTH_queued] at @s run spreadplayers ~ ~ 10 100 false @s
    execute if entity @e[type=minecraft:ender_pearl,nbt={Item:{id:"minecraft:ender_pearl",Count:1b,tag:{display:{Name:'"Tp Random Location"'}}}},limit=1] as @a[scores={KOTHkit=40,PearlUsed=1},tag=KOTH_queued] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 9999999 1.5
    execute if entity @e[type=minecraft:ender_pearl,nbt={Item:{id:"minecraft:ender_pearl",Count:1b,tag:{display:{Name:'"Tp Random Location"'}}}},limit=1] run kill @e[type=minecraft:ender_pearl,nbt={Item:{id:"minecraft:ender_pearl",Count:1b,tag:{display:{Name:'"Tp Random Location"'}}}}]
    #randomize player locations pearl
    execute if entity @e[type=minecraft:ender_pearl,nbt={Item:{id:"minecraft:ender_pearl",Count:1b,tag:{display:{Name:'"Randomize All Player Locations"'}}}},limit=1] as @a[scores={KOTHkit=40,PearlUsed=1},tag=KOTH_queued] at @s run spreadplayers ~ ~ 5 70 false @a[tag=KOTH_queued]
    execute if entity @e[type=minecraft:ender_pearl,nbt={Item:{id:"minecraft:ender_pearl",Count:1b,tag:{display:{Name:'"Randomize All Player Locations"'}}}},limit=1] as @a[scores={KOTHkit=40,PearlUsed=1},tag=KOTH_queued] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 9999999 1
    execute if entity @e[type=minecraft:ender_pearl,nbt={Item:{id:"minecraft:ender_pearl",Count:1b,tag:{display:{Name:'"Randomize All Player Locations"'}}}},limit=1] run kill @e[type=minecraft:ender_pearl,nbt={Item:{id:"minecraft:ender_pearl",Count:1b,tag:{display:{Name:'"Randomize All Player Locations"'}}}}]
    #Tp Highest Player pearl
    execute if entity @e[type=minecraft:ender_pearl,nbt={Item:{id:"minecraft:ender_pearl",Count:1b,tag:{display:{Name:'"Tp Highest Player"'}}}},limit=1] as @a[scores={KOTHkit=40,PearlUsed=1},tag=KOTH_queued] run execute as @a[tag=KOTH_queued] run execute store result score @s ylevel run data get entity @s Pos[1]
    execute if entity @e[type=minecraft:ender_pearl,nbt={Item:{id:"minecraft:ender_pearl",Count:1b,tag:{display:{Name:'"Tp Highest Player"'}}}},limit=1] as @a[scores={KOTHkit=40,PearlUsed=1},tag=KOTH_queued] run scoreboard players set max ylevel -1000
    execute if entity @e[type=minecraft:ender_pearl,nbt={Item:{id:"minecraft:ender_pearl",Count:1b,tag:{display:{Name:'"Tp Highest Player"'}}}},limit=1] as @a[scores={KOTHkit=40,PearlUsed=1},tag=KOTH_queued] run scoreboard players operation max ylevel > @a[tag=KOTH_queued] ylevel
    execute if entity @e[type=minecraft:ender_pearl,nbt={Item:{id:"minecraft:ender_pearl",Count:1b,tag:{display:{Name:'"Tp Highest Player"'}}}},limit=1] as @a[scores={KOTHkit=40,PearlUsed=1},tag=KOTH_queued] run execute as @a[tag=KOTH_queued] if score @s ylevel = max ylevel run tag @s add WarperTarget
    execute if entity @e[type=minecraft:ender_pearl,nbt={Item:{id:"minecraft:ender_pearl",Count:1b,tag:{display:{Name:'"Tp Highest Player"'}}}},limit=1] as @a[scores={KOTHkit=40,PearlUsed=1},tag=KOTH_queued] run tp @p[tag=WarperTarget]
    execute if entity @e[type=minecraft:ender_pearl,nbt={Item:{id:"minecraft:ender_pearl",Count:1b,tag:{display:{Name:'"Tp Highest Player"'}}}},limit=1] as @a[scores={KOTHkit=40,PearlUsed=1},tag=KOTH_queued] run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 9999999 .7
    execute if entity @e[type=minecraft:ender_pearl,nbt={Item:{id:"minecraft:ender_pearl",Count:1b,tag:{display:{Name:'"Tp Highest Player"'}}}},limit=1] as @a[scores={KOTHkit=40,PearlUsed=1},tag=KOTH_queued] run tag @a remove WarperTarget 
    execute if entity @e[type=minecraft:ender_pearl,nbt={Item:{id:"minecraft:ender_pearl",Count:1b,tag:{display:{Name:'"Tp Highest Player"'}}}},limit=1] run kill @e[type=minecraft:ender_pearl,nbt={Item:{id:"minecraft:ender_pearl",Count:1b,tag:{display:{Name:'"Tp Highest Player"'}}}}]
    #reset pearl detection
    execute as @a[scores={KOTHkit=40,PearlUsed=1},tag=KOTH_queued] run scoreboard players reset @s PearlUsed

##Fisherman
    execute as @e[type=player,scores={KOTHdeaths=1..,KOTHkit=50},tag=KOTH_queued] as @s run function mgdp:koth/kits/50fisherman/items
    #kill reward
    execute as @a[scores={KOTHkit=50,KOTHkills=2..},tag=KOTH_queued] as @s run give @s snowball{customball:1b,customball_type:1,display:{Name:'"Deploy Pufferfish"'}}
    execute as @a[scores={KOTHkit=50,KOTHkills=2..},tag=KOTH_queued] as @s run scoreboard players set @s KOTHkills 0
    #kill super reward
    execute as @a[scores={KOTHkit=50,KOTHkillssuper=5..},tag=KOTH_queued] as @s run give @s golden_chestplate{display:{Name:'"Super Pufferfish Chestplate"'},Enchantments:[{id:"thorns",lvl:20}],Damage:92}
    execute as @a[scores={KOTHkit=50,KOTHkillssuper=5..},tag=KOTH_queued] as @s run playsound minecraft:entity.puffer_fish.blow_up master @a ~ ~ ~ 9999999 .7
    execute as @a[scores={KOTHkit=50,KOTHkillssuper=5..},tag=KOTH_queued] as @s run scoreboard players set @s KOTHkillssuper 0





###Reset detection for respawn
#reset kill streak
scoreboard players reset @e[type=player,tag=KOTH_queued,scores={KOTHdeaths=1..}] KOTHkillssuper
#reset KOTHdeaths
scoreboard players reset @e[type=player,tag=KOTH_queued,scores={KOTHdeaths=1..}] KOTHdeaths
