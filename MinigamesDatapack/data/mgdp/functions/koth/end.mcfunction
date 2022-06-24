###Reset Abilities
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=reset_timer] TickTime 6000
execute at @e[type=area_effect_cloud,nbt={Tags:["reset_timer","camoflauge"]},limit=1,scores={TickTime=600..}] run function mgdp:koth/kits/31sniper/resetcamoflauge


##Determine KOTH_Winner
scoreboard players operation max Score > @a[tag=KOTH_queued] Score
execute as @a[tag=KOTH_queued] if score @s Score = max Score run tag @s add KOTH_Winner
title @a[tag=KOTH_Winner] title {"text":"You win!","bold":true,"color":"green"}
execute as @a[tag=KOTH_Winner] run tellraw @a[tag=KOTH_queued] ["",{"selector":"@s","bold":true,"color":"white"},{"text":" is the winner of ","color":"gray"},{"text":"KOTH","color":"gold"}]
execute as @a[tag=KOTH_Winner] run playsound minecraft:item.goat_horn.sound.0 master @s ~ ~ ~ 999999999999 1.5
execute as @a[tag=KOTH_Winner] run playsound minecraft:entity.firework_rocket.twinkle_far master @s ~ ~ ~ 999999999999 1
tag @a[tag=!KOTH_Winner,nbt={Tags:["KOTH_queued"]}] add KOTH_Loser
#KOTH_Loser actions
title @a[tag=KOTH_Loser] title {"text":"You lost","bold":true,"color":"red"}
execute as @a[tag=KOTH_Loser] run playsound minecraft:item.goat_horn.sound.3 master @s ~ ~ ~ 999999999999 1.3
#Reset roles
tag @a remove KOTH_Loser
tag @a remove KOTH_Winner
scoreboard players reset max Score

###End KOTH (reset)
function mgdp:reset
tp @a[tag=KOTH_queued] 8 -60 -600
tag @a remove KOTH_queued
