#每秒执行一次的命令
kill @e[type=minecraft:item]
#清理掉落物
execute store result storage time minute int 1 run scoreboard players get 分 time
execute store result storage time second int 1 run scoreboard players get 秒 time
#把时间塞进命令存储，在对话框里可以调用