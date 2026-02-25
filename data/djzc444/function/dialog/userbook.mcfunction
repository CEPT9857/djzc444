 $dialog show @s \
 {\
    type:"multi_action",\
    "pause": false,\
    title:[\
    {\
    "translate": "djzc.dialog.userbook",\
    "fallback":"冬战成员用书",\
    "hover_event": {\
    "action": "show_text",\
    "value": {\
        "translate": "djzc.dialog.author1",\
        "fallback": "冬战制作组 制作"\
    }\
    }\
    }\
    ],\
    body:[\
    {\
    type:"plain_message",\
    contents:[\
        {\
            "translate": "djzc.dialog.time",\
            "fallback":"剩余时间："\
        },\
        {\
            "text":"$(minute)"\
        },\
        {\
            "translate": "djzc.dialog.time_minute",\
            "fallback":"分"\
        },\
        {\
            "text":"$(second)"\
        },\
        {\
            "translate": "djzc.dialog.time_second",\
            "fallback":"秒"\
        }\
    ]\
    },\
    {\
        "type": "plain_message",\
        "contents": \
        {\
            "translate": "djzc.dialog.tp_system",\
            "fallback": "点击进入传送系统",\
            "color":"light_purple",\
            "underlined": true,\
            "click_event": {\
                "action": "run_command",\
                "command":"trigger 3 set 16"\
            }\
        }\
    }\
    ],\
    "columns": 4,\
    "actions": [\
        {\
            "label":{\
                "translate": "djzc.dialog.userbook.kill_dz",\
                "fallback": "总击杀数",\
                "color":"green"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger 3 set 1"\
            }\
        },\
        {\
            "label":{\
                "translate": "djzc.dialog.userbook.death_dz",\
                "fallback": "总阵亡数",\
                "color":"black"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger 3 set 2"\
            }\
        },\
        {\
            "label":{\
                "translate": "djzc.dialog.userbook.kill_ct",\
                "fallback": "CT击杀数",\
                "color":"blue"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger 3 set 3"\
            }\
        },\
        {\
            "label":{\
                "translate": "djzc.dialog.userbook.kill_t",\
                "fallback": "T击杀数",\
                "color":"dark_red"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger 3 set 4"\
            }\
        },\
        {\
            "label":{\
                "translate": "djzc.dialog.userbook.fight",\
                "fallback": "战斗场次"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger 3 set 5"\
            }\
        },\
        {\
            "label":{\
                "translate": "djzc.dialog.userbook.win",\
                "fallback": "胜利场次"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger 3 set 6"\
            }\
        },\
        {\
            "label":{\
                "translate": "djzc.dialog.userbook.lost",\
                "fallback": "失败场次"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger 3 set 7"\
            }\
        },\
        {\
            "label":{\
                "translate": "djzc.dialog.userbook.prepare",\
                "fallback": "准备情况"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger 3 set 8"\
            }\
        },\
        {\
            "label":{\
                "translate": "djzc.dialog.userbook.join_ct",\
                "fallback": "加入CT",\
                "color":"blue",\
                "underlined": true\
            },\
            "tooltip": {\
                "translate": "djzc.dialog.userbook.join_ct.desc",\
                "fallback": "冬季战场的防守方，阻止T方占领全部战区，坚持到时间结束即获胜。"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger 3 set 9"\
            }\
        },\
        {\
            "label":{\
                "translate": "djzc.dialog.userbook.join_t",\
                "fallback": "加入T",\
                "color":"red",\
                "underlined": true\
            },\
            "tooltip": {\
                "translate": "djzc.dialog.userbook.join_t.desc",\
                "fallback": "冬季战场的进攻方，占领全部四个战区（A、B、C、D）即可获胜。"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger 3 set 10"\
            }\
        },\
        {\
            "label":{\
                "translate": "djzc.dialog.userbook.type_choose",\
                "fallback": "兵种选择",\
                "color":"gold",\
                "underlined": true\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger 3 set 11"\
            }\
        },\
        {\
            "label":{\
                "translate": "djzc.dialog.userbook.msg",\
                "fallback": "转到步话机",\
                "color":"gold",\
                "underlined": true\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger 3 set 12"\
            }\
        },\
        {\
            "label":{\
                "translate": "djzc.dialog.userbook.stop_music",\
                "fallback": "中止音乐（仅个人）",\
                "color":"gold"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger 3 set 13"\
            }\
        },\
        {\
            "label":{\
                "translate": "djzc.dialog.userbook.redeploy",\
                "fallback": "重新部署",\
                "color":"dark_gray"\
            },\
            "tooltip": {\
                "translate": "djzc.dialog.userbook.redeploy.desc",\
                "fallback": "会死。"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger 3 set 14"\
            }\
        },\
        {\
            "label":{\
                "translate": "djzc.dialog.userbook.to_prepare",\
                "fallback": "准备",\
                "color":"green"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger prepare set 1"\
            }\
        },\
        {\
            "label":{\
                "translate": "djzc.dialog.userbook.un_prepare",\
                "fallback": "取消准备",\
                "color":"red"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger prepare set 0"\
            }\
        }\
    ]\
 }