#snowball types execution
execute if entity @e[type=area_effect_cloud,nbt={Tags:["customitem","customball_type:0"]}] run setblock ~ ~ ~ stone
execute if entity @e[type=area_effect_cloud,nbt={Tags:["customitem","customball_type:1"]}] run summon pufferfish
execute if entity @e[type=area_effect_cloud,nbt={Tags:["customitem","customball_type:2"]}] run function mgdp:koth/kits/31sniper/camoflauge


#make a key for all of the custom ball types and refer to it in kit implementation
#/give bigbudderbob snowball{customball:1b,customball_type:1}

kill @s
