#修改游戏流程计算器
scoreboard players set game djzc.gameflow 0
#善后工作
effect clear @e[type=minecraft:armor_stand]
bossbar set minecraft:time visible false
scoreboard players add @a[team=T] djzc.fight 1
scoreboard players add @a[team=CT] djzc.fight 1
scoreboard players set @a djzc.prepare 0
gamerule mob_griefing true
advancement revoke @a from djzc444:tool/root

#默认重生点
execute as @a run spawnpoint @s -245 65 -630
gamerule command_block_output true
#提示游戏结束
tellraw @a [{translate:"djzc.msg.end",fallback:"游戏已结束！",color:"green"}]
tellraw @a [{translate:"djzc.msg.play_again",fallback:"点此再玩一局",color:"red",hover_event:{action:"show_text",value:{translate:"djzc.msg.play_again.desc",fallback:"进入准备状态"}},click_event:{action:"run_command",command:"trigger djzc.prepare set 1"}}]

#将准备情况显示在玩家列表中
scoreboard objectives setdisplay list djzc.count_kill

schedule function djzc444:game/music_stop 10s replace