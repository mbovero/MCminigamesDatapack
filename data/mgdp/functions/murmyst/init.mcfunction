#####Soreboard Initialization


### ||| Most of these were directly copied from the MM init function, so some might be unecessary and may be deleted. |||

#death count
scoreboard objectives add MMdeaths deathCount
#kill detection
scoreboard objectives add MMkills playerKillCount
scoreboard objectives add MMkills2 playerKillCount
scoreboard objectives add MMkillssuper playerKillCount
scoreboard objectives add MMtotalkills playerKillCount
#MM kit detection
scoreboard objectives add MMkit dummy
scoreboard players set @a MMkit 10
#y-level detection
scoreboard objectives add ylevel dummy
#MM map detection
scoreboard objectives add MMmap dummy
#MM start button
scoreboard objectives add MMstart dummy
##Boolean Scoreboard
scoreboard objectives add BooleanVariables dummy
#game detection
#scoreboard objectives add GameInSession dummy
tag @a remove MM_queued
#MM game detection
scoreboard objectives add MM dummy
#MM end game bool
scoreboard objectives add MMend dummy
#MM double points detection
scoreboard objectives add MMdoublepoints dummy
#Murderer Kills
scoreboard objectives add MURMYSTmurders playerKillCount


###MM Team Initialization
team add InMMGame
team modify InMMGame color gold

team add Murderer
team add Bystander