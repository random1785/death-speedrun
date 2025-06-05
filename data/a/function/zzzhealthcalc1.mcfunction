scoreboard players reset @e[type=minecraft:armor_stand,limit=1] score
scoreboard players set @e[type=minecraft:armor_stand,limit=1] round 0
tellraw @a {"text":"Round is over! Calculating results:","color":"red","bold":true}
execute as @a at @s run playsound block.trial_spawner.about_to_spawn_item master
schedule function a:zzzhealthcalc2 45t
schedule function a:zzzhealthcalc3 80t