data modify entity @e[type=donkey,limit=1,distance=..10] Leash.UUID set from entity @s UUID
data modify storage banker:offers villager set from entity @s Offers.Recipes
# Iron
data modify storage banker:offers bin set from storage banker:offers villager[0]
scoreboard players operation $in math = $ironmin wb_settings
scoreboard players operation $in1 math = $ironmax wb_settings
execute if predicate math:binary run function banker:trades/buy
execute if entity @s[tag=!buy] run function banker:trades/sell
tag @s remove buy
data modify storage banker:offers villager[0] set from storage banker:offers bin
# Gold
data modify storage banker:offers bin set from storage banker:offers villager[1]
scoreboard players operation $in math = $goldmin wb_settings
scoreboard players operation $in1 math = $goldmax wb_settings
execute if predicate math:binary run function banker:trades/buy
execute if entity @s[tag=!buy] run function banker:trades/sell
tag @s remove buy
data modify storage banker:offers villager[1] set from storage banker:offers bin
# Amethyst
data modify storage banker:offers bin set from storage banker:offers villager[2]
scoreboard players operation $in math = $amethystmin wb_settings
scoreboard players operation $in1 math = $amethystmax wb_settings
execute if predicate math:binary run function banker:trades/buy
execute if entity @s[tag=!buy] run function banker:trades/sell
tag @s remove buy
data modify storage banker:offers villager[2] set from storage banker:offers bin
# Emerald
data modify storage banker:offers bin set from storage banker:offers villager[3]
scoreboard players operation $in math = $emeraldmin wb_settings
scoreboard players operation $in1 math = $emeraldmax wb_settings
execute if predicate math:binary run function banker:trades/buy
execute if entity @s[tag=!buy] run function banker:trades/sell
tag @s remove buy
data modify storage banker:offers villager[3] set from storage banker:offers bin
# Quartz
data modify storage banker:offers bin set from storage banker:offers villager[4]
scoreboard players operation $in math = $quartzmin wb_settings
scoreboard players operation $in1 math = $quartzmax wb_settings
execute if predicate math:binary run function banker:trades/buy
execute if entity @s[tag=!buy] run function banker:trades/sell
tag @s remove buy
data modify storage banker:offers villager[4] set from storage banker:offers bin
# Lapis
data modify storage banker:offers bin set from storage banker:offers villager[5]
scoreboard players operation $in math = $lapismin wb_settings
scoreboard players operation $in1 math = $lapismax wb_settings
execute if predicate math:binary run function banker:trades/buy
execute if entity @s[tag=!buy] run function banker:trades/sell
tag @s remove buy
data modify storage banker:offers villager[5] set from storage banker:offers bin
# Diamond
data modify storage banker:offers bin set from storage banker:offers villager[6]
scoreboard players operation $in math = $diamondmin wb_settings
scoreboard players operation $in1 math = $diamondmax wb_settings
execute if predicate math:binary run function banker:trades/buy
execute if entity @s[tag=!buy] run function banker:trades/sell
tag @s remove buy
data modify storage banker:offers villager[6] set from storage banker:offers bin
# Netherite
data modify storage banker:offers bin set from storage banker:offers villager[7]
scoreboard players operation $in math = $netheritemin wb_settings
scoreboard players operation $in1 math = $netheritemax wb_settings
execute if predicate math:binary run function banker:trades/buy
execute if entity @s[tag=!buy] run function banker:trades/sell
tag @s remove buy
data modify storage banker:offers villager[7] set from storage banker:offers bin
data modify entity @s Offers.Recipes set from storage banker:offers villager
data remove storage banker:offers villager
tag @s remove summoned