###Archer Kit

#Give leather armor
item replace entity @s armor.head with leather_helmet{Unbreakable:1b}
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1b}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1b}
item replace entity @s armor.feet with leather_boots{Unbreakable:1b}

#Give Bow
item replace entity @s hotbar.1 with bow{Unbreakable:1b,Enchantments:[{id:"punch",lvl:1},{id:"power",lvl:2}]}
#Give piercing crossbow
item replace entity @s hotbar.2 with crossbow{Unbreakable:1b,Enchantments:[{id:"piercing",lvl:1}]}
#Give shears as small knife
item replace entity @s hotbar.0 with shears{Unbreakable:1b,Enchantments:[{id:"sharpness",lvl:3}],display:{Name:'"Battle Shears"'}}
#Give arrows
item replace entity @s hotbar.3 with arrow 10