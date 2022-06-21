#snowball types detection/assignment
execute if entity @s[nbt={Item:{tag:{customball_type:0}}}] run summon snowball ~ ~ ~ {Tags:["customball","init"],Passengers:[{id:"minecraft:area_effect_cloud",Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["customitem","customball_type:0"]}]}
execute if entity @s[nbt={Item:{tag:{customball_type:1}}}] run summon snowball ~ ~ ~ {Tags:["customball","init"],Passengers:[{id:"minecraft:area_effect_cloud",Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["customitem","customball_type:1"]}]}


#transfer data to new entities
data modify entity @e[type=snowball,tag=customball,tag=init,limit=1] Owner set from entity @s Owner
data modify entity @e[type=snowball,tag=customball,tag=init,limit=1] Motion set from entity @s Motion

tag @e[type=snowball,tag=customball,tag=init,limit=1] remove init

kill @s