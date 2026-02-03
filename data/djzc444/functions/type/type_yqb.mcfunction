give @p minecraft:golden_apple 32
give @p minecraft:crossbow{RepairCost: 0, Enchantments: [{id: "minecraft:quick_charge", lvl: 5s}], Damage: 0,Tags:["fly"], Charged: 0b, AttributeModifiers: [{Amount: 1.0d, Slot: "mainhand", Operation: 1, UUID: [I; 1815, 2395, 7913, 3118], AttributeName: "generic.movement_speed", Name: "noName"}, {Amount: 1.0d, Slot: "offhand", Operation: 1, UUID: [I; 5958, 4959, 7939, 6476], AttributeName: "generic.movement_speed", Name: "noName"}, {Amount: 0.0d, Slot: "mainhand", Operation: 0, UUID: [I; 4759, 2248, 9565, 6368], AttributeName: "generic.follow_range", Name: "noName"}],Unbreakable:1b, display: {Name: '{"text":"骑兵枪 MK.III"}',Lore:['{"text":"手持骑兵枪，按潜行键开始垂直机动"}']}, ChargedProjectiles: []}
function djzc444:weapon/wea_frag_fly
give @p minecraft:firework_rocket{display:{Name:"[{\"text\":\"游击弹\",\"color\":\"aqua\",\"bold\":false,\"italic\":true,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"},HideFlags:32,Enchantments:[{}],Fireworks:{Explosions:[{Type:0,Colors:[I;0],FadeColors:[I;41727]},{Type:0,Colors:[I;0],FadeColors:[I;0]},{Type:0,Colors:[I;0],FadeColors:[I;0]},{Type:0,Colors:[I;0],FadeColors:[I;0]},{Type:0,Colors:[I;0],FadeColors:[I;0]},{Type:0,Colors:[I;0],FadeColors:[I;0]},{Type:0,Colors:[I;0],FadeColors:[I;0]},{Type:0,Colors:[I;0],FadeColors:[I;0]},{Type:0,Colors:[I;0],FadeColors:[I;0]},{Type:0,Colors:[I;0],FadeColors:[I;0]},{Type:0,Colors:[I;0],FadeColors:[I;0]},{Type:0,Colors:[I;0],FadeColors:[I;0]}]}} 128
give @p minecraft:tipped_arrow{Potion: "minecraft:strong_harming"} 96
give @p minecraft:arrow 128

function djzc444:tag_clear

tag @p add GF
tag @p add AF