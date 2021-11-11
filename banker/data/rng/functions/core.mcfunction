#Crimson Tardis

execute as @e[scores={rng_input=1..}] run scoreboard players set @s rng_output 0
execute as @e[scores={rng_input=1..}] run scoreboard players set @s rng_bin 1
execute as @e[scores={rng_input=1..}] at @s run function rng:step_0

scoreboard players set 2 rng_output 2
scoreboard players set 1 rng_output 1

#rng_input = input
#rng_output = output