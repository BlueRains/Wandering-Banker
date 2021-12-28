execute if entity @s[tag=noname] run scoreboard players add @s wb_settings 1
execute if entity @s[tag=noname,scores={wb_settings=600..}] unless entity @p[distance=..128] run function banker:kill
execute if entity @s[tag=noname,name=!"Banker"] run function banker:rename
execute if predicate banker:morning unless predicate banker:notbell run function banker:refresh