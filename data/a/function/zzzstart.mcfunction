clear @a
team join a @a
effect clear @a
kill @a
kill @e[type=armor_stand,tag=score]
kill @e[type=armor_stand,tag=start]
summon armor_stand 0 330 0 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["score"]}
scoreboard players set @e[type=armor_stand,tag=score] round 0
scoreboard players set @e[type=armor_stand,tag=score] multi 100
scoreboard players set @e[type=armor_stand,tag=score] two 2
scoreboard players set @e[type=armor_stand,tag=score] five 5
tag @e[type=armor_stand,tag=score] add newcheck
tag @a remove a
schedule function a:zzzstart1 20t
gamemode survival @a
execute as @a unless score @s health matches ..500 run scoreboard players set @s health -69420
execute as @a run scoreboard players operation @s temp = @s health