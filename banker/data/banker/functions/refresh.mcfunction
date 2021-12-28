data modify storage banker:offers villager set from entity @s Offers.Recipes
data modify storage banker:offers first set from storage banker:offers villager[0]
function banker:cycle
data modify entity @s Offers.Recipes set from storage banker:offers villager
playsound entity.villager.work_cartographer neutral @a