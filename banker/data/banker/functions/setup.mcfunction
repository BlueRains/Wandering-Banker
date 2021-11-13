
scoreboard objectives add pos.x dummy
scoreboard objectives add pos.y dummy
scoreboard objectives add pos.z dummy
scoreboard objectives add wb_settings dummy
scoreboard objectives add wb_bin dummy
scoreboard objectives add timer dummy

#Finals DO NOT EDIT
data modify storage banker:offers template set value {maxUses: 3, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:air", Count: 0b}, sell: {id: "minecraft:gold_nugget", Count: 1b, tag: {display: {Name: '{"text":"Shmoofs","italic":false}'}, bankerCurrency: 1b}}, xp: 0, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}
scoreboard players set $-1 wb_settings -1
# Variables
scoreboard players set $maxspawnheight wb_settings 320
scoreboard players set $minspawnheight wb_settings 0
scoreboard players set $spawnrange wb_settings 120

# Prices (Buy)

scoreboard players set $ironmin wb_settings 1
scoreboard players set $ironmax wb_settings 10
scoreboard players set $goldmin wb_settings 1
scoreboard players set $goldmax wb_settings 20
scoreboard players set $amethystmin wb_settings 10
scoreboard players set $amethystmax wb_settings 30
scoreboard players set $emeraldmin wb_settings 20
scoreboard players set $emeraldmax wb_settings 40
scoreboard players set $quartzmin wb_settings 1
scoreboard players set $quartzmax wb_settings 30
scoreboard players set $lapismin wb_settings 1
scoreboard players set $lapismax wb_settings 30
scoreboard players set $diamondmin wb_settings 10
scoreboard players set $diamondmax wb_settings 50
scoreboard players set $netheritemin wb_settings 1
scoreboard players set $netheritemax wb_settings 60

# Calculations

scoreboard players operation $negspawnrange wb_settings = $-1 wb_settings
scoreboard players operation $negspawnrange wb_settings *= $spawnrange wb_settings

# Storage
data modify storage banker:currency name.tag.display.Name set value '{"text":"Shmoofs","italic":false}'