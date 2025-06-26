execute store result score @e[type=minecraft:armor_stand,limit=1,tag=score] pcount run execute if entity @a
execute if score @e[type=minecraft:armor_stand,limit=1,tag=score] pcount < @e[type=minecraft:armor_stand,limit=1,tag=score] tpcount run function a:zzzleave
execute store result score @e[type=minecraft:armor_stand,limit=1,tag=score] tpcount run execute if entity @a

execute as @a[scores={spec=1..}] run tellraw @a [{"color":"gray","selector":"@s"},{"text":" has become a spectator."}]
execute as @a[scores={spec=1..}] run gamemode spectator @s
execute as @a[scores={spec=1..}] run scoreboard players set @s spec -1785

execute as @a[scores={notspec=1..}] run tellraw @a [{"color":"green","selector":"@s"},{"text":" has stopped being a spectator."}]
execute as @a[scores={notspec=1..}] run scoreboard players reset @s spec
execute as @a[scores={notspec=1..}] run tp @s 0 302 0
execute as @a[scores={notspec=1..}] run gamemode survival @s
execute as @a[scores={notspec=1..}] run scoreboard players reset @s notspec

execute unless entity @e[limit=1,tag=score,scores={round=1}] positioned 12.79 308.35 0.70 run scoreboard players enable @a[distance=..30] spec
execute unless entity @e[limit=1,tag=score,scores={round=1}] positioned 12.79 308.35 0.70 run scoreboard players enable @a[distance=..30] notspec
execute in minecraft:the_nether positioned 11.08 159.00 4.82 run scoreboard players enable @a[distance=..60] notspec
execute in minecraft:the_nether positioned 11.08 159.00 4.82 run scoreboard players enable @a[distance=..60] spec


effect give @a[scores={death=18..}] resistance 1 255 true
effect give @a[scores={death=18..}] mining_fatigue 1 254 true
execute positioned 12.79 308.35 0.70 run effect give @a[distance=..30] mining_fatigue 1 254 true
execute positioned 12.79 308.35 0.70 run effect give @a[distance=..30] resistance 1 254 true
execute positioned 22.41 309.99 0.39 run effect give @a[distance=..10] saturation 1 254 true
execute in minecraft:the_nether positioned 11.08 159.00 4.82 run effect give @a[distance=..60] resistance 1 254 true
execute in minecraft:the_nether positioned 11.08 159.00 4.82 run effect give @a[distance=..60] mining_fatigue 1 254 true
execute in minecraft:the_nether positioned 11.08 159.00 4.82 run effect give @a[distance=..60] saturation 1 254 true
execute in minecraft:the_nether positioned 11.08 159.00 4.82 run tp @e[type=enderman,distance=..60,tag=!end] ~ 0 ~
execute in minecraft:the_nether positioned 11.08 159.00 4.82 run tag @e[type=enderman,distance=..60,tag=!end] add end
scoreboard players add @e[type=armor_stand,tag=score,scores={round=1..}] score 1
execute as @e[tag=score,type=armor_stand,scores={score=0..10}] at @a run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air replace glass
execute as @e[tag=score,type=armor_stand,scores={score=-10..0}] run scoreboard players set @a death 17
execute as @e[tag=score,type=armor_stand,scores={score=-200}] run effect give @a minecraft:instant_health 1 15 true
execute as @e[tag=score,type=armor_stand,scores={score=-150}] run effect give @a minecraft:instant_health 1 15 true
execute as @e[tag=score,type=armor_stand,scores={score=-100}] run effect give @a minecraft:instant_health 1 15 true
execute as @e[tag=score,type=armor_stand,scores={score=-50}] run effect give @a minecraft:instant_health 1 15 true
execute as @e[tag=score,type=armor_stand,scores={score=-10}] run effect give @a minecraft:instant_health 1 15 true
execute as @e[tag=score,type=armor_stand,scores={score=-160..0}] run execute as @e[tag=start,type=armor_stand] at @s run execute as @a[gamemode=survival,distance=1..] run tag @s add botch
execute as @e[tag=score,type=armor_stand,scores={score=-160..0}] run execute as @e[tag=start,type=armor_stand] at @s run execute as @a[gamemode=survival,distance=1..] run function a:zzzbotched
execute as @e[tag=score,type=armor_stand,scores={score=-160..0}] run execute as @a[scores={death=18..},gamemode=survival] run tag @s add botchd
execute as @e[tag=score,type=armor_stand,scores={score=-160..0}] run execute as @a[scores={death=18..},gamemode=survival] run function a:zzzdied

execute as @a[scores={health=1..500}] if entity @e[tag=score,type=armor_stand,scores={score=-5..-1}] run execute at @s run spawnpoint @s ~ ~50 ~
execute as @e[tag=score,type=armor_stand,scores={score=-5}] run execute as @e[tag=start] run kill @s

