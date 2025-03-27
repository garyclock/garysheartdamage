#removes heart and gives player heart

#reset trigger
advancement revoke @s only phyton:functional/eat_healthnt_item

#calculate new health
scoreboard players operation @s phy.hearts.playerhealth -= fakeplayer phy.hearts.multiplier

#store new health
execute store result storage phy.hearts.playerhealth newhealth int 1 run scoreboard players get @s phy.hearts.playerhealth

#execute function with stored new health
function phy_hrt:set_health with storage minecraft:phy.hearts.playerhealth

#particles
execute as @s if score fakeplayer phy.settings.doparticleeffects matches 1 run function phy_hrt:effects/health_downgrade_particles
#text
execute as @s if score fakeplayer phy.settings.dochatmessages matches 1 run function phy_hrt:effects/health_downgrade_text
#sound
execute as @s if score fakeplayer phy.settings.dosoundeffects matches 1 run function phy_hrt:effects/health_downgrade_sound


#give player heart
loot give @s loot phy_hrt:health_upgrade