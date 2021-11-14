### Cloud Notes ###
# sin($in math)

execute unless entity @e[type=marker,tag=cwmath] run function math:trig/zprivate/init

execute as @e[type=marker,tag=cwmath,limit=1] at @s run function math:trig/zprivate/sin