data modify storage banker:offers second set from storage banker:offers first
data modify storage banker:offers villager[0].uses set value 0
data modify storage banker:offers villager append from storage banker:offers villager[0]
data remove storage banker:offers villager[0]
execute store result score @s wb_settings run data modify storage banker:offers second set from storage banker:offers villager[0]
execute if score @s wb_settings matches 1 run function banker:cycle