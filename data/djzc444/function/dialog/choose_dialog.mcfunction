scoreboard players reset @s type
#重置计分板，防止BUG

#传入兵种开关状态和字体颜色
execute store result storage type_manage jzb int 1 run scoreboard players get jzb 5
execute if score jzb 5 matches 0 run data modify storage minecraft:type_manage jzb_color set value "red"
execute if score jzb 5 matches 1 run data modify storage minecraft:type_manage jzb_color set value "green"
#近战兵的参数
execute store result storage type_manage jjs int 1 run scoreboard players get jjs 5
execute if score jjs 5 matches 0 run data modify storage minecraft:type_manage jjs_color set value "red"
execute if score jjs 5 matches 1 run data modify storage minecraft:type_manage jjs_color set value "green"
#狙击手的参数
execute store result storage type_manage fkb int 1 run scoreboard players get fkb 5
execute if score fkb 5 matches 0 run data modify storage minecraft:type_manage fkb_color set value "red"
execute if score fkb 5 matches 1 run data modify storage minecraft:type_manage fkb_color set value "green"
#防空兵的参数
execute store result storage type_manage ltjd int 1 run scoreboard players get ltjd 5
execute if score ltjd 5 matches 0 run data modify storage minecraft:type_manage ltjd_color set value "red"
execute if score ltjd 5 matches 1 run data modify storage minecraft:type_manage ltjd_color set value "green"
#航空兵的参数
execute store result storage type_manage scj int 1 run scoreboard players get scj 5
execute if score scj 5 matches 0 run data modify storage minecraft:type_manage scj_color set value "red"
execute if score scj 5 matches 1 run data modify storage minecraft:type_manage scj_color set value "green"
#三叉戟兵的参数
execute store result storage type_manage yqb int 1 run scoreboard players get yqb 5
execute if score yqb 5 matches 0 run data modify storage minecraft:type_manage yqb_color set value "red"
execute if score yqb 5 matches 1 run data modify storage minecraft:type_manage yqb_color set value "green"
#游骑兵的参数
execute store result storage type_manage ggne int 1 run scoreboard players get ggne 5
execute if score ggne 5 matches 0 run data modify storage minecraft:type_manage ggne_color set value "red"
execute if score ggne 5 matches 1 run data modify storage minecraft:type_manage ggne_color set value "green"
#干员·冈格尼尔的参数
execute store result storage type_manage bzb int 1 run scoreboard players get bzb 5
execute if score bzb 5 matches 0 run data modify storage minecraft:type_manage bzb_color set value "red"
execute if score bzb 5 matches 1 run data modify storage minecraft:type_manage bzb_color set value "green"
#板载兵的参数

function djzc444:dialog/type_choose with storage minecraft:type_manage
#启动兵种选择系统
#相关存储代码在second.mcfunction中运行