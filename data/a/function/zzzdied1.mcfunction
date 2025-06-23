execute as @a[tag=botchd] run tellraw @a [{"selector":"@s","color":"red","bold":true},{"bold":false,"text":" somehow managed to die!"}]
execute as @a[tag=botchd] run title @a title [{"selector":"@s","color":"red","bold":true},{"bold":false,"text":" sucks."}]
tag @a remove botchd