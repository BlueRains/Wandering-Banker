#BlueRains


execute unless score @s vamp_bin >= #max_y vamp_bin if block ~ ~ ~ #grouping:non-solid run scoreboard players add @s vamp_bin 1
execute unless score @s vamp_bin >= #max_y vamp_bin if block ~ ~ ~ #grouping:non-solid positioned ~ ~1 ~ run function vampire:step_2
execute if score @s vamp_bin >= #max_y vamp_bin at @s run function vampire:fire