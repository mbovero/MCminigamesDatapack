

# customCommandExample
#scoreboard players enable @a customCommandExample
#execute as @a[scores={customCommandExample=1..}] run say "test command"
#scoreboard players set @a customCommandExample 0

#General commands
    #tp to hub
    scoreboard players enable @a hub
    execute as @a[scores={hub=1..}] run tp -15 -44 -17
    scoreboard players set @a[scores={hub=1..}] hub 0


    



