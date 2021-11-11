#Get pearl placement
execute as @e[limit=1,tag=fol_pearl] store result score #enderpearl.x fol_give run data get entity @s Pos[0]
execute as @e[limit=1,tag=fol_pearl] store result score #enderpearl.y fol_give run data get entity @s Pos[1]
execute as @e[limit=1,tag=fol_pearl] store result score #enderpearl.z fol_give run data get entity @s Pos[2]
#get player placement
execute as @p store result score #player.x fol_give run data get entity @s Pos[0]
execute as @p store result score #player.y fol_give run data get entity @s Pos[1]
execute as @p store result score #player.z fol_give run data get entity @s Pos[2]
#set scoreboard to player placement
scoreboard players operation x fol_give = #player.x fol_give
scoreboard players operation y fol_give = #player.y fol_give
scoreboard players operation z fol_give = #player.z fol_give
#subtract pearl placement
scoreboard players operation x fol_give -= #enderpearl.x fol_give
scoreboard players operation y fol_give -= #enderpearl.y fol_give
scoreboard players operation z fol_give -= #enderpearl.z fol_give