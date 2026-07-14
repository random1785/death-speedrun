execute as @e[tag=score,scores={round=1,score=50..}] run execute unless entity @a[scores={death=17,health=1..500},gamemode=survival] run tellraw @a {"text":"failsave checker has ended the round! did something weird happen?","color":"gray"}
execute as @e[tag=score,scores={round=1,score=50..}] run execute unless entity @a[scores={death=17,health=1..500},gamemode=survival] run function a:zzzhealthcalc1

schedule clear a:zzzfiveschecker2