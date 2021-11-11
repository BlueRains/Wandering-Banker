#Crimson Tardis

scoreboard players set @s rng.output 0
scoreboard players set @s rng.temp 1
scoreboard players operation @s rng.input -= @s rng.min
function rng:step_1