execute as @e[tag=score,scores={score=0..99}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"score"},"color":"aqua"}
execute as @e[tag=score,scores={score=100..199}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"score"},"color":"green"}
execute as @e[tag=score,scores={score=200..299}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"score"},"color":"yellow"}
execute as @e[tag=score,scores={score=300..399}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"score"},"color":"gold"}
execute as @e[tag=score,scores={score=400..499}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"score"},"color":"red"}
execute as @e[tag=score,scores={score=500..699}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"score"},"color":"dark_red"}
execute as @e[tag=score,scores={score=700..799}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"score"},"color":"dark_gray"}
execute as @e[tag=score,scores={score=800..}] run title @a[tag=!a] actionbar {"score":{"name":"@s","objective":"score"},"color":"black"}

execute as @a[team=a,scores={death=18,health=1..500},tag=!a] if entity @e[tag=score,scores={score=0..}] run function a:victory
tag @a[scores={death=18,health=1..500},tag=!a] add a
tag @a[tag=!new] add new
team join a @a[tag=!new]
execute as @e[tag=newcheck] run execute as @a run execute unless score @s health matches -69421.. run schedule function a:zzzjoin 1t


execute as @e[tag=score,scores={score=-200}] run title @a title {"text":"10","color":"green"}
execute as @e[tag=score,scores={score=-180}] run title @a title {"text":"9","color":"green"}
execute as @e[tag=score,scores={score=-160}] run title @a title {"text":"8","color":"green"}
execute as @e[tag=score,scores={score=-140}] run title @a title {"text":"7","color":"green"}
execute as @e[tag=score,scores={score=-120}] run title @a title {"text":"6","color":"green"}
execute as @e[tag=score,scores={score=-100}] run title @a title {"text":"5","color":"yellow"}
execute as @e[tag=score,scores={score=-80}] run title @a title {"text":"4","color":"yellow"}
execute as @e[tag=score,scores={score=-60}] run title @a title {"text":"3","color":"gold"}
execute as @e[tag=score,scores={score=-40}] run title @a title {"text":"2","color":"red"}
execute as @e[tag=score,scores={score=-20}] run title @a title {"text":"1","color":"red"}
execute as @e[tag=score,scores={score=0}] run title @a title {"text":"GO!","color":"dark_red"}


execute as @e[tag=score,scores={score=-200}] at @a run playsound minecraft:block.note_block.bass player @a
execute as @e[tag=score,scores={score=-180}] at @a run playsound minecraft:block.note_block.bass player @a
execute as @e[tag=score,scores={score=-160}] at @a run playsound minecraft:block.note_block.bass player @a
execute as @e[tag=score,scores={score=-140}] at @a run playsound minecraft:block.note_block.bass player @a
execute as @e[tag=score,scores={score=-120}] at @a run playsound minecraft:block.note_block.bass player @a
execute as @e[tag=score,scores={score=-100}] at @a run playsound minecraft:block.note_block.bass player @a
execute as @e[tag=score,scores={score=-80}] at @a run playsound minecraft:block.note_block.bass player @a
execute as @e[tag=score,scores={score=-60}] at @a run playsound minecraft:block.note_block.bass player @a
execute as @e[tag=score,scores={score=-40}] at @a run playsound minecraft:block.note_block.bass player @a
execute as @e[tag=score,scores={score=-20}] at @a run playsound minecraft:block.note_block.bass player @a
execute as @e[tag=score,scores={score=0}] at @a run playsound minecraft:entity.ender_dragon.growl player @a

execute as @e[type=minecraft:armor_stand,tag=score,scores={score=-199}] at @s if entity @a[distance=..35,gamemode=survival] run function a:zzzbotched
execute as @e[type=minecraft:armor_stand,tag=score,scores={score=-19}] at @s if entity @a[distance=..35,gamemode=survival] run function a:zzzbotched
execute as @e[type=minecraft:armor_stand,tag=score,scores={score=-240..-1}] at @s if entity @a[scores={glass=1..}] run function a:zzzglass

execute as @e[type=minecraft:armor_stand,tag=score,scores={score=10..60000,overkill=1..}] if score @s overkill <= @s score run kill @a[scores={death=17,health=0..501}]
execute as @e[type=minecraft:armor_stand,tag=score,scores={score=10..60000,overkill=1..}] if score @s overkill <= @s score run tellraw @a {"text":"Max damage threshold reached! Killing all remaining players...","color":"dark_red"}
execute as @e[type=minecraft:armor_stand,tag=score,scores={score=10..60000,overkill=1..}] if score @s overkill <= @s score run scoreboard players set @s overkill 69420