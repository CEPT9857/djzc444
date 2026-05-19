# 获取数组长度
execute store result score len example run data get storage example:data arr

# 如果当前索引 >= 长度，结束
$execute if score $(idx) example >= len example run return 0

# 读取当前元素值
$execute store result score val example run data get storage example:data arr[$(idx)]

# 分支输出
execute if score val example matches 0 run say 0
execute if score val example matches 1 run say 1

# 递归调用下一个（索引+1）
execute store result score next example run scoreboard players add $(idx) example 1
$function djzc444:option/tool_display3 {idx: $(idx)}