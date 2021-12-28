data modify storage banker:offers villager set from entity @s Offers.Recipes
data modify storage banker:offers villager[0].uses set value 0
data modify storage banker:offers villager[1].uses set value 0
data modify storage banker:offers villager[2].uses set value 0
data modify storage banker:offers villager[3].uses set value 0
data modify storage banker:offers villager[4].uses set value 0
data modify storage banker:offers villager[5].uses set value 0
data modify storage banker:offers villager[6].uses set value 0
data modify storage banker:offers villager[7].uses set value 0
data modify entity @s Offers.Recipes set from storage banker:offers villager
playsound entity.villager.work_cartographer neutral @a