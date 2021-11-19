execute unless predicate banker:air unless predicate banker:blocks if score @s pos.y <= $maxspawnheight wb_settings run function banker:height/change
execute if predicate banker:blocks if score @s pos.y <= $maxspawnheight wb_settings run function banker:height/change
execute if score @s pos.y > $maxspawnheight wb_settings run kill @s
execute if predicate banker:air unless predicate banker:blocks unless predicate banker:validsurface run kill @s
execute if predicate banker:air if predicate banker:validsurface run function banker:summon