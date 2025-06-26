execute in minecraft:the_nether run tp @e[type=zombified_piglin] ~ 0 ~
execute in minecraft:the_nether run place template a:lobbynetherlow -14 127 -17
execute in minecraft:the_nether run place template a:lobbynetherhigh -14 171 -13
execute in minecraft:the_nether run fillbiome -16 127 -17 38 137 27 minecraft:warped_forest
execute in minecraft:the_nether run fillbiome -16 147 -17 38 137 27 minecraft:warped_forest
execute in minecraft:the_nether run fillbiome -16 147 -17 38 157 27 minecraft:warped_forest
execute in minecraft:the_nether run fillbiome -16 167 -17 38 157 27 minecraft:warped_forest
execute in minecraft:the_nether run fillbiome -16 167 -17 38 177 27 minecraft:warped_forest
kill @e[type=item]
execute in minecraft:the_nether run forceload remove all
