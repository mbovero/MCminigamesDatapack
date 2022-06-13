###Scorekeeping
execute if score bool GameEnd matches 0 as @a[tag=atWorldHeight] at @s if entity @s[y=319,dy=1000] run scoreboard players add @s WHTime 1
execute if score bool GameEnd matches 0 as @a[tag=!atWorldHeight] at @s if entity @s[y=319,dy=1000] run tag @s add atWorldHeight
execute if score bool GameEnd matches 0 as @a[tag=atWorldHeight] at @s if entity @s[y=319,dy=-1000] run tag @s remove atWorldHeight


###Detect and activate game end
execute at @r[scores={WHTime=6000}] run scoreboard players set bool GameEnd 1
execute at @r[scores={WHTime=6000}] run scoreboard objectives setdisplay sidebar
execute at @r[scores={WHTime=6000}] run tag @a[scores={WHTime=6000..}] add Winner
execute at @r[scores={WHTime=6000}] run scoreboard objectives remove WHTime
#Winner actions
execute if score bool GameEnd matches 1 run gamemode creative @a[tag=Winner]
execute if score bool GameEnd matches 1 run title @a[tag=Winner] title {"text":"You Win!","bold":true,"color":"green"}
execute if score bool GameEnd matches 1 run tag @a[tag=!Winner] add Loser
#Loser actions
execute if score bool GameEnd matches 1 run gamemode spectator @a[tag=Loser]
execute if score bool GameEnd matches 1 run title @a[tag=Loser] title {"text":"Loser","bold":true,"color":"red"}
#Reset roles
execute if score bool GameEnd matches 1 run tag @a[tag=Loser] remove Loser
execute if score bool GameEnd matches 1 run tag @a[tag=Winner] remove Winner
#Reset bool
execute if score bool GameEnd matches 1 run scoreboard players set bool GameEnd 0


###Detect respawn and provide compass
execute if score bool GameEnd matches 0 as @e[type=player,scores={Deaths=1..}] run function player_tracker:players/give_compass
execute if score bool GameEnd matches 0 run scoreboard players reset @e[type=player,scores={Deaths=1..}] Deaths

###Menu options enabling
scoreboard players enable @a whg.mainmenu
scoreboard players enable @a whg.bordermenu
scoreboard players enable @a whg.start
scoreboard players enable @a whg.elytraoption
scoreboard players enable @a whg.teleportoption
scoreboard players enable @a whg.nobalance
scoreboard players enable @a whg.relocate

###Menu options detecting
execute as @a if score @s whg.mainmenu matches 1.. run function milesdp:mainmenu
execute as @a if score @s whg.bordermenu matches 1.. run function milesdp:bordermenu
execute as @a if score @s whg.start matches 1.. run function milesdp:start
execute as @a if score @s whg.elytraoption matches 1.. run function milesdp:elytraoption
execute as @a if score @s whg.teleportoption matches 1.. run function milesdp:teleportoption
execute as @a if score @s whg.nobalance matches 1.. run function milesdp:nobalance
execute as @a if score @s whg.relocate matches 1.. run function milesdp:relocate
