#Tank Kit

#Give chainmail
item replace entity @s armor.head with minecraft:chainmail_helmet{Unbreakable:1b} 1
item replace entity @s armor.chest with minecraft:chainmail_chestplate{Unbreakable:1b} 1
item replace entity @s armor.legs with minecraft:chainmail_leggings{Unbreakable:1b} 1
item replace entity @s armor.feet with minecraft:chainmail_boots{Unbreakable:1b} 1

#Give shield
execute if score @s kills matches 3 run item replace entity @s container.8 with minecraft:shield{Damage:250} 1
execute if score @s kills matches 3 run scoreboard players set @s kills 0

#Give Sword
item replace entity @s container.9 with minecraft:wooden_sword{Unbreakable:1b} 1




