give @p iron_sword[enchantments={sharpness:90,knockback:1,fire_aspect:2},unbreakable={},custom_name={text:"裁纸刀"}]
give @p crossbow[custom_name={text:"一键三连·航空版",italic:true},custom_data={tag:["fly"]},unbreakable={},enchantments={infinity:1,quick_charge:4}]
give @p minecraft:golden_apple 32

give @p trident[custom_name={text:"导弹"},lore=[{text:"右键投掷以发射导弹"},{text:"默认为对空模式"},{text:"按住 [SHIFT] 时转换为对地模式"},{text:"（温馨提示：Q键投掷任意物品即可干扰）",color:dark_purple}],enchantments={quick_charge:1}] 8
give @p minecraft:arrow 128

give @p minecraft:ender_pearl[custom_name={text:"（这是装置的一部分）"}] 64
give @p firework_rocket[fireworks={flight_duration:2,explosions:[{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"}]},custom_name={text:"雷枪",color:dark_purple,bold:true},lore=[{text:"栋为调查兵团设计的新雷枪，但它的不是为了对抗巨人......",color:dark_green,italic:true}]] 64
#35层烟花
#give @p egg[custom_name={text:"空地导弹",color:dark_aqua},lore=[{text:"右键以发射，但要当心敌方的干扰措施……"},{text:"（温馨提示：投掷末影之眼即可干扰）"}]] 32
give @p firework_rocket[fireworks={flight_duration:1}] 192
give @p lingering_potion[potion_contents={custom_effects:[{id:"instant_damage",amplifier:4,duration:600}]}] 7
function djzc444:weapon/rocket_10
#give @p snowball[custom_name={text:"空空导弹",color:dark_aqua},lore=[{text:"右键以发射，但要当心敌方的干扰措施……"},{text:"（温馨提示：投掷末影之眼即可干扰）"}]] 64

function djzc444:tag_clear
function djzc444:music_af

tag @p add AF