tellraw @a {text:"冬季战场v1.0.5加载成功！",color:green}
#加载信息

advancement grant @a only djzc444:fight/root
advancement grant @a from djzc444:intro/root
#初始成就

scoreboard objectives add ctmsg trigger
scoreboard objectives add tmsg trigger
#保证通讯畅通

scoreboard objectives add fight dummy
#战斗次数统计

function djzc444:advancement/detection
#成就检测