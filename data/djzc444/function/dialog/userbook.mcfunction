 $dialog show @s \
 {\
    type:"multi_action",\
    "pause": false,\
    title:[\
    {\
    "text":"冬战成员用书",\
    "hover_event": {\
    "action": "show_text",\
    "value": "冬战制作组 著"\
    }\
    }\
    ],\
    body:[\
    {\
    type:"plain_message",\
    contents:"剩余时间 $(minute)分$(second)秒"\
    },\
    {\
        "type": "plain_message",\
        "contents": \
        {\
            "text": "点击访问传送系统",\
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
                "text": "总击杀数",\
                "color":"green"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger 3 set 1"\
            }\
        },\
        {\
            "label":{\
                "text": "总阵亡数",\
                "color":"black"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger 3 set 2"\
            }\
        },\
        {\
            "label":{\
                "text": "CT击杀数",\
                "color":"blue"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger 3 set 3"\
            }\
        },\
        {\
            "label":{\
                "text": "T击杀数",\
                "color":"dark_red"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger 3 set 4"\
            }\
        },\
        {\
            "label":{\
                "text": "战斗场次"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger 3 set 5"\
            }\
        },\
        {\
            "label":{\
                "text": "胜利场次"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger 3 set 6"\
            }\
        },\
        {\
            "label":{\
                "text": "失败场次"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger 3 set 7"\
            }\
        },\
        {\
            "label":{\
                "text": "准备情况"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger 3 set 8"\
            }\
        },\
        {\
            "label":{\
                "text": "加入CT",\
                "color":"blue",\
                "underlined": true\
            },\
            "tooltip": {\
                "text": "冬季战场的防守方，阻止T方占领全部战区，坚持到时间结束即获胜。"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger 3 set 9"\
            }\
        },\
        {\
            "label":{\
                "text": "加入T",\
                "color":"red",\
                "underlined": true\
            },\
            "tooltip": {\
                "text": "冬季战场的进攻方，占领全部四个战区（A、B、C、D）即可获胜。"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger 3 set 10"\
            }\
        },\
        {\
            "label":{\
                "text": "兵种选择",\
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
                "text": "转到步话机",\
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
                "text": "中止音乐（仅个人）",\
                "color":"gold"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger 3 set 13"\
            }\
        },\
        {\
            "label":{\
                "text": "重新部署",\
                "color":"gray"\
            },\
            "tooltip": {\
                "text": "会死。",\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger 3 set 14"\
            }\
        },\
        {\
            "label":{\
                "text": "准备",\
                "color":"green"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger prepare set 1"\
            }\
        },\
        {\
            "label":{\
                "text": "取消准备",\
                "color":"red"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger prepare set 0"\
            }\
        }\
    ]\
 }