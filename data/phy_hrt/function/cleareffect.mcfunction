

execute as @a[scores={phy.triggered=1}] run effect clear @s minecraft:absorption
execute as @a[scores={phy.triggered=1}] run effect clear @s minecraft:regeneration
execute as @a[scores={phy.triggered=1}] run effect clear @s minecraft:fire_resistance
execute as @a[scores={phy.triggered=1}] run effect clear @s minecraft:resistance


scoreboard players set @a[scores={phy.triggered=1}] phy.triggered 0