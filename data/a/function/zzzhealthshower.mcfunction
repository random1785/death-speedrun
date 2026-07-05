execute as @e[tag=score,scores={score=0..}] run execute as @r[gamemode=survival] run tellraw @a[gamemode=spectator,scores={hpmsg=1..}] "----------------------"
execute as @e[tag=score,scores={score=0..}] run execute as @r[gamemode=survival] run tellraw @a[gamemode=spectator,scores={hpmsg=1..}] ""
execute as @e[tag=score,scores={score=0..}] run execute as @a[gamemode=survival,scores={hp=1..4}] run tellraw @a[gamemode=spectator,scores={hpmsg=1..}] [{"color":"dark_red","selector":"@s"},": ",{"bold":true,"score":{"name":"@s","objective":"hp"}}]
execute as @e[tag=score,scores={score=0..}] run execute as @a[gamemode=survival,scores={hp=5..9}] run tellraw @a[gamemode=spectator,scores={hpmsg=1..}] [{"color":"red","selector":"@s"},": ",{"bold":true,"score":{"name":"@s","objective":"hp"}}]
execute as @e[tag=score,scores={score=0..}] run execute as @a[gamemode=survival,scores={hp=10..13}] run tellraw @a[gamemode=spectator,scores={hpmsg=1..}] [{"color":"gold","selector":"@s"},": ",{"bold":true,"score":{"name":"@s","objective":"hp"}}]
execute as @e[tag=score,scores={score=0..}] run execute as @a[gamemode=survival,scores={hp=14..16}] run tellraw @a[gamemode=spectator,scores={hpmsg=1..}] [{"color":"yellow","selector":"@s"},": ",{"bold":true,"score":{"name":"@s","objective":"hp"}}]
execute as @e[tag=score,scores={score=0..}] run execute as @a[gamemode=survival,scores={hp=17..20}] run tellraw @a[gamemode=spectator,scores={hpmsg=1..}] [{"color":"green","selector":"@s"},": ",{"bold":true,"score":{"name":"@s","objective":"hp"}}]
execute as @e[tag=score,scores={score=0..}] run execute as @r[gamemode=survival] run tellraw @a[gamemode=spectator,scores={hpmsg=1..}] ""

schedule function a:zzzhealthshower 40t