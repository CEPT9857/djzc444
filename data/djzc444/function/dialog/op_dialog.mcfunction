execute store result storage op boost int 1 run scoreboard players get boost djzc.option
execute if score boost djzc.option matches 0 run data modify storage minecraft:op boost_color set value "red"
execute if score boost djzc.option matches 1 run data modify storage minecraft:op boost_color set value "green"

execute store result storage op debug int 1 run scoreboard players get debug djzc.option
execute if score debug djzc.option matches 0 run data modify storage minecraft:op debug_color set value "red"
execute if score debug djzc.option matches 1 run data modify storage minecraft:op debug_color set value "green"

execute store result storage op gameflow int 1 run scoreboard players get game djzc.gameflow
execute if score game djzc.gameflow matches 0 run data modify storage minecraft:op gameflow_color set value "red"
execute if score game djzc.gameflow matches 1 run data modify storage minecraft:op gameflow_color set value "green"

execute store result storage op harmony int 1 run scoreboard players get harmony djzc.option
execute if score harmony djzc.option matches 0 run data modify storage minecraft:op harmony_color set value "red"
execute if score harmony djzc.option matches 1 run data modify storage minecraft:op harmony_color set value "green"

execute store result storage op missile_mode int 1 run scoreboard players get missile_mode djzc.option
execute if score missile_mode djzc.option matches 0 run data modify storage minecraft:op missile_mode_color set value "yellow"
execute if score missile_mode djzc.option matches 1 run data modify storage minecraft:op missile_mode_color set value "green"
#把状态塞进命令存储，在对话框里可以调用
#为对话框塞入参数
function djzc444:dialog/op with storage minecraft:op