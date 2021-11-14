data modify storage banker:offers villager set from entity @s Offers.Recipes
# Iron
data modify storage banker:offers bin set from storage banker:offers villager[0]
data modify storage banker:offers bin.sell set from storage banker:offers currency
scoreboard players operation $in math = $ironmin wb_settings
scoreboard players operation $in1 math = $ironmax wb_settings
function math:rng/range
execute store result storage banker:offers bin.sell.Count double 1 run scoreboard players get $out math
data modify storage banker:offers villager[0] set from storage banker:offers bin
# Gold
data modify storage banker:offers bin set from storage banker:offers villager[1]
data modify storage banker:offers bin.sell set from storage banker:offers currency
scoreboard players operation $in math = $goldmin wb_settings
scoreboard players operation $in1 math = $goldmax wb_settings
function math:rng/range
execute store result storage banker:offers bin.sell.Count double 1 run scoreboard players get $out math
data modify storage banker:offers villager[1] set from storage banker:offers bin
# Amethyst
data modify storage banker:offers bin set from storage banker:offers villager[2]
data modify storage banker:offers bin.sell set from storage banker:offers currency
scoreboard players operation $in math = $amethystmin wb_settings
scoreboard players operation $in1 math = $amethystmax wb_settings
function math:rng/range
execute store result storage banker:offers bin.sell.Count double 1 run scoreboard players get $out math
data modify storage banker:offers villager[2] set from storage banker:offers bin
# Emerald
data modify storage banker:offers bin set from storage banker:offers villager[3]
data modify storage banker:offers bin.sell set from storage banker:offers currency
scoreboard players operation $in math = $emeraldmin wb_settings
scoreboard players operation $in1 math = $emeraldmax wb_settings
function math:rng/range
execute store result storage banker:offers bin.sell.Count double 1 run scoreboard players get $out math
data modify storage banker:offers villager[3] set from storage banker:offers bin
# Quartz
data modify storage banker:offers bin set from storage banker:offers villager[4]
data modify storage banker:offers bin.sell set from storage banker:offers currency
scoreboard players operation $in math = $quartzmin wb_settings
scoreboard players operation $in1 math = $quartzmax wb_settings
function math:rng/range
execute store result storage banker:offers bin.sell.Count double 1 run scoreboard players get $out math
data modify storage banker:offers villager[4] set from storage banker:offers bin
# Lapis
data modify storage banker:offers bin set from storage banker:offers villager[5]
scoreboard players operation $in math = $lapismin wb_settings
scoreboard players operation $in1 math = $lapismax wb_settings
function math:rng/range
execute store result storage banker:offers bin.sell.Count double 1 run scoreboard players get $out math
data modify storage banker:offers villager[5] set from storage banker:offers bin
# Diamond
data modify storage banker:offers bin set from storage banker:offers villager[6]
scoreboard players operation $in math = $diamondmin wb_settings
scoreboard players operation $in1 math = $diamondmax wb_settings
function math:rng/range
execute store result storage banker:offers bin.sell.Count double 1 run scoreboard players get $out math
data modify storage banker:offers villager[6] set from storage banker:offers bin
# Netherite
data modify storage banker:offers bin set from storage banker:offers villager[7]
scoreboard players operation $in math = $netheritemin wb_settings
scoreboard players operation $in1 math = $netheritemax wb_settings
function math:rng/range
data modify storage banker:offers bin.sell set from storage banker:offers currency
execute store result storage banker:offers bin.sell.Count double 1 run scoreboard players get $out math
data modify storage banker:offers villager[7] set from storage banker:offers bin
data modify entity @s Offers.Recipes set from storage banker:offers villager
data remove storage banker:offers villager