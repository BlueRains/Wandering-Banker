#Crimson Tardis

scoreboard objectives add rng_input trigger {"text":"Input"}
scoreboard objectives add rng_output dummy {"text":"Output"}
scoreboard objectives add rng_bin dummy
scoreboard objectives add rng_min trigger {"text":"Minimum"}
scoreboard players enable @a rng_input
