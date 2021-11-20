
scoreboard objectives add pos.x dummy
scoreboard objectives add pos.y dummy
scoreboard objectives add pos.z dummy
scoreboard objectives add wb_settings dummy

#Finals DO NOT EDIT
data modify storage banker:offers currency set value {id: "minecraft:gold_nugget", Count: 1b, tag: {Enchantments: [{}], display: {Name: '{"text":"Shmoofs","italic":false}'}, bankerCurrency: 1b}}
scoreboard players set $-1 wb_settings -1
scoreboard players set $2 wb_settings 2

# Variables
data modify storage banker:offers currency.tag.display.Name set value '{"text":"Shmoofs","italic":false}'
scoreboard players set $maxspawnheight wb_settings 320
scoreboard players set $minspawnheight wb_settings 60
scoreboard players set $spawnrange wb_settings 5

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