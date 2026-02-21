function djzc444:weapon/wea_cl
function djzc444:weapon/trident_ggne

function djzc444:weapon/wea_fishing_rod

give @s golden_carrot[custom_name={translate:"djzc.type_ggne.golden_carrot",fallback:"孩子，你无敌了"}] 32

advancement grant @s only djzc444:fight/wea_ggne
function djzc444:tag_clear
tag @s add GF