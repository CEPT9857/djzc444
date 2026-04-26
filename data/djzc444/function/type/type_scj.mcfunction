clear @s
#清理物品，防止出错
execute as @s[team=CT] run function djzc444:type/suit_ct/suit_scj
execute as @s[team=T] run function djzc444:type/suit_t/suit_scj
#分阵营发盔甲
give @s minecraft:chorus_fruit 16
give @s minecraft:golden_apple 32
function djzc444:weapon/trident_yh
give @s minecraft:ender_pearl[custom_name={translate:"djzc.type_scj.ender_pearl",fallback:"末影珍珠"}] 16
function djzc444:weapon/trident_yzxf
give @s minecraft:potion[potion_contents={potion:strong_strength}] 4

function djzc444:tag_clear
tag @s add GF