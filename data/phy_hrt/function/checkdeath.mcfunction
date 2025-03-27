#reset trigger
scoreboard players set @s deathCount 0


#execute if score @s phy.hearts.playerhealth matches 42.. run scoreboard players operation @s phy.hearts.playerhealth -= fakeplayer phy.hearts.multiplier
#execute store result storage phy.hearts.playerhealth newhealth int 1 run scoreboard players get @s phy.hearts.playerhealth
#execute run function phy_hrt:set_health with storage phy.hearts.playerhealth

# Health
scoreboard players add @s phy.hearts.playerhealth 0
execute as @s store result score @s phy.hearts.playerhealth run attribute @s minecraft:generic.max_health get

scoreboard players operation fakeplayer phy.settings.temp = fakeplayer phy.settings.permacap
scoreboard players operation fakeplayer phy.settings.temp += fakeplayer phy.hearts.multiplier

execute if score @s phy.hearts.playerhealth >= fakeplayer phy.settings.temp run scoreboard players operation @s phy.hearts.playerhealth -= fakeplayer phy.hearts.multiplier
execute store result storage phy.hearts.playerhealth newhealth int 1 run scoreboard players get @s phy.hearts.playerhealth
execute run function phy_hrt:set_health with storage phy.hearts.playerhealth

scoreboard players set fakeplayer phy.settings.temp 0

# Damage
scoreboard players add @s phy.powers.playerdamage 0
execute as @s store result score @s phy.powers.playerdamage run attribute @s minecraft:generic.attack_damage get

scoreboard players operation fakeplayer phy.settings.temp = fakeplayer phy.settings.permacap
scoreboard players operation fakeplayer phy.settings.temp += fakeplayer phy.powers.multiplier

execute if score @s phy.powers.playerdamage >= fakeplayer phy.settings.temp run scoreboard players operation @s phy.powers.playerdamage -= fakeplayer phy.powers.multiplier
execute store result storage phy.powers.playerdamage newdamage int 1 run scoreboard players get @s phy.powers.playerdamage
execute run function phy_hrt:set_damage with storage phy.powers.playerdamage

scoreboard players set fakeplayer phy.settings.temp 0

