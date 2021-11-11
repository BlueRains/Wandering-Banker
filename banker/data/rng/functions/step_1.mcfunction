#Crimson Tardis

scoreboard players operation @s rng_bin *= 2 rng_output
execute if score @s rng_bin > @s rng_input run function rng:step_2
execute unless score @s rng_bin > @s rng_input run function rng:step_1




