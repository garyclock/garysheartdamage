tellraw @a ""
tellraw @a {"text":"Phytons Hearts Loaded!","bold":true,"italic":true,"color":"dark_red","clickEvent":{"action":"open_url","value":"https://modrinth.com/user/Phyton"},"hoverEvent":{"action":"show_text","contents":["visit my modrinth page!"]}}
tellraw @a ""

#ammount of health taken/given when using items
scoreboard objectives add phy.hearts.multiplier dummy
scoreboard players set fakeplayer phy.hearts.multiplier 2
scoreboard objectives add phy.powers.multiplier dummy
scoreboard players set fakeplayer phy.powers.multiplier 2

#stores playerhealth
scoreboard objectives add phy.hearts.playerhealth dummy
scoreboard objectives add phy.powers.playerdamage dummy

#for checking if a player has died
scoreboard objectives add deathCount minecraft.custom:minecraft.deaths

#for clearing effects from god apple
scoreboard objectives add phy.triggered dummy

#settings
scoreboard objectives add phy.settings.dochatmessages dummy
scoreboard objectives add phy.settings.doparticleeffects dummy
scoreboard objectives add phy.settings.permacap dummy
scoreboard objectives add phy.settings.dosoundeffects dummy


scoreboard players set fakeplayer phy.settings.dochatmessages 1
scoreboard players set fakeplayer phy.settings.doparticleeffects 1
scoreboard players set fakeplayer phy.settings.dosoundeffects 1
scoreboard players set fakeplayer phy.settings.permacap 500


scoreboard objectives add phy.settings.temp dummy
scoreboard players set fakeplayer phy.settings.temp 0


#just for good measure
advancement revoke @a only phy_hrt:functional/eat_health_item
advancement revoke @a only phy_hrt:functional/eat_healthnt_item
advancement revoke @a only phy_hrt:functional/eat_damage_item