fill ~ ~-1 ~ ~ ~1 ~ jungle_leaves replace air
fill ~-1 ~-1 ~-1 ~-1 ~1 ~-1 jungle_leaves replace air
fill ~1 ~-1 ~1 ~1 ~1 ~1 jungle_leaves replace air
playsound minecraft:block.composter.empty master @a[tag=KOTH_queued] ~ ~ ~ 999999999 1
summon area_effect_cloud ~ ~ ~ {Tags:["reset_timer","camoflauge"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}