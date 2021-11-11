#Crimson Tardis
scoreboard players operation @s rng.output += @s rng.temp
scoreboard players operation @s rng.input -= @s rng.temp
execute if score @s rng.temp matches 1 run function rng:step_4