#Crimson Tardis

scoreboard players operation @s rng.temp /= $2 rng.temp
execute if score @s rng.input >= @s rng.temp if predicate rng:binary run function rng:math

execute if score @s rng.temp matches 2.. run function rng:step_3
