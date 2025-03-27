#consumed health boost


scoreboard players add @s phy.hearts.playerhealth 0
execute as @s store result score @s phy.hearts.playerhealth run attribute @s minecraft:generic.max_health get


advancement revoke @s only phy_hrt:functional/eat_health_item
execute if score @s phy.hearts.playerhealth matches 38 run advancement grant @s only phytons_hearts:overkill


scoreboard players operation @s phy.hearts.playerhealth += fakeplayer phy.hearts.multiplier

execute store result storage phy.hearts.playerhealth newhealth int 1 run scoreboard players get @s phy.hearts.playerhealth

function phy_hrt:set_health with storage minecraft:phy.hearts.playerhealth

#particles
execute as @s if score fakeplayer phy.settings.doparticleeffects matches 1 run function phy_hrt:effects/health_upgrade_particles
#text
execute as @s if score fakeplayer phy.settings.dochatmessages matches 1 run function phy_hrt:effects/damage_upgrade_text
#sound
execute as @s if score fakeplayer phy.settings.dosoundeffects matches 1 run function phy_hrt:effects/health_upgrade_sound


#clears gold apple effects
execute as @s run scoreboard players set @s phy.triggered 1
schedule function phy_hrt:cleareffect 1t