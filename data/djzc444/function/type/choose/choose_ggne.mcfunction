scoreboard players reset @s type
#重置计分板，防止BUG
clear @s
#清理物品，防止出错
execute as @s run function djzc444:type/type_ggne

execute as @s[team=CT] run function djzc444:type/suit_ct/suit_ggne
execute as @s[team=T] run function djzc444:type/suit_t/suit_ggne
#分阵营发装备

execute as @s run function djzc444:weapon/books_all