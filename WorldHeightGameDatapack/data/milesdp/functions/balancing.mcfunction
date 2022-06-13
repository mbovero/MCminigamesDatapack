###Balancing
#elytra balancing
execute if score bool Elytra matches 1 run scoreboard players operation max WHTime > @a WHTime
execute if score bool Elytra matches 1 as @a if score @s WHTime < max WHTime run give @s minecraft:elytra{Damage:407} 1
execute if score bool Elytra matches 1 as @a if score @s WHTime < max WHTime run give @s minecraft:firework_rocket 10
scoreboard players reset max WHTime
execute if score bool Elytra matches 1 run execute as @a run playsound minecraft:entity.ender_dragon.flap master @s ~ ~ ~ 
#loop
execute if score bool GameEnd matches 0 if score bool Elytra matches 1 run schedule function milesdp:balancing 150s replace


#tp balancing (maybe rework to consider top player)
execute if score bool Teleport matches 1 run execute as @a run tp @p @r
execute if score bool Teleport matches 1 run effect give @a blindness 3 255 true
execute if score bool Teleport matches 1 run effect give @a regeneration 1 3 true
execute if score bool Elytra matches 1 run execute as @a run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 
#loop
execute if score bool GameEnd matches 0 if score bool Teleport matches 1 run schedule function milesdp:balancing 210s replace

