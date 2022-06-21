#snowball types execution
execute if entity @e[type=area_effect_cloud,nbt={Tags:["customitem","customball_type:0"]}] run setblock ~ ~ ~ stone
execute if entity @e[type=area_effect_cloud,nbt={Tags:["customitem","customball_type:1"]}] run setblock ~ ~ ~ gold_block

#create a function somewhere in the fisherman folder and run the function in place of gold block action
#function should just summon a pufferfish

kill @s
