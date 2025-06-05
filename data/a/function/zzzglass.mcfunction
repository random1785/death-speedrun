scoreboard players set @e[type=minecraft:armor_stand,tag=score] score 1
kill @a
execute as @a[scores={glass=1..}] run tellraw @a [{"color":"red","bold":true,"selector":"@s"},{"bold":false,"text":" broke glass! Please do not try this again."}]
scoreboard players set @a glass 0