clear @s
#清理物品，防止出错
execute as @s[team=CT] run function djzc444:type/suit_ct/suit_yqb
execute as @s[team=T] run function djzc444:type/suit_t/suit_yqb
#分阵营发盔甲
give @s minecraft:golden_apple 32
function djzc444:weapon/spear_yqb
function djzc444:weapon/wea_frag_fly
function djzc444:weapon/wea_light_pistol
function djzc444:weapon/rocket_jjs
give @s tipped_arrow[potion_contents={potion:strong_harming}] 96
give @s minecraft:arrow 128
function djzc444:tag_clear
tag @s add GF