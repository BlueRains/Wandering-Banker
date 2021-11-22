execute store result score @s pos.x run data get entity @p Pos[0] 1
execute store result score @s pos.z run data get entity @p Pos[2] 1
execute store result entity @s Pos[1] double 1 run scoreboard players operation @s pos.y = $minspawnheight wb_settings
scoreboard players operation $in math = $negspawnrange wb_settings
scoreboard players operation $in1 math = $spawnrange wb_settings
function math:rng/range
scoreboard players operation @s pos.x += $out math
scoreboard players operation @s pos.x *= $2 wb_settings
execute if score $out math matches 1.. run scoreboard players operation @s pos.x += $-1 wb_settings
execute if score $out math matches ..0 run scoreboard players operation @s pos.x -= $-1 wb_settings
execute store result entity @s Pos[0] double 0.5 run scoreboard players get @s pos.x
scoreboard players operation $in math = $negspawnrange wb_settings
scoreboard players operation $in1 math = $spawnrange wb_settings
function math:rng/range
scoreboard players operation @s pos.z += $out math
scoreboard players operation @s pos.z *= $2 wb_settings
execute if score $out math matches 1.. run scoreboard players operation @s pos.z += $-1 wb_settings
execute if score $out math matches ..0 run scoreboard players operation @s pos.z -= $-1 wb_settings
execute store result entity @s Pos[2] double 0.5 run scoreboard players get @s pos.z
tag @s add aec_banker_heightcheck
tag @s remove aec_banker_location
schedule function banker:height/schedule 1t