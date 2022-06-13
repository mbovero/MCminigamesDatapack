#lobby at 8 -59 -600
#arena at 8 10 -1200

#score tracking with ticks
#game end function (7 mins?)
#summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["Spawn"]}

###Load message
tellraw @a "King of the Hill is starting . . ."

###Scoreboard Initialization
scoreboard objectives add Score dummy
scoreboard objectives setdisplay sidebar Score
scoreboard players set @a Score 0

###Initiate Game Start Timer
summon armor_stand 8 -58 -627 {Tags:["five_sec_timer"],Invisible:1,Invulnerable:1,NoGravity:1,Marker:1,CustomNameVisible:1b}
