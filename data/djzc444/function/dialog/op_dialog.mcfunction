execute store result storage op boost int 1 run scoreboard players get boost 3
execute if score boost 3 matches 0 run data modify storage minecraft:op boost_color set value "red"
execute if score boost 3 matches 1 run data modify storage minecraft:op boost_color set value "green"

execute store result storage op debug int 1 run scoreboard players get debug 3
execute if score debug 3 matches 0 run data modify storage minecraft:op debug_color set value "red"
execute if score debug 3 matches 1 run data modify storage minecraft:op debug_color set value "green"

execute store result storage op gameflow int 1 run scoreboard players get game gameflow
execute if score game gameflow matches 0 run data modify storage minecraft:op gameflow_color set value "red"
execute if score game gameflow matches 1 run data modify storage minecraft:op gameflow_color set value "green"

execute store result storage op harmony int 1 run scoreboard players get harmony 3
execute if score harmony 3 matches 0 run data modify storage minecraft:op harmony_color set value "red"
execute if score harmony 3 matches 1 run data modify storage minecraft:op harmony_color set value "green"
#把状态塞进命令存储，在对话框里可以调用
#为对话框塞入参数
function djzc444:dialog/op with storage minecraft:op