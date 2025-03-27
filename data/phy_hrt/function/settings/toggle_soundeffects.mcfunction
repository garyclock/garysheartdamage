
# Store the current value of phy.settings.dochatmessages in a temporary scoreboard
execute store result score fakeplayer phy.settings.temp run scoreboard players get fakeplayer phy.settings.dosoundeffects

# If the value is 0, set it to 1
execute if score fakeplayer phy.settings.temp matches 0 run scoreboard players set fakeplayer phy.settings.dosoundeffects 1

# If the value is still 1 (meaning the first command didn’t change it), set it to 0
execute if score fakeplayer phy.settings.temp matches 1 run scoreboard players set fakeplayer phy.settings.dosoundeffects 0

function phytons_hearts:settings
