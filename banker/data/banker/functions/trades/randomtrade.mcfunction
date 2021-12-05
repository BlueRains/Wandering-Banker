execute store result score $in1 math run data get storage banker:offers randomlist
scoreboard players set $in math 1
function math:rng/range
execute store result storage list:compare B int 1 run scoreboard players get $out math
data modify storage list:iteration List set from storage banker:offers randomlist
function banker:list/find
data modify storage banker:offers item.bin set from storage list:iteration Result
