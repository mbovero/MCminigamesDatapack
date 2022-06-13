#reset
scoreboard players set @s whg.bordermenu 0
#chat menu
tellraw @s [{"text":"\n\n\n\n\n\n\nSelect a border size:\n","underlined":true,"color":"red"}]
tellraw @s ["",{"text":"[100 Blocks]","bold":true,"color":"gray","clickEvent":{"action":"run_command","value":"/worldborder set 100"}},"\n",{"text":"[250 Blocks]","bold":true,"color":"gray","clickEvent":{"action":"run_command","value":"/worldborder set 250"}},"\n",{"text":"[500 Blocks]","bold":true,"color":"gray","clickEvent":{"action":"run_command","value":"/worldborder set 500"}},"\n",{"text":"[1000 Blocks]","bold":true,"color":"gray","clickEvent":{"action":"run_command","value":"/worldborder set 1000"}},"\n",{"text":"[2500 Blocks]","bold":true,"color":"gray","clickEvent":{"action":"run_command","value":"/worldborder set 2500"}},"\n",{"text":"[No Border]\n\n\n","bold":true,"color":"gray","clickEvent":{"action":"run_command","value":"/worldborder set 9999999"}}]
tellraw @s {"text":"[Return to Main Menu]\n","color":"blue","clickEvent":{"action":"run_command","value":"/trigger whg.mainmenu"}}
#recenter
execute at @s run worldborder center ~ ~
