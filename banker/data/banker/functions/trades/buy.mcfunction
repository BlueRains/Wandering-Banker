tag @s add buy
function math:rng/range
data modify storage banker:offers bin.sell set from storage banker:offers currency
data modify storage banker:offers bin.buy.id set from storage banker:offers item.bin
execute if score $out math matches 64.. run data modify storage banker:offers bin.sell.Count set value 64
execute if score $out math matches ..63 store result storage banker:offers bin.sell.Count double 1 run scoreboard players get $out math