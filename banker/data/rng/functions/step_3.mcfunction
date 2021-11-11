#Crimson Tardis

scoreboard players operation @s rng_bin /= 2 rng_output
execute if score @s rng_input >= @s rng_bin run tag @e[tag=rng_binary,distance=..1,sort=random,limit=1] add rng_output
execute if entity @e[tag=rng_binary,tag=FULL,tag=rng_output,distance=..1] run scoreboard players operation @s rng_output += @s rng_bin
execute if entity @e[tag=rng_binary,tag=FULL,tag=rng_output,distance=..1] run scoreboard players operation @s rng_input -= @s rng_bin
tag @e[tag=rng_binary,distance=..1] remove rng_output
execute if score @s rng_bin > 1 rng_output run function rng:step_3
execute if score @s rng_bin = 1 rng_output run scoreboard players set @s rng_input 0
execute if score @s rng_bin = 1 rng_output run scoreboard players enable @s rng_input