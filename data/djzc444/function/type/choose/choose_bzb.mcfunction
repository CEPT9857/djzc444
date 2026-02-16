scoreboard players reset @s type
#重置计分板，防止BUG
execute if score @s 5 < 神风特攻 5 run clear @s
#清理物品，防止出错
scoreboard players add @s 5 1
execute if score @s 5 > 神风特攻 5 run title @s title [{"text":" 你已玉碎，无法购买","color":"aqua"}]
#判断本局有没有使用过板载兵,如果用过，拒绝请求

execute if score @s 5 <= 神风特攻 5 run function djzc444:type/type_bzb
execute if score @s 5 <= 神风特攻 5 run function djzc444:weapon/books_all
execute if score @s 5 <= 神风特攻 5 run tp @s[team=T] -167.5 70 -822.5
execute if score @s 5 <= 神风特攻 5 run tp @s[team=CT] -433.5 68 -760.5
#判断本局有没有使用过板载兵,如果没用过，分发装备，并送往起始点