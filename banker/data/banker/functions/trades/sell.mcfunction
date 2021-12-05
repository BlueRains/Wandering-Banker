scoreboard players operation $in math *= $pricemultiplier wb_settings
scoreboard players operation $in1 math *= $pricemultiplier wb_settings
function math:rng/range
data modify storage banker:offers bin.buy set from storage banker:offers currency
data modify storage banker:offers bin.sell.id set from storage banker:offers item.bin
execute if score $out math matches ..63 store result storage banker:offers bin.buy.Count double 1 run scoreboard players get $out math
execute if score $out math matches 64.. run data modify storage banker:offers bin.buy.Count set value 64
execute if score $out math matches 64.. run tag @s add expensive
execute if score $out math matches 64.. run scoreboard players remove $out math 64
execute if entity @s[tag=expensive] if score $out math matches ..63
execute if entity @s[tag=expensive] run data modify storage banker:offers bin.buyB set from storage banker:offers currency
execute if entity @s[tag=expensive] if score $out math matches ..63 store result storage banker:offers bin.buyB.Count double 1 run scoreboard players get $out math
execute if entity @s[tag=expensive] if score $out math matches 64.. run data modify storage banker:offers bin.buyB.Count set value 64
tag @s remove expensive