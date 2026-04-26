scoreboard players reset @s type
#重置计分板，防止BUG
execute if score bzb 5 matches 0 run return run tellraw @s {translate:"djzc.msg.type_manage.ban",fallback:"系统拒绝了你的要求，因为该兵种目前已被游戏禁用",color:red}
#如果兵种被禁用，弹出提示
scoreboard players add @s 5 1
#记录已经使用板载兵
execute if score @s 5 > 神风特攻 5 run title @s title [{translate:"djzc.choose_bzb.title",fallback:" 你已玉碎，无法购买","color":"aqua"}]
#判断本局有没有使用过板载兵,如果用过，拒绝请求
execute if score @s 5 <= 神风特攻 5 run function djzc444:type/type_bzb
execute if score @s 5 <= 神风特攻 5 run function djzc444:weapon/books_all
execute if score @s 5 <= 神风特攻 5 run tp @s[team=T] -167.5 70 -822.5
execute if score @s 5 <= 神风特攻 5 run tp @s[team=CT] -433.5 68 -760.5
#判断本局有没有使用过板载兵,如果没用过，分发装备，并送往起始点