clear @s
#清理物品，防止出错
execute as @s[team=CT] run function djzc444:type/suit_ct/suit_ltjd
execute as @s[team=T] run function djzc444:type/suit_t/suit_ltjd
#分阵营发盔甲

give @s iron_sword[enchantments={sharpness:90,knockback:1,fire_aspect:2},unbreakable={},custom_name={translate:"djzc.type_ltjd.sword",fallback:"裁纸刀"}]
function djzc444:weapon/wea_sanlian_fly
give @s minecraft:golden_apple 32

function djzc444:weapon/missile_aa
function djzc444:weapon/missile_ag

give @s minecraft:ender_pearl[custom_name={translate:"djzc.type_ltjd.ender_pearl",fallback:"（这是装置的一部分）"}] 16
function djzc444:weapon/rocket_ltjd
function djzc444:weapon/missile_ag
give @s firework_rocket[fireworks={flight_duration:2}] 128
give @s lingering_potion[potion_contents={custom_effects:[{id:"instant_damage",amplifier:4,duration:600}]}] 7
function djzc444:weapon/rocket_10
function djzc444:weapon/missile_aa

function djzc444:tag_clear
tag @s add AF

function djzc444:music_af