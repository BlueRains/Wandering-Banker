execute unless predicate banker:air if score @s pos.y <= worldheight settings run function banker:height_change
execute if predicate banker:air if predicate banker:validsurface run function banker:summon
