scoreboard players set game gameflow 0
#修改游戏流程计算器，提示游戏结束
effect clear @e[type=minecraft:armor_stand]
bossbar set minecraft:time visible false
scoreboard players add @a[team=T] fight 1
scoreboard players add @a[team=CT] fight 1
gamerule mob_griefing true
scoreboard players set @a prepare 0

gamerule command_block_output true
tellraw @a [{text:"游戏已结束！",color:"green"}]
tellraw @a [{text:"点此再玩一局",color:"red",hover_event:{action:"show_text",value:{text:"进入准备状态"}},click_event:{action:"run_command",command:"trigger prepare set 1"}}]

schedule function djzc444:game/music_stop 10s replace