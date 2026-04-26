execute as @a at @s unless score @s eula matches 1 run dialog show @s djzc444:eula_notice
execute as @a at @s unless score @s eula matches 1 run function djzc444:weapon/book_userbook
execute as @a at @s unless score @s eula matches 1 run tellraw @s {"translate": "djzc.dialog.wiki.before_play.body1","fallback":"温馨提示：冬季战场的大多数用户操作基于对话框系统，如果出现了对话框被截断等问题，请调整游戏视频设置，将界面大小控制在您的屏幕以内","color":"yellow"}
#显示欢迎界面
schedule function djzc444:game/game_eula 60s