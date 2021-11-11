scoreboard objectives add pos.x dummy
scoreboard objectives add pos.y dummy
scoreboard objectives add pos.z dummy
scoreboard objectives add settings dummy

scoreboard players set $maxspawnheight settings 320
scoreboard players set $minspawnheight settings 60
scoreboard players set $pricemultiplier settings 3

# Prices (Buy)
# sell = max price * $pricemultiplier

scoreboard players set $ironmin settings 3
scoreboard players set $ironmax settings 10
