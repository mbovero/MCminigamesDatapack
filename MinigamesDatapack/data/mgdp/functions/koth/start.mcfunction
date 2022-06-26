#arena at 8 12 -1200
#hub at 8 -30 -600

###Load message
title @a[tag=KOTH_queued] title {"text":"KOTH","bold":true,"color":"gold"}
playsound minecraft:entity.ender_dragon.growl master @a[tag=KOTH_queued] ~ ~ ~ 999999999999999999999 .5

###Scoreboard Initialization
scoreboard objectives add Score dummy
scoreboard objectives setdisplay sidebar.team.gold Score
scoreboard players set @a[tag=KOTH_queued] Score 0
scoreboard players set @a[tag=KOTH_queued] KOTHkills 0
scoreboard players set @a[tag=KOTH_queued] KOTHkills2 0
scoreboard players set @a[tag=KOTH_queued] KOTHkillssuper 0
scoreboard players reset @a[tag=KOTH_queued] PearlUsed
scoreboard players set @a[tag=KOTH_queued] KOTHtotalkills 0
scoreboard players set bool GameInSession 1
#remove suffixes
team leave @a
team join InKothGame @a[tag=KOTH_queued]

#####Game Setup
##map detection
execute if score map KOTHmap matches 0 run summon area_effect_cloud 8 10 -1200 {Tags:["spawn"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if score map KOTHmap matches 0 run setworldspawn 7 14 -1215
execute if score map KOTHmap matches 0 run spawnpoint @a[tag=KOTH_queued] 8 12 -1200
execute if score map KOTHmap matches 0 run summon area_effect_cloud 8 10 -1200 {Tags:["five_min_timer"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
#castle of dreams
execute if score map KOTHmap matches 1 run summon area_effect_cloud -900 12 0 {Tags:["spawn"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if score map KOTHmap matches 1 run setworldspawn -904 12 7
execute if score map KOTHmap matches 1 run spawnpoint @a[tag=KOTH_queued] -900 12 2
execute if score map KOTHmap matches 1 run summon area_effect_cloud -900 12 0 {Tags:["five_min_timer"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
#ramen bowl
execute if score map KOTHmap matches 2 run summon area_effect_cloud -750 5 -1651 {Tags:["spawn"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if score map KOTHmap matches 2 run setworldspawn -750 5 -1675
execute if score map KOTHmap matches 2 run spawnpoint @a[tag=KOTH_queued] -750 5 -1675
execute if score map KOTHmap matches 2 run summon area_effect_cloud -750 5 -1651 {Tags:["five_min_timer"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
#ramen bowl
execute if score map KOTHmap matches 3 run summon area_effect_cloud -935 11 -618 {Tags:["spawn"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if score map KOTHmap matches 3 run setworldspawn -935 11 -618
execute if score map KOTHmap matches 3 run spawnpoint @a[tag=KOTH_queued] -935 11 -618
execute if score map KOTHmap matches 3 run summon area_effect_cloud -900 5 -601 {Tags:["five_min_timer"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}


#spawning    -   don't /kill because it increases kill count of players that were punching eachother beforehand
gamerule doImmediateRespawn true
gamerule keepInventory true
gamerule spawnRadius 0
kill @a[tag=KOTH_queued]
###############Try just teleporting instead?
gamerule showDeathMessages true
#kit give
scoreboard players set @a[tag=KOTH_queued] KOTHdeaths 1



