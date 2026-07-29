#射线检测系统 - 初始化
#djzc555内的逻辑由Deepseek V4 flash生成
#Raycast system initialization

#提示用户启动成功
tellraw @a [{text:"[djzc555] ",color:"aqua"},{translate:"djzc555.msg.load",fallback:"冬季战场-射线检测系统加载成功",color:green}]

scoreboard objectives add djzc555.ray_dist dummy
#当前步数计数器

scoreboard objectives add djzc555.ray_max dummy
#最大步数限制

scoreboard objectives add djzc555.ray_type dummy
#射线类型：0=方块检测 1=实体检测 2=方块+实体检测

scoreboard objectives add djzc555.ray_uid dummy
#唯一ID，用于关联施法者与标记实体

scoreboard objectives add djzc555.ray_step dummy
#步长设置（值×0.1=实际格数，1=0.1格，10=1格）
#默认值1（0.1格精度），轰炸等场景可设为10（1格步长）

scoreboard objectives add djzc555.ray_particle dummy
#射线路径粒子特效：0=关闭 1=end_rod白色粒子
#默认值0（关闭），调试或特效场景可设为1