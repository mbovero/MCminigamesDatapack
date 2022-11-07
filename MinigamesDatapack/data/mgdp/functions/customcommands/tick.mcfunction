

# customCommandExample
#scoreboard players enable @a customCommandExample
#execute as @a[scores={customCommandExample=1..}] run say "test command"
#scoreboard players set @a customCommandExample 0


#create function that resets the player entering the command

#General commands
    #tp to hub
    scoreboard players enable @a hub
    execute as @a[scores={hub=1..}] run tp @s -16 -44 -18 -45 10
    scoreboard players set @a[scores={hub=1..}] hub 0
    #tp to KOTH hub
    scoreboard players enable @a KOTHhub
    execute as @a[scores={KOTHhub=1..}] run tp @s 8 -60 -600 -180 0
    scoreboard players set @a[scores={KOTHhub=1..}] KOTHhub 0
    #tp to MM hub
    scoreboard players enable @a MMhub
    execute as @a[scores={MMhub=1..}] run tp @s 0 -53 -1800 -180 0
    scoreboard players set @a[scores={MMhub=1..}] MMhub 0


#GameDev commands
    #tp to KOTH test place
    scoreboard players enable @a[tag=GameDev] KOTHtestplace
    execute as @a[scores={KOTHtestplace=1..}] run tp @s 8 12 -1200
    scoreboard players set @a[scores={KOTHtestplace=1..}] KOTHtestplace 0
    #tp to KOTH castle of dreams map
    scoreboard players enable @a[tag=GameDev] KOTHcastleofdreams
    execute as @a[scores={KOTHcastleofdreams=1..}] run tp @s -900 12 2
    scoreboard players set @a[scores={KOTHcastleofdreams=1..}] KOTHcastleofdreams 0
    #tp to KOTH ramen bowl map
    scoreboard players enable @a[tag=GameDev] KOTHramenbowl
    execute as @a[scores={KOTHramenbowl=1..}] run tp @s -751 9 -1650
    scoreboard players set @a[scores={KOTHramenbowl=1..}] KOTHramenbowl 0
    #tp to KOTH hills map
    scoreboard players enable @a[tag=GameDev] KOTHhills
    execute as @a[scores={KOTHhills=1..}] run tp @s -904 18 -601
    scoreboard players set @a[scores={KOTHhills=1..}] KOTHhills 0




