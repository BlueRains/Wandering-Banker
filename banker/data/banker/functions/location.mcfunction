summon area_effect_cloud ~ ~ ~ {Tags: ["aec_banker_ph"]}
execute store result score @s pos.x run data get entity @s Pos[0] 1024
execute store result score @s pos.z run data get entity @s Pos[2] 1024
scoreboard players set @s rng_input 200
function rng:step_1
execute store result entity @e[tag=aec_banker_ph,limit=1] Pos[0] double 0.0009765625 run scoreboard players get @s pos.x
scoreboard players set @s rng_input 200
function rng:step_1
execute store result entity @e[tag=aec_banker_ph,limit=1] Pos[2] double 0.0009765625 run scoreboard players get @s pos.x