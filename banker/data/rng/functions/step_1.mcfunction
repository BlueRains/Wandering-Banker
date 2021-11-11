#Crimson Tardis

scoreboard players operation @s rng.temp *= $2 rng.temp
execute if score @s rng.temp > @s rng.input run function rng:step_2
execute unless score @s rng.temp > @s rng.input run function rng:step_1