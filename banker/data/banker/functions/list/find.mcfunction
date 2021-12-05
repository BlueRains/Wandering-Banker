#define storage list:compare
#define storage list:iteration
# list_find.mcfunction --
# Set current to null to check if list is empty in the next step
data modify storage list:iteration Current set value {}

# Set current to first item in list and check if it was successfull. if not loop wil exit if it hits iteration_continue.
execute store success score IterationSuccess wb_settings run data modify storage list:iteration Current set from storage list:iteration List[0]

# Remove currently processed item from list.
data remove storage list:iteration List[0]

# Lists should always come as [Slot, id] pair lists 
data modify storage list:compare A set from storage list:iteration Current.Slot


#tellraw @a [{"text":"Compared: "},{"storage":"list:compare","nbt":"A"},{"text":" and "},{"storage":"list:compare","nbt":"B"},{"text":" ("},{"storage":"list:iteration","nbt":"Current.id"},{"text":")"}]
# If an overwrite happens, a 1 will be stored in Global(fake player)'s CTemp score. If values are the same, a 0 will be stored.
execute store success score CompFail wb_settings run data modify storage list:compare A set from storage list:compare B
#tellraw @a [{"text":"A != B: "},{"score":{"name":"CompFail","objective": "wb_settings"}}]


# If list item is what we're searching for. run exit loop procedures.
execute if score CompFail wb_settings matches 0 run function banker:list/exit

#if not continue iteration (until list is empty)
execute if score CompFail wb_settings matches 1 run function banker:list/continue