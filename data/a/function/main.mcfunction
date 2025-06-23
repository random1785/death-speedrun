function a:murder
scoreboard players reset *
gamerule doImmediateRespawn true
time set 0
team add a
team modify a collisionRule pushOwnTeam
team modify a friendlyFire true
team modify a color reset
difficulty easy
gamerule keepInventory false
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
schedule function a:zzzspawn 5t
execute in the_nether run forceload add -13 -14 25 24
place template a:lobbyoverworld -12 295 -14
setworldspawn 0 302 0
spawnpoint @a 0 302 0
tp @a 0 302 0
gamemode survival @a
gamerule spawnRadius 2

# TEXT DISPLAYS
kill @e[type=text_display]
summon text_display -9.00 302 0.50 {Glowing:1b,line_width:600,Rotation:[-90F,0F],text:[{"bold":true,"text":"Allowed client modifications:","underlined":true},{"bold":false,"text":"\n No hacked clients are allowed.\n","underlined":false},{"bold":false,"text":"Any mod that gathers information about the seed, such as minimap mods, mapping mods, entity trackers, etc. are not allowed. ","underlined":false},{"bold":false,"text":"\nHowever, you are allowed to use gamma utils or fullbright to increase your vision during nighttime/in caves provided that you do not toggle between multiple gamma values.","underlined":false},{"bold":true,"text":"Health and damage: ","underlined":false},{"bold":false,"italic":false,"strikethrough":false,"text":"Each player starts of with 500 health. The first player to finish takes no damage, and each subsequent player takes damage equivalent to the % difference between their time and the first player's time. However, damage is capped at 150.\n","underlined":false},{"bold":false,"text":"For example, if I took 1000 ticks and someone else took 1500 ticks, they would take 50 damage. Another person who took 3000 ticks would have taken 200 damage, but the 150 damage cap will make it 150.\n","underlined":false},{"bold":false,"text":"If your health reaches 0, you are eliminated. The last player standing wins!","underlined":false}]}
summon text_display 0.50 303 9.50 {Glowing:1b,line_width:600,Rotation:[180F,0F],text:[{"bold":true,"text":"Allowed client modifications:","underlined":true},{"bold":false,"text":"\n No hacked clients are allowed.\n","underlined":false},{"bold":false,"text":"Any mod that gathers information about the seed, such as minimap mods, mapping mods, entity trackers, etc. are not allowed. ","underlined":false},{"bold":false,"text":"\nHowever, you are allowed to use gamma utils or fullbright to increase your vision during nighttime/in caves provided that you do not toggle between multiple gamma values.","underlined":false}]}
summon text_display 0.50 302 -9.50 {Glowing:1b,line_width:600,text:[{"bold":true,"text":"Wifiesland-event-specific descriptions:","underlined":true},{"bold":false,"text":"\n After each round (when one player is left with a positive health value), 5 points will be awarded to first place, 3 points for second, and 1 point for third. If two players are eliminated at the same time, the tie will be broken by health remaining.\n","underlined":false},{"bold":false,"text":"The first person to reach 9 points wins! The second person, third person, etc. will get 2nd and 3rd. ","underlined":false},{"bold":false,"text":"\nIf multiple people reach 9 points at the same time, the tiebreakers will go as follows:","underlined":false},{"text":"\n1. ","underlined":false},{"bold":false,"text":"Number of points (e.g. 11 points to 9 points)\n","underlined":false},{"text":"2.","underlined":false},{"bold":false,"text":" Number of first place finishes","underlined":false},{"text":"\n3.","underlined":false},{"bold":false,"text":" Average health remaining on the first place finishes","underlined":false}]}

execute unless entity @e[type=minecraft:armor_stand,limit=1,tag=score] run summon minecraft:armor_stand 0 330 0 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["score"]}
scoreboard players set @e[type=armor_stand,tag=score] round 0

function a:zzzfiveschecker