give @s iron_sword[enchantments={sharpness:90,knockback:1,fire_aspect:2},unbreakable={},custom_name={text:"裁纸刀"}]
give @s crossbow[custom_name={text:"一键三连·航空版",italic:true},custom_data={tags:["fly"]},unbreakable={},enchantments={infinity:1,quick_charge:4}]
give @s minecraft:golden_apple 32

function djzc444:weapon/missile_aa
function djzc444:weapon/missile_ag

give @s minecraft:ender_pearl[custom_name={text:"（这是装置的一部分）"}] 16
give @s firework_rocket[fireworks={flight_duration:2,explosions:[{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"}]},custom_name={text:"雷枪",color:dark_purple,bold:true},lore=[{text:"栋为调查兵团设计的新雷枪，但它的不是为了对抗巨人......",color:dark_green,italic:true}],enchantment_glint_override=true] 64
#35层烟花
function djzc444:weapon/missile_ag
give @s firework_rocket[fireworks={flight_duration:2}] 128
give @s lingering_potion[potion_contents={custom_effects:[{id:"instant_damage",amplifier:4,duration:600}]}] 7
function djzc444:weapon/rocket_10
function djzc444:weapon/missile_aa

function djzc444:tag_clear
tag @s add AF

function djzc444:music_af