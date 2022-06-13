#reset
scoreboard players set @s whg.mainmenu 0
#chat menu
tellraw @s {"text":"\n\n\n\n\n-- World Height Game Main Menu --","bold":true,"color":"blue"}
tellraw @s {"text":"\n[Start]\n","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger whg.start"}}
tellraw @s {"text":"[Relocate]\n","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger whg.relocate"},"hoverEvent":{"action":"show_text","contents":[{"text":"Teleport to a new location for a new environment","italic":true,"color":"gray"}]}}
tellraw @s {"text":"\nSettings:\n","underlined":true,"color":"gray"}
tellraw @s {"text":"[Set Border]","bold":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger whg.bordermenu"},"hoverEvent":{"action":"show_text","contents":[{"text":"Set world border to restrict travel","italic":true,"color":"gray"}]}}
tellraw @s {"text":"[Elytra Balancing]","bold":true,"color":"#E3E3E3","clickEvent":{"action":"run_command","value":"/trigger whg.elytraoption"},"hoverEvent":{"action":"show_text","contents":[{"text":"Occasionally provide losing players with a damaged elytra and firework rockets","italic":true,"color":"gray"}]}}
tellraw @s {"text":"[Teleport Balancing]","bold":true,"color":"#CD23CD","clickEvent":{"action":"run_command","value":"/trigger whg.teleportoption"},"hoverEvent":{"action":"show_text","contents":[{"text":"Occasionally randomly teleport players to each other","italic":true,"color":"gray"}]}}
tellraw @s {"text":"[No Balancing]","bold":true,"color":"#878787","clickEvent":{"action":"run_command","value":"/trigger whg.nobalance"},"hoverEvent":{"action":"show_text","contents":[{"text":"Disable all balancing (elytras/tp)","italic":true,"color":"gray"}]}}
tellraw @s {"text":"\n[Close Menu]","color":"dark_red","clickEvent":{"action":"run_command","value":"/tellraw @s \"\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\""}}
tellraw @s {"text":"-----------------------------","bold":true,"color":"blue"}


