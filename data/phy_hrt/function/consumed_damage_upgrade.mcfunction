#consumed damage boost

say "consumed_damage_upgrade.mcfunction"
scoreboard players add @s phy.powers.playerdamage 0
execute as @s store result score @s phy.powers.playerdamage run attribute @s minecraft:generic.attack_damage get


advancement revoke @s only phy_hrt:functional/eat_damage_item
#execute if score @s phy.powers.playerhealth matches 38 run advancement grant @s only phytons_hearts:overkill


scoreboard players operation @s phy.powers.playerdamage += fakeplayer phy.powers.multiplier

execute store result storage phy.powers.playerdamage newdamage int 1 run scoreboard players get @s phy.powers.playerdamage

function phy_hrt:set_damage with storage minecraft:phy.powers.playerdamage

#particles
execute as @s if score fakeplayer phy.settings.doparticleeffects matches 1 run function phy_hrt:effects/health_upgrade_particles
#text
execute as @s if score fakeplayer phy.settings.dochatmessages matches 1 run function phy_hrt:effects/health_upgrade_text
#sound
execute as @s if score fakeplayer phy.settings.dosoundeffects matches 1 run function phy_hrt:effects/health_upgrade_sound


#clears gold apple effects
execute as @s run scoreboard players set @s phy.triggered 1
schedule function phy_hrt:cleareffect 1t