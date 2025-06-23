schedule clear a:zzzstart
schedule clear a:zzzstart1
schedule clear a:zzzstart2
schedule clear a:zzzhealthcalc1
schedule clear a:zzzhealthcalc2
schedule clear a:zzzhealthcalc3
schedule clear a:zzzhealthcalc2
schedule clear a:victory
schedule clear a:victory2
schedule clear a:zzzfiveschecker
scoreboard players reset @e
scoreboard players set @a health -69420
scoreboard players set @a death 1785
tellraw @a {"text":"hard reset has been ran.","color":"dark_red"}
tp @a 0 302 0
scoreboard players set @e[type=armor_stand,tag=score] round 0
tag @e[type=armor_stand,tag=score] remove newcheck