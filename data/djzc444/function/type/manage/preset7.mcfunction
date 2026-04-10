#冬季战场-陆战-随机兵种
execute store result storage minecraft:type_manage jzb int 1 run random value 0..1
execute store result storage minecraft:type_manage jjs int 1 run random value 0..1
execute store result storage minecraft:type_manage fkb int 1 run random value 0..1
execute store result storage minecraft:type_manage ltjd int 1 run random value 0..1

execute store result storage minecraft:type_manage scj int 1 run random value 0..1
execute store result storage minecraft:type_manage yqb int 1 run random value 0..1
execute store result storage minecraft:type_manage ggne int 1 run random value 0..1
execute store result storage minecraft:type_manage bzb int 1 run random value 0..1
#通过随机数，随机启用兵种

function djzc444:type/manage/preset7_1 with storage minecraft:type_manage
#下一步函数，设定分数