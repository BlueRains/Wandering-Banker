execute if entity @s[tag=noname] run scoreboard players add @s timer 1
execute if entity @s[tag=noname,scores={timer=6000..}] unless entity @p[distance=..128] run function banker:kill
execute if entity @s[tag=noname,name=!"Banker"] run function banker:rename