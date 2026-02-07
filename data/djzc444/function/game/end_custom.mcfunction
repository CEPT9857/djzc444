stopsound @a
gamerule command_block_output true
setblock -380 20 -748 air
#启动
setblock -388 20 -754 air
#T战败判定
bossbar set minecraft:time visible false
scoreboard players add @a[team=T] fight 1
scoreboard players add @a[team=CT] fight 1
gamerule mob_griefing true
scoreboard players set @a prepare 0
tellraw @a [{text:"游戏已结束！",color:"green"}]
tellraw @a [{text:"点此再玩一局",color:"red",hover_event:{action:"show_text",value:{text:"进入准备状态"}},click_event:{action:"run_command",command:"trigger prepare set 1"}}]