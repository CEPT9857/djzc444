give @p minecraft:golden_apple 32
give @p crossbow[enchantments={quick_charge:5},custom_data={tag:["fly"]},attribute_modifiers=[{type:"movement_speed",operation:"add_multiplied_base",amount:1.0d,id:"minecraft:00000717-0000-095b-0000-1ee900000c2e",slot:"hand"}],custom_name={text:"骑兵枪 MK.III"},lore=[{text:"手持骑兵枪，按潜行键开始垂直机动"}]]
function djzc444:weapon/wea_frag_fly
give @p firework_rocket[custom_name={text:"游击弹",color:aqua,italic:true},enchantments={},tooltip_display={hidden_components:["fireworks"]},fireworks={explosions:[{shape:"small_ball",fade_colors:[6719955]},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"},{shape:"small_ball"}]}] 128
#12层烟花


give @p tipped_arrow[potion_contents={potion:strong_harming}] 96


give @p minecraft:arrow 128

function djzc444:tag_clear

tag @p add GF
tag @p add AF