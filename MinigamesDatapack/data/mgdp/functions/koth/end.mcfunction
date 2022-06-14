###End KOTH (reset)
function mgdp:reset
tp @a[tag=queued] 8 -59 8

##Determine Winner
scoreboard players operation max Score > @a Score
execute as @a if score @s Score = max Score run tag @s add Winner
title @a[tag=Winner] title {"text":"You win!","bold":true,"color":"green"}
execute as @a[tag=Winner] run playsound minecraft:item.goat_horn.sound.0 master @s ~ ~ ~ 999999999999 1.5
execute as @a[tag=Winner] run playsound minecraft:entity.firework_rocket.twinkle_far master @s ~ ~ ~ 999999999999 1
tag @a[tag=!Winner] add Loser
#Loser actions
title @a[tag=Loser] title {"text":"You lost","bold":true,"color":"red"}
execute as @a[tag=Loser] run playsound minecraft:item.goat_horn.sound.3 master @s ~ ~ ~ 999999999999 1.3
#Reset roles
tag @a remove Loser
tag @a remove Winner
scoreboard players reset max Score
