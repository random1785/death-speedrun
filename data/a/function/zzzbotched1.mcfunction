execute as @a[tag=botch] run tellraw @a [{"selector":"@s","color":"red","bold":true},{"bold":false,"text":" was not in the starting box!"}]
execute as @a[tag=botch] run title @a title [{"selector":"@s","color":"red","bold":true},{"bold":false,"text":" sucks."}]
tag @a remove botch