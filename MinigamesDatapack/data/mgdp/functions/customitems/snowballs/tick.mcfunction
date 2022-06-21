execute as @e[type=snowball,tag=!customball,nbt={Item:{tag:{customball:1b}}}] at @s run function mgdp:customitems/snowballs/found
execute as @e[type=area_effect_cloud,tag=customitem] unless predicate mgdp:is_riding_snowball at @s run function mgdp:customitems/snowballs/landed

#in is_riding_snowball make wrong nbt tag to activate command as soon as snowball is thrown

execute as @e[type=snowball,tag=customball] run function mgdp:customitems/snowballs/snowballfix
scoreboard players operation .global snowballfix *= .-1 snowballfix