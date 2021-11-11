# store Motion
execute as @e[type=minecraft:arrow] store result score #x test run data get entity @s Motion[0] 1000
execute as @e[type=minecraft:arrow] store result score #y test run data get entity @s Motion[1] 1000
execute as @e[type=minecraft:arrow] store result score #z test run data get entity @s Motion[2] 1000
scoreboard players operation -x test < #x test
scoreboard players operation -y test < #y test
scoreboard players operation -z test < #z test
scoreboard players operation +x test > #x test
scoreboard players operation +y test > #y test
scoreboard players operation +z test > #z test

# Spawn Proofing
execute as @a[scores={proofing=1..2}] at @s run function testing:mobproof/locate.1
execute as @a[scores={proofing=1}] run tellraw @s {"text":"Mobproofing enabled","bold":true,"color":"green"}
execute as @a[scores={proofing=1}] run scoreboard players set @s proofing 2
execute as @a[scores={proofing=1..}] run scoreboard players enable @s proofing
execute as @a[scores={proofing=3}] run tellraw @s {"text":"Mobproofing disabled","bold":true,"color":"red"}
execute as @a[scores={proofing=3}] run scoreboard players set @s proofing 0
#limit y
# endregion

execute as @e[type=area_effect_cloud,tag=sc_stand] at @s run function schematic:complete
execute if score #nr_z sc_bin matches 1.. if score #z sc_bin matches 1 positioned ~ ~1 ~ run schedule function schematic:spreadz 1t
execute if score #nr_z sc_bin matches 1.. if score #z sc_bin matches -1 positioned ~ ~-1 ~ run schedule function schematic:spreadz 1t
execute if score #nr_z sc_bin matches 1.. run scoreboard players remove #nr_z sc_bin 1