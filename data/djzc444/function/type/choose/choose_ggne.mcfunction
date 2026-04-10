scoreboard players reset @s type
#重置计分板，防止BUG

execute if score ggne 5 matches 0 run return run tellraw @s {translate:"djzc.msg.type_manage.ban",fallback:"系统拒绝了你的要求，因为该兵种目前已被游戏禁用",color:red}
#如果兵种被禁用，弹出提示

clear @s
#清理物品，防止出错
execute as @s run function djzc444:type/type_ggne

execute as @s[team=CT] run function djzc444:type/suit_ct/suit_ggne
execute as @s[team=T] run function djzc444:type/suit_t/suit_ggne
#分阵营发装备

execute as @s run function djzc444:weapon/books_all