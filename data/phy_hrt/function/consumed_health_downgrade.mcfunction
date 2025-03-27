#consumed health Ripper

#reset trigger
advancement revoke @s only phy_hrt:functional/eat_healthnt_item

#store player health
scoreboard players add @s phy.hearts.playerhealth 0
execute as @s store result score @s phy.hearts.playerhealth run attribute @s minecraft:generic.max_health get

#advancement
execute if score @s phy.hearts.playerhealth matches 4 run advancement grant @s only phytons_hearts:danger_is_my_middle_name


#Change health if health not bellow minimum
execute if score @s phy.hearts.playerhealth matches 3.. run function phy_hrt:modify_healthnt


#clears gold apple effects
execute as @s run scoreboard players set @s phy.triggered 1
schedule function phy_hrt:cleareffect 1t