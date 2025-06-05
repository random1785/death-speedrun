execute unless entity @a[scores={death=17,health=0..501}] run schedule function a:zzzhealthcalc1 2s
execute unless entity @a[scores={death=17,health=0..501}] run scoreboard players reset * temp
execute as @a[scores={death=18},tag=a] at @s run playsound minecraft:entity.player.levelup
execute as @a[scores={death=18},tag=a] run title @s title [{"text":"Time taken: ","color":"gold"},{"score":{"name":"@s","objective":"score"}},{"text":" ticks"}]
execute as @a[scores={death=18},tag=a] run gamemode spectator @s
execute as @a[scores={death=18},tag=a] run tellraw @a [{"selector":"@s","color":"green"},{"text":" took "},{"score":{"name":"@s","objective":"score"}},{"text":" ticks to die!"}]
execute as @a[tag=a] run scoreboard players operation @s calc = @s score
scoreboard players set @a[tag=a] death 20