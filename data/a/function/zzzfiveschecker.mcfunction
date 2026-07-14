execute as @e[tag=score,scores={round=1,score=50..}] run execute unless entity @a[scores={death=17,health=1..500}] run schedule function a:zzzfiveschecker2 3s

schedule clear a:zzzfiveschecker
schedule function a:zzzfiveschecker 5s