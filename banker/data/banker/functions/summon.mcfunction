summon wandering_trader ~ ~ ~ {Tags: ["banker", "noname", "summoned"], PersistenceRequired: 1b, CustomName: '{"text":"Banker"}'}
summon donkey ~ ~ ~ {ChestedHorse: 1b, Tame: 1b}
execute as @e[type=wandering_trader,tag=banker,tag=summoned] run function banker:trades/set
kill @s