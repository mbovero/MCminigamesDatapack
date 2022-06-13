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

###Detect respawn
#execute if score bool GameEnd matches 0 as @e[type=player,scores={Deaths=1..}] run command
execute if score bool GameEnd matches 0 run scoreboard players reset @e[type=player,scores={Deaths=1..}] Deaths


###Check Kits


