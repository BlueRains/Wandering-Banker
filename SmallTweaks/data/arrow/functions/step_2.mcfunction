execute as @e[tag=arrow_dir] store result score ..#x.dir arrow_shoot run data get entity @s Motion[0] 1000000
execute as @e[tag=arrow_origin] store result score ..#x.origin arrow_shoot run data get entity @s Motion[0] 1000000
scoreboard players operation ..#x.dir arrow_shoot -= ..#x.origin arrow_shoot
execute store result entity @s Motion[0] double 0.000001 run scoreboard players get ..#x.dir arrow_shoot

execute as @e[tag=arrow_dir] store result score ..#y.dir arrow_shoot run data get entity @s Motion[1] 1000000
execute as @e[tag=arrow_origin] store result score ..#y.origin arrow_shoot run data get entity @s Motion[1] 1000000
scoreboard players operation ..#y.dir arrow_shoot -= ..#y.origin arrow_shoot
execute store result entity @s Motion[1] double 0.000001 run scoreboard players get ..#y.dir arrow_shoot

execute as @e[tag=arrow_origin] store result score ..#z.origin arrow_shoot run data get entity @s Motion[2] 1000000
execute as @e[tag=arrow_dir] store result score ..#z.dir arrow_shoot run data get entity @s Motion[2] 1000000
scoreboard players operation ..#z.dir arrow_shoot -= ..#z.origin arrow_shoot
execute store result entity @s Motion[2] double 0.000001 run scoreboard players get ..#z.dir arrow_shoot

tag @s remove arrow