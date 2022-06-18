
##Determine KOTH_Winner
scoreboard players operation max Score > @a Score
execute as @a if score @s Score = max Score run tag @s add KOTH_Winner
title @a[tag=KOTH_Winner] title {"text":"You win!","bold":true,"color":"green"}
execute as @a[tag=KOTH_Winner] run playsound minecraft:item.goat_horn.sound.0 master @s ~ ~ ~ 999999999999 1.5
execute as @a[tag=KOTH_Winner] run playsound minecraft:entity.firework_rocket.twinkle_far master @s ~ ~ ~ 999999999999 1
tag @a[tag=!KOTH_Winner] add KOTH_Loser
#KOTH_Loser actions
title @a[tag=KOTH_Loser] title {"text":"You lost","bold":true,"color":"red"}
execute as @a[tag=KOTH_Loser] run playsound minecraft:item.goat_horn.sound.3 master @s ~ ~ ~ 999999999999 1.3
#Reset roles
tag @a remove KOTH_Loser
tag @a remove KOTH_Winner
scoreboard players reset max Score

###End KOTH (reset)
function mgdp:reset
tp @a[tag=KOTH_queued] -16 -44 -18
tag @a remove KOTH_queued
