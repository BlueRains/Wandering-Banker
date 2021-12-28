# Start
data modify entity @e[type=donkey,limit=1,distance=..10] Leash.UUID set from entity @s UUID
data remove storage banker:offers villager
# Template (Can be inserted at any point in this file)
#data modify storage banker:offers bin set from storage banker:offers itemtemplate
#data modify storage banker:offers item.bin set from storage banker:offers item.template
#scoreboard players operation $in math = $templatemin wb_settings
#scoreboard players operation $in1 math = $templatemax wb_settings
#function banker:trades/buy
#Random trade
function banker:trades/randomtrade
data modify storage banker:offers bin set from storage banker:offers itemtemplate
data modify storage banker:offers item.bin set from storage list:iteration Result
scoreboard players operation $in math = $randommin wb_settings
scoreboard players operation $in1 math = $randommax wb_settings
function banker:trades/buy
data modify storage banker:offers villager append from storage banker:offers bin
# Iron
data modify storage banker:offers bin set from storage banker:offers itemtemplate
data modify storage banker:offers item.bin set from storage banker:offers item.iron
scoreboard players operation $in math = $ironmin wb_settings
scoreboard players operation $in1 math = $ironmax wb_settings
function banker:trades/buy
data modify storage banker:offers villager append from storage banker:offers bin
# Gold
data modify storage banker:offers bin set from storage banker:offers itemtemplate
data modify storage banker:offers item.bin set from storage banker:offers item.gold
scoreboard players operation $in math = $goldmin wb_settings
scoreboard players operation $in1 math = $goldmax wb_settings
function banker:trades/buy
data modify storage banker:offers villager append from storage banker:offers bin
# Amethyst
data modify storage banker:offers bin set from storage banker:offers itemtemplate
data modify storage banker:offers item.bin set from storage banker:offers item.amethyst
scoreboard players operation $in math = $amethystmin wb_settings
scoreboard players operation $in1 math = $amethystmax wb_settings
function banker:trades/buy
data modify storage banker:offers villager append from storage banker:offers bin
# Emerald
data modify storage banker:offers bin set from storage banker:offers itemtemplate
data modify storage banker:offers item.bin set from storage banker:offers item.emerald
scoreboard players operation $in math = $emeraldmin wb_settings
scoreboard players operation $in1 math = $emeraldmax wb_settings
function banker:trades/buy
data modify storage banker:offers villager append from storage banker:offers bin
# Quartz
data modify storage banker:offers bin set from storage banker:offers itemtemplate
data modify storage banker:offers item.bin set from storage banker:offers item.quartz
scoreboard players operation $in math = $quartzmin wb_settings
scoreboard players operation $in1 math = $quartzmax wb_settings
function banker:trades/buy
data modify storage banker:offers villager append from storage banker:offers bin
# Lapis
data modify storage banker:offers bin set from storage banker:offers itemtemplate
data modify storage banker:offers item.bin set from storage banker:offers item.lapis
scoreboard players operation $in math = $lapismin wb_settings
scoreboard players operation $in1 math = $lapismax wb_settings
function banker:trades/buy
data modify storage banker:offers villager append from storage banker:offers bin
# Diamond
data modify storage banker:offers bin set from storage banker:offers itemtemplate
data modify storage banker:offers item.bin set from storage banker:offers item.diamond
scoreboard players operation $in math = $diamondmin wb_settings
scoreboard players operation $in1 math = $diamondmax wb_settings
function banker:trades/buy
data modify storage banker:offers villager append from storage banker:offers bin
# Netherite
data modify storage banker:offers bin set from storage banker:offers itemtemplate
data modify storage banker:offers item.bin set from storage banker:offers item.netherite
scoreboard players operation $in math = $netheritemin wb_settings
scoreboard players operation $in1 math = $netheritemax wb_settings
function banker:trades/buy
data modify storage banker:offers villager append from storage banker:offers bin



#End
data remove storage banker:offers itemtemplate
data remove entity @s Offers.Recipes
data modify entity @s Offers.Recipes set from storage banker:offers villager
data remove storage banker:offers villager
tag @s remove summoned