#重置计分板，防止BUG
scoreboard players reset @s djzc.type_choose
#如果兵种被禁用，弹出提示
execute if score ltjd djzc.type matches 0 run return run tellraw @s {translate:"djzc.msg.type_manage.ban",fallback:"系统拒绝了你的要求，因为该兵种目前已被游戏禁用",color:red}

#判断本局有没有5杀（取得工具成就）
#如果没有，拒绝请求
execute as @s[advancements={djzc444:tool/hkb=false}] run title @s title [{translate:"djzc.choose_ltjd.title",fallback:" 击杀数小于5，无法购买","color":"aqua"}]
#如果有，分发装备
execute as @s[advancements={djzc444:tool/hkb=true}] run function djzc444:type/type_ltjd
execute as @s[advancements={djzc444:tool/hkb=true}] run function djzc444:weapon/books_all