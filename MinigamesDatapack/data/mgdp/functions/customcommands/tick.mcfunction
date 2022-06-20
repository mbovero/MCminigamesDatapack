

# customCommandExample
#scoreboard players enable @a customCommandExample
#execute as @a[scores={customCommandExample=1..}] run say "test command"
#scoreboard players set @a customCommandExample 0

#General commands
    #tp to hub
    scoreboard players enable @a hub
    execute as @a[scores={hub=1..}] run tp @s -16 -44 -18 -45 10
    scoreboard players set @a[scores={hub=1..}] hub 0
    #tp to KOTH hub
    scoreboard players enable @a KOTHhub
    execute as @a[scores={KOTHhub=1..}] run tp @s 8 -60 -600 -180 0
    scoreboard players set @a[scores={KOTHhub=1..}] KOTHhub 0


    



