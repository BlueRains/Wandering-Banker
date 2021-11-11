summon area_effect_cloud ~ ~ ~ {Tags: ["aec_banker_ph", "aec_banker_location"]}
execute store result score @s pos.x run data get entity @s Pos[0] 1024
execute as @e[tag=aec_banker_ph,tag=aec_banker_location,limit=1] store result entity @s Pos[1] double 1 run scoreboard players operation @s pos.y = $minspawnheight settings
execute store result score @s pos.z run data get entity @s Pos[2] 1024
scoreboard players set @s rng_input 128
function rng:step_0
execute store result entity @e[tag=aec_banker_ph,limit=1] Pos[0] double 0.0009765625 run scoreboard players get @s pos.x
scoreboard players set @s rng_input 128
function rng:step_0
execute store result entity @e[tag=aec_banker_ph,limit=1] Pos[2] double 0.0009765625 run scoreboard players get @s pos.x
execute as @e[tag=aec_banker_ph] run tag @s add aec_banker_heightcheck
execute as @e[tag=aec_banker_ph] run function banker:height_check