execute store result score @s limy_new run data get entity @s Pos[1] 1000
execute if score @s limy_new < @s limy_old run effect give @s levitation 999999 255 true
execute if score @s limy_new < @s limy_old run tag @s add limity_floating
execute store result score @s limy_old run data get entity @s Pos[1] 1000