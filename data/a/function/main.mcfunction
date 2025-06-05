function a:murder
scoreboard players reset *
gamerule doImmediateRespawn true
time set 0
team add a
team modify a collisionRule pushOwnTeam
team modify a friendlyFire true
scoreboard objectives add score dummy
scoreboard objectives add death deathCount
scoreboard objectives add calc dummy
scoreboard objectives add health dummy
scoreboard objectives add round dummy
scoreboard objectives add multi dummy
scoreboard objectives add left dummy
scoreboard objectives add right dummy
scoreboard objectives add gone dummy
scoreboard objectives add two dummy
scoreboard objectives add five dummy
scoreboard objectives add first dummy
scoreboard objectives add overkill dummy
scoreboard objectives add temp dummy
scoreboard objectives add pcount dummy
scoreboard objectives add tpcount dummy
scoreboard objectives add glass minecraft.mined:minecraft.glass
scoreboard objectives setdisplay sidebar health
scoreboard players set @a death 1785
tellraw @a [{"bold":true,"color":"red","underline":true,"text":"Fully automatic "},{"text":"death speedruns has been loaded! Use /function a:start to begin the games!","color":"green"}]



# create spawn platform
fill 10 300 10 -10 319 -10 minecraft:barrier hollow
fill -9 319 -9 9 319 9 air
fill -9 300 -9 9 300 9 minecraft:grass_block
setworldspawn 0 302 0
spawnpoint @a 0 302 0
tp @a 0 302 0
gamemode survival @a
gamerule spawnRadius 2

execute unless entity @e[type=minecraft:armor_stand,limit=1,tag=score] run summon minecraft:armor_stand 0 330 0 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["score"]}
scoreboard players set @e[type=armor_stand,tag=score] round 0