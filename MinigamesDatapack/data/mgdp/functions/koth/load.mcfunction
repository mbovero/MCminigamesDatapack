#lobby at 8 -59 -600
#arena at 8 10 -1200

#score tracking with ticks
#game end function (7 mins?)
#summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["Spawn"]}

###Load message

###Scoreboard Initialization
scoreboard objectives add Score dummy
scoreboard objectives setdisplay sidebar Score
scoreboard players set @a Score 0