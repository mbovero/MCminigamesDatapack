#Archer Kit

#Give leather armor
item replace entity @s armor.head with minecraft:leather_helmet 1
item replace entity @s armor.chest with minecraft:leather_chestplate 1
item replace entity @s armor.legs with minecraft:leather_leggings 1
item replace entity @s armor.feet with minecraft:leather_boots 1

#Give Bow
item replace entity @s hotbar.1 with bow{Unbreakable:1b,Enchantments:[{id:"punch",lvl:1},{id:"power",lvl:3}]} 1
#Give piercing crossbow
item replace entity @s hotbar.2 with crossbow{Unbreakable:1b,Enchantments:[{id:"piercing",lvl:1}]} 1
#Give shears as small knife
item replace entity @s hotbar.0 with shears{Unbreakable:1b,Enchantments:[{id:"sharpness",lvl:3}]} 1
