#snowball types execution
execute if entity @e[type=area_effect_cloud,nbt={Tags:["customitem","customball_type:0"]}] run setblock ~ ~ ~ stone
execute if entity @e[type=area_effect_cloud,nbt={Tags:["customitem","customball_type:1"]}] run summon pufferfish

#create a function somewhere in the fisherman folder and run the function in place of gold block action
#function should just summon a pufferfish
#make a key for all of the custom ball types and refer to it in kit implementation

#/give bigbudderbob snowball{customball:1b,customball_type:1}

kill @s
