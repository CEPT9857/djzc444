#存储数组
data modify storage example:data arr set value [0,1,1,0,1]

#初始化数组副本
data modify storage example:data arr_temp set from storage example:data arr

#运行数组输出
function djzc444:option/tool_display2

#current_index：当前索引（虚拟玩家名，表示正在处理第几个元素）
#arr->array：数列
#array_index：计分板名称，意为“数组索引”
#length：长度（虚拟玩家，存储数组长度）
#value：元素值（虚拟玩家，存储当前读取到的数字）