execute as @a at @s run playsound minecraft:entity.generic.explode
execute as @a run scoreboard players operation @s health -= @s calc
scoreboard players reset @a calc
scoreboard players reset @a[tag=a] score
execute as @a[scores={health=1..500}] run tellraw @a [{"color":"aqua","selector":"@s"},{"text":" has "},{"score":{"name":"@s","objective":"health"}},{"text":" health left!"}]
execute store result score @e[type=minecraft:armor_stand,limit=1,tag=score] left run execute if entity @a[scores={health=1..}]
execute as @e[type=minecraft:armor_stand,limit=1,tag=score] run scoreboard players operation @s right = @s left
scoreboard players add @e[type=minecraft:armor_stand,limit=1,tag=score] right 1
execute as @a[scores={health=-200..0}] run execute unless score @s gone matches 1 run tellraw @a [{"bold":true,"color":"dark_red","selector":"@s"},{"text":" has"},{"text":" been eliminated and has finished rank #"},{"score":{"name":"@e[type=minecraft:armor_stand,limit=1,tag=score]","objective":"right"}},{"text":"."}]
scoreboard players set @a[scores={health=..0}] gone 1
execute unless score @e[type=minecraft:armor_stand,limit=1,tag=score] left matches ..1 run schedule function a:zzzstart 3s
execute if score @e[type=minecraft:armor_stand,limit=1,tag=score] left matches 1 run title @a title [{"color":"gold","selector":"@a[scores={health=1..}]"},{"text":" is the winner!"}]
execute if score @e[type=minecraft:armor_stand,limit=1,tag=score] left matches 1 run tellraw @a [{"color":"gold","selector":"@a[scores={health=1..}]"},{"text":" is the winner!"}]
execute if score @e[type=minecraft:armor_stand,limit=1,tag=score] left matches 1 run execute at @a run playsound minecraft:ui.toast.challenge_complete master @a
execute if score @e[type=minecraft:armor_stand,limit=1,tag=score] left matches 1 run schedule function a:zzzfinal 3s
execute if score @e[type=minecraft:armor_stand,limit=1,tag=score] left matches 1 run tag @s remove newcheck
execute as @a run scoreboard players operation @s temp = @s health
scoreboard objectives remove health
scoreboard objectives add health dummy
execute as @a run scoreboard players operation @s health = @s temp
scoreboard players reset * temp
scoreboard objectives setdisplay sidebar health

scoreboard players reset @a glass