summon villager ~ ~ ~ {Tags: ["banker", "noname"], Willing: 0b, CustomName: '{"text":"Banker"}', VillagerData: {level: 99, profession: "minecraft:librarian", type: "minecraft:taiga"}, Offers: {Recipes: [{maxUses: 3, buy: {id: "minecraft:iron_ingot", Count: 1b}, sell: {id: "minecraft:gold_nugget", Count: 1b, tag: {display: {Name: '{"text":"Shmoofs","italic":false}'}, bankerCurrency: 1b}}}, {maxUses: 3, buy: {id: "minecraft:gold_ingot", Count: 1b}, sell: {id: "minecraft:gold_nugget", Count: 1b, tag: {display: {Name: '{"text":"Shmoofs","italic":false}'}, bankerCurrency: 1b}}}, {maxUses: 3, buy: {id: "minecraft:amethyst_shard", Count: 1b}, sell: {id: "minecraft:gold_nugget", Count: 1b, tag: {display: {Name: '{"text":"Shmoofs","italic":false}'}, bankerCurrency: 1b}}}, {maxUses: 3, buy: {id: "minecraft:emerald", Count: 1b}, sell: {id: "minecraft:gold_nugget", Count: 1b, tag: {display: {Name: '{"text":"Shmoofs","italic":false}'}, bankerCurrency: 1b}}}, {maxUses: 3, buy: {id: "minecraft:quartz", Count: 1b}, sell: {id: "minecraft:gold_nugget", Count: 1b, tag: {display: {Name: '{"text":"Shmoofs","italic":false}'}, bankerCurrency: 1b}}}, {maxUses: 3, buy: {id: "minecraft:lapis_lazuli", Count: 1b}, sell: {id: "minecraft:gold_nugget", Count: 1b, tag: {display: {Name: '{"text":"Shmoofs","italic":false}'}, bankerCurrency: 1b}}}, {maxUses: 3, buy: {id: "minecraft:diamond", Count: 1b}, sell: {id: "minecraft:gold_nugget", Count: 1b, tag: {display: {Name: '{"text":"Shmoofs","italic":false}'}, bankerCurrency: 1b}}}, {maxUses: 3, buy: {id: "minecraft:netherite_ingot", Count: 1b}, sell: {id: "minecraft:gold_nugget", Count: 1b, tag: {display: {Name: '{"text":"Shmoofs","italic":false}'}, bankerCurrency: 1b}}}]}}
execute as @e[type=villager,tag=banker] unless score @s timer matches -5.. run function banker:settrades
kill @s