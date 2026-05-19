#创建计分板
scoreboard objectives add array_index dummy

# 如果临时数组为空，则停止
execute unless data storage example:data arr_temp[0] run schedule clear djzc444:option/tool_display2
execute unless data storage example:data arr_temp[0] run return 0

# 取出第一个元素的值
execute store result score value array_index run data get storage example:data arr_temp[0]

# 根据值输出
execute if score value array_index matches 0 run say 0
execute if score value array_index matches 1 run say 1

# 删除第一个元素（后面的元素自动前移）
data remove storage example:data arr_temp[0]

#下一个
schedule function djzc444:option/tool_display2 1t