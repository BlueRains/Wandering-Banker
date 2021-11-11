execute as @a[scores={data=1..}] at @s run tellraw @p {"nbt":"{}","entity":"@e[type=!player,sort=nearest,limit=1]"}
execute as @a[scores={data=1..}] run scoreboard players set @s data 0
scoreboard players enable @s data