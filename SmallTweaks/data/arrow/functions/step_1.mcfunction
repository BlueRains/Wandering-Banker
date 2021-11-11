execute anchored eyes run summon minecraft:armor_stand ~ ~ ~ {Marker: 1b, Tags: ["arrow_origin","arrow_aec"]}
execute anchored eyes run summon minecraft:area_effect_cloud ^ ^ ^3 {Duration: 1, Tags: ["arrow_dir","arrow_aec"]}
summon arrow ^ ^ ^.5 {Tags:["arrow"]}
execute as @e[tag=arrow] at @s run function arrow:step_2
scoreboard players set @s arrow_shoot 0
scoreboard players enable @s arrow_shoot