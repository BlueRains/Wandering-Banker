
scoreboard objectives add pos.x dummy
scoreboard objectives add pos.y dummy
scoreboard objectives add pos.z dummy
scoreboard objectives add wb_settings dummy
scoreboard objectives add wb_bin dummy
scoreboard objectives add timer dummy

#Finals DO NOT EDIT
data modify storage banker:currency name set value {id: "minecraft:gold_nugget", Count: 1b, tag: {display: {Name: '{"text":"Shmoofs","italic":false}'}, bankerCurrency: 1b}}
scoreboard players set $-1 wb_settings -1
# Variables
scoreboard players set $maxspawnheight wb_settings 320
scoreboard players set $minspawnheight wb_settings 0
scoreboard players set $pricemultiplier wb_settings 3
scoreboard players set $spawnrange wb_settings 120

# Prices (Buy)
# sell = max price * $pricemultiplier

scoreboard players set $ironmin wb_settings 3
scoreboard players set $ironmax wb_settings 10

# Calculations

scoreboard players operation $negspawnrange wb_settings = $-1 wb_settings
scoreboard players operation $negspawnrange wb_settings *= $spawnrange wb_settings

# Storage
data modify storage banker:currency name.tag.display.Name set value '{"text":"Shmoofs","italic":false}'