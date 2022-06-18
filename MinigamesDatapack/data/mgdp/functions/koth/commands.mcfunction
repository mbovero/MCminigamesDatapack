###KOTH commands

scoreboard objectives add kit_striker trigger
    #Kit selection
    scoreboard players enable @a[tag=KOTHL] kit_striker
    execute as @a[scores={kit_striker=1..}] run function mgdp:koth/10striker/10striker
    scoreboard players set @a kit_striker 0