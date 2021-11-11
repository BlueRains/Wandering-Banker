#BlueRains
execute if predicate vampire:daytime as @a[gamemode=!creative,gamemode=!spectator,nbt={Dimension:"minecraft:overworld"},scores={vamp_bin=1..2}] run function vampire:step_1
execute as @a[scores={vamp_bin=1}] run tellraw @s {"text":"Vampire mode enabled","bold":true,"color":"green"}
execute as @a[scores={vamp_bin=1}] run scoreboard players set @s vamp_bin 2
execute as @a[scores={vamp_bin=1..}] run scoreboard players enable @s vamp_bin
execute as @a[scores={vamp_bin=3}] run tellraw @s {"text":"Vampire mode disabled","bold":true,"color":"red"}
execute as @a[scores={vamp_bin=3}] run scoreboard players set @s vamp_bin 0