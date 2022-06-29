#Recall
    #give variable scoreboard (matches with selected armor stand)
        #spawn the armor stand and give scoreboard
        summon armor_stand ~ ~ ~ {NoGravity:1b, Tags:["recall_1"]}
    #set timer and teleport player
        schedule function mgdp:functions/koth/kits/41clockmaster/recalltimer.mcfunction 5
    #(manual recall in later version)