# round joiner
execute as @a[scores={temp=1..}] run execute unless score @s health matches -69421.. run scoreboard players operation @s health = @s temp

# new person
execute as @a run execute unless score @s health matches -69421.. run scoreboard players set @s death 0
execute as @a run execute unless score @s health matches -69421.. run gamemode spectator @s
execute as @a run execute unless score @s health matches -69421.. run tellraw @s {"text":"you have joined in the middle of a round! please spectate the current round and wait for a new one to begin.","color":"gray"}
execute as @a run execute unless score @s health matches -69421.. run tp @s 0 302 0
execute as @a run execute unless score @s health matches -69421.. run scoreboard players set @s health -1785