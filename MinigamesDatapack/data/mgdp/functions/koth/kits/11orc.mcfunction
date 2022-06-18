###Orc Kit

#Description: Has an axe and leather pants, can grounpound (maybe), kills with 2-3 crits but dies with little effort

#Basic Equipment
    #give nockback axe
    item replace entity @s container.9 with wooden_axe 1
    #give orc head
    item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Orc"}'},SkullOwner:{Id:[I;736801148,106448267,-1729142913,1497722115],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmFkZGNmMDAxYTZkMmEzMDRlNGJkNTQ1NzYwNGU2MTBjMjNkOTRhY2IyMGI2NGJmYjJiZWU0NzQwYTI0NWZjZCJ9fX0="}]}}} 1
    #code for incase above line is f'd: "{\"text\":\"Orc\"}"}
    #give leather pants
    item replace entity @s armor.legs with leather_leggings 1



#Special Ability

#Gained items/abilities
    #3 kills: gains regen for 10 seconds
    #5 kills: Gains resistance (scaled based on player count)
    #10 kills: 3 groundpounds
    
