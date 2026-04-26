clear @s
#清理物品，防止出错
execute as @s[team=CT] run function djzc444:type/suit_ct/suit_jzb
execute as @s[team=T] run function djzc444:type/suit_t/suit_jzb
#分阵营发盔甲
function djzc444:weapon/wea_heavy_axe
function djzc444:weapon/wea_heavy_sword
give @s minecraft:golden_apple 32
function djzc444:weapon/wea_heavy_pistol
give @s minecraft:chorus_fruit 5
give @s minecraft:potion[potion_contents={potion:strong_strength}] 4
give @s minecraft:arrow 192
give @s minecraft:enchanted_golden_apple 5

function djzc444:tag_clear
tag @s add GF