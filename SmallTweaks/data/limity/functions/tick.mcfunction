execute as @a[gamemode=adventure] run function limity:checkheight
execute as @a[tag=limity_floating] unless block ~ ~-.1 ~ #grouping:walkable run effect clear @p levitation