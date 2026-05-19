scoreboard players reset @s 3
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


#处理布尔值控件是否初始勾选
# 近战兵
execute if score jzb 5 matches 0 run data modify storage minecraft:type_manage jzb_ini set value false
execute if score jzb 5 matches 1 run data modify storage minecraft:type_manage jzb_ini set value true
# 狙击手
execute if score jjs 5 matches 0 run data modify storage minecraft:type_manage jjs_ini set value false
execute if score jjs 5 matches 1 run data modify storage minecraft:type_manage jjs_ini set value true
# 防空兵
execute if score fkb 5 matches 0 run data modify storage minecraft:type_manage fkb_ini set value false
execute if score fkb 5 matches 1 run data modify storage minecraft:type_manage fkb_ini set value true
# 航空兵
execute if score ltjd 5 matches 0 run data modify storage minecraft:type_manage ltjd_ini set value false
execute if score ltjd 5 matches 1 run data modify storage minecraft:type_manage ltjd_ini set value true
# 三叉戟兵
execute if score scj 5 matches 0 run data modify storage minecraft:type_manage scj_ini set value false
execute if score scj 5 matches 1 run data modify storage minecraft:type_manage scj_ini set value true
# 游骑兵
execute if score yqb 5 matches 0 run data modify storage minecraft:type_manage yqb_ini set value false
execute if score yqb 5 matches 1 run data modify storage minecraft:type_manage yqb_ini set value true
# 干员·冈格尼尔
execute if score ggne 5 matches 0 run data modify storage minecraft:type_manage ggne_ini set value false
execute if score ggne 5 matches 1 run data modify storage minecraft:type_manage ggne_ini set value true
# 板载兵
execute if score bzb 5 matches 0 run data modify storage minecraft:type_manage bzb_ini set value false
execute if score bzb 5 matches 1 run data modify storage minecraft:type_manage bzb_ini set value true

#处理预设值记忆
#预设1
execute unless score preset 5 matches 1 run data modify storage minecraft:type_manage preset1 set value false
execute if score preset 5 matches 1 run data modify storage minecraft:type_manage preset1 set value true
#预设2
execute unless score preset 5 matches 2 run data modify storage minecraft:type_manage preset2 set value false
execute if score preset 5 matches 2 run data modify storage minecraft:type_manage preset2 set value true
#预设3
execute unless score preset 5 matches 3 run data modify storage minecraft:type_manage preset3 set value false
execute if score preset 5 matches 3 run data modify storage minecraft:type_manage preset3 set value true
#预设4
execute unless score preset 5 matches 4 run data modify storage minecraft:type_manage preset4 set value false
execute if score preset 5 matches 4 run data modify storage minecraft:type_manage preset4 set value true
#预设5
execute unless score preset 5 matches 5 run data modify storage minecraft:type_manage preset5 set value false
execute if score preset 5 matches 5 run data modify storage minecraft:type_manage preset5 set value true
#预设6
execute unless score preset 5 matches 6 run data modify storage minecraft:type_manage preset6 set value false
execute if score preset 5 matches 6 run data modify storage minecraft:type_manage preset6 set value true
#预设7
execute unless score preset 5 matches 7 run data modify storage minecraft:type_manage preset7 set value false
execute if score preset 5 matches 7 run data modify storage minecraft:type_manage preset7 set value true
#预设8
execute unless score preset 5 matches 8 run data modify storage minecraft:type_manage preset8 set value false
execute if score preset 5 matches 8 run data modify storage minecraft:type_manage preset8 set value true

data modify storage minecraft:type_manage template_preset set value 'function djzc444:type/manage/preset$(preset)'
#动态指令模板作为参数，传入对话框中

data modify storage minecraft:type_manage template_confirm set value 'function djzc444:type/manage/main {type_jzb: $(type_jzb),type_jjs: $(type_jjs),type_fkb: $(type_fkb),type_ltjd: $(type_ltjd),type_scj: $(type_scj),type_yqb: $(type_yqb),type_ggne: $(type_ggne),type_bzb: $(type_bzb)}'
#动态指令模板作为参数，传入对话框中

#为对话框塞入参数
function djzc444:dialog/type_manage with storage minecraft:type_manage