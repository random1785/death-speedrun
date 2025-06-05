execute as @a run scoreboard players operation @s temp = @s health
scoreboard objectives remove health
scoreboard objectives add health dummy
execute as @a run scoreboard players operation @s health = @s temp
scoreboard objectives setdisplay sidebar health
execute as @e[type=armor_stand,tag=score,scores={score=0..69420}] run execute unless entity @a[scores={death=17,health=0..501}] run schedule function a:zzzhealthcalc1 2s