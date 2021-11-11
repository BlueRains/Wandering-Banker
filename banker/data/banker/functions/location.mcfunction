summon area_effect_cloud ~ ~ ~ {Tags: ["aec_banker_ph", "aec_banker_location"], Duration: 2}
execute store result score @s pos.x run data get entity @s Pos[0] 1
execute as @e[tag=aec_banker_ph,tag=aec_banker_location,limit=1] store result entity @s Pos[1] double 1 run scoreboard players operation @s pos.y = $minspawnheight wb_settings
execute store result score @s pos.z run data get entity @s Pos[2] 1
scoreboard players operation @s rng.input = $spawndiameter wb_settings
scoreboard players operation @s rng.min = $spawnrange wb_settings
function rng:step_0
scoreboard players operation @s pos.x += @s rng.output
execute store result entity @e[tag=aec_banker_ph,tag=aec_banker_location,limit=1] Pos[0] double 1 run scoreboard players get @s pos.x
scoreboard players operation @s rng.input = $spawndiameter wb_settings
scoreboard players operation @s rng.min = $spawnrange wb_settings
function rng:step_0
scoreboard players operation @s pos.z += @s rng.output
execute store result entity @e[tag=aec_banker_ph,tag=aec_banker_location,limit=1] Pos[2] double 1 run scoreboard players get @s pos.x
execute as @e[tag=aec_banker_ph,tag=aec_banker_location] run tag @s add aec_banker_heightcheck
execute as @e[tag=aec_banker_ph,tag=aec_banker_location] run tag @s remove aec_banker_location
execute as @e[tag=aec_banker_ph,tag=aec_banker_heightcheck] run function banker:height_check