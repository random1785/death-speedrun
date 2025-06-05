gamerule doImmediateRespawn true
scoreboard players set @a death 1785
time set 0
clear @a
team join a @a
effect clear @a
kill @a
execute as @a at @s run playsound minecraft:block.trial_spawner.ominous_activate
title @a title {"text":"game starting!","color":"green"}
kill @e[type=armor_stand,tag=score]
summon armor_stand 0 330 0 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["score"]}
scoreboard players set @e[type=armor_stand,tag=score] round 0
scoreboard players set @e[type=armor_stand,tag=score] multi 100
scoreboard players set @e[type=armor_stand,tag=score] two 2
scoreboard players set @e[type=armor_stand,tag=score] five 5
tag @e[type=armor_stand,tag=score] add newcheck
tag @a remove a
schedule function a:zzzstart1 20t
gamemode survival @a
scoreboard players set @a health 500
scoreboard players set @a temp 500