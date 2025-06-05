execute as @a[scores={health=1..500}] run scoreboard players operation @s calc *= @e[type=armor_stand,tag=score] multi
execute as @a[scores={health=1..500}] run scoreboard players operation @s calc /= @e[type=armor_stand,tag=score] first
execute as @a[scores={health=1..500}] run scoreboard players operation @s calc -= @e[type=armor_stand,tag=score] multi
scoreboard players set @a[scores={calc=150..,health=1..500}] calc 150
scoreboard players set @a[scores={calc=..0,health=1..500}] calc 0
execute as @a[scores={health=1..500}] run tellraw @a [{"color":"gold","score":{"name":"@s","objective":"calc"}},{"text":" damage dealt to "},{"selector":"@s"},{"text":"!"}]