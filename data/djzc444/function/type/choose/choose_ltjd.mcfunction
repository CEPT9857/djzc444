scoreboard players reset @s type
#重置计分板，防止BUG

execute if score ltjd 5 matches 0 run return run tellraw @s {translate:"djzc.msg.type_manage.ban",fallback:"系统拒绝了你的要求，因为该兵种目前已被游戏禁用",color:red}
#如果兵种被禁用，弹出提示

execute if score @s[team=T] T >= 立体机动 5 run clear @s
execute if score @s[team=CT] CT >= 立体机动 5 run clear @s
#清理物品，防止出错
execute if score @s[team=T] T < 立体机动 5 run title @s title [{translate:"djzc.choose_ltjd.title",fallback:" 击杀数小于5，无法购买","color":"aqua"}]
execute if score @s[team=CT] CT < 立体机动 5 run title @s title [{translate:"djzc.choose_ltjd.title",fallback:" 击杀数小于5，无法购买","color":"aqua"}]
#判断本局有没有5杀,如果没有5杀，拒绝请求

execute if score @s[team=CT] CT >= 立体机动 5 run function djzc444:type/suit_ct/suit_ltjd
execute if score @s[team=T] T >= 立体机动 5 run function djzc444:type/suit_t/suit_ltjd
#分阵营发装备

execute if score @s[team=T] T >= 立体机动 5 run function djzc444:type/type_ltjd
execute if score @s[team=CT] CT >= 立体机动 5 run function djzc444:type/type_ltjd

execute if score @s[team=T] T >= 立体机动 5 run function djzc444:weapon/books_all
execute if score @s[team=CT] CT >= 立体机动 5 run function djzc444:weapon/books_all
#判断本局有没有5杀,如果有5杀，分发装备