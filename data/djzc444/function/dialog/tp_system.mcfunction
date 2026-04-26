 $dialog show @s \
 {\
    type:"multi_action",\
    "pause": false,\
    title:[\
    {\
    "translate":"djzc.dialog.tp_system.title",\
    "fallback":"传送系统",\
    "hover_event": {\
    "action": "show_text",\
    "value": {\
        "translate": "djzc.dialog.tp_system.title.desc",\
        "fallback": "去你想去的地方，如果某个地方被敌人控制/占领/激活，就去不了了"\
    }\
    }\
    }\
    ],\
    body:[\
    {\
        "type": "plain_message",\
        "width": 500,\
        "contents":[\
            {\
                "translate": "djzc.dialog.tp_system.body1",\
                "fallback": "如果你是空军单位，可以选择从这里出发:",\
                "hover_event": {\
                    "action": "show_text",\
                    "value": {\
                        "translate": "djzc.dialog.tp_system.body1.desc",\
                        "fallback":"其实陆军单位也可以",\
                        "color": "gray",\
                        "strikethrough": true\
                    }\
                }\
            },\
            {\
                "text": " | "\
            },\
            {\
                "translate": "djzc.dialog.respawn_sky_ct",\
                "fallback": "CT空中出生点",\
                "color": "blue",\
                "hover_event": {\
                    "action": "show_text",\
                    "value": {\
                        "translate": "djzc.dialog.respawn_sky_ct.desc",\
                        "fallback": "这里有点高"\
                    }\
                },\
                "click_event":{\
                    "action": "run_command",\
                    "command": "trigger tp set 17"\
                }\
            },\
            {\
                "text": " | "\
            },\
            {\
                "translate": "djzc.dialog.respawn_airport_ct",\
                "fallback": "CT机场",\
                "color": "blue",\
                "hover_event": {\
                    "action": "show_text",\
                    "value": {\
                        "translate":"djzc.dialog.respawn_airport_ct.desc",\
                        "fallback": "你可以在里面休息一下"\
                    }\
                },\
                "click_event":{\
                    "action": "run_command",\
                    "command": "trigger tp set 18"\
                }\
            },\
            {\
                "text": " | "\
            },\
            {\
                "translate": "djzc.dialog.respawn_sky_t",\
                "fallback": "T空中出生点",\
                "color": "red",\
                "hover_event": {\
                    "action": "show_text",\
                    "value": {\
                        "translate": "djzc.dialog.respawn_sky_t.desc",\
                        "fallback": "这里也有点高"\
                    }\
                },\
                "click_event":{\
                    "action": "run_command",\
                    "command": "trigger tp set 19"\
                }\
            },\
            {\
                "text": " | "\
            },\
            {\
                "translate": "djzc.dialog.respawn_airport_t",\
                "fallback": "T机场",\
                "color": "red",\
                "hover_event": {\
                    "action": "show_text",\
                    "value": {\
                        "translate": "djzc.dialog.respawn_airport_t.desc",\
                        "fallback": "你可以在里面休息一下"\
                    }\
                },\
                "click_event":{\
                    "action": "run_command",\
                    "command": "trigger tp set 20"\
                }\
            }\
        ]\
    },\
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
    }\
    ],\
    "columns": 4,\
    "actions": [\
        {\
            "label":{\
                "translate": "djzc.dialog.tp_system.nearest_teammate",\
                "fallback": "传送到最近的队友",\
                "color":"gold"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger tp set 1"\
            }\
        },\
        {\
            "label":{\
                "translate": "djzc.dialog.tp_system.random_teammate",\
                "fallback": "传送到随机队友",\
                "color":"green"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger tp set 2"\
            }\
        },\
        {\
            "label":{\
                "translate": "djzc.dialog.point_a",\
                "fallback": "A点",\
                "color":"light_purple"\
            },\
            "tooltip": {\
                "translate": "djzc.dialog.point_a.desc",\
                "fallback": "冰湖中的小船，易攻难守"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger tp set 3"\
            }\
        },\
        {\
            "label":{\
                "translate": "djzc.dialog.point_b",\
                "fallback": "B点",\
                "color":"light_purple"\
            },\
            "tooltip": {\
                "translate": "djzc.dialog.point_b.desc",\
                "fallback": "冰刺之地中的地堡，易守难攻"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger tp set 4"\
            }\
        },\
        {\
            "label":{\
                "translate": "djzc.dialog.point_c",\
                "fallback": "C点",\
                "color":"light_purple"\
            },\
            "tooltip": {\
                "translate": "djzc.dialog.point_c.desc",\
                "fallback": "雪原村庄的中心，常常引发激烈的战斗"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger tp set 5"\
            }\
        },\
        {\
            "label":{\
                "translate": "djzc.dialog.point_c1",\
                "fallback": "C1"\
            },\
            "tooltip": {\
                "translate": "djzc.dialog.point_c1.desc",\
                "fallback": "战壕旁的地洞"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger tp set 6"\
            }\
        },\
        {\
            "label":{\
                "translate": "djzc.dialog.point_c2",\
                "fallback": "C2"\
            },\
            "tooltip": {\
                "translate": "djzc.dialog.point_c2.desc",\
                "fallback": "位于村庄地道系统"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger tp set 7"\
            }\
        },\
        {\
            "label":{\
                "translate": "djzc.dialog.point_c3",\
                "fallback": "C3"\
            },\
            "tooltip": {\
                "translate": "djzc.dialog.point_c3.desc",\
                "fallback": "位于北部山地的山腰处"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger tp set 8"\
            }\
        },\
        {\
            "label":{\
                "translate": "djzc.dialog.point_d",\
                "fallback": "D点",\
                "color":"light_purple"\
            },\
            "tooltip": {\
                "translate": "djzc.dialog.point_d.desc",\
                "fallback": "灯塔之下，CT最后的堡垒，决定成败之地"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger tp set 9"\
            }\
        },\
        {\
            "label":{\
                "translate": "djzc.dialog.point_d1",\
                "fallback": "D1"\
            },\
            "tooltip": {\
                "translate": "djzc.dialog.point_d1.desc",\
                "fallback": "一个碉堡。"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger tp set 10"\
            }\
        },\
        {\
            "label":{\
                "translate": "djzc.dialog.point_d2",\
                "fallback": "D2"\
            },\
            "tooltip": {\
                "translate": "djzc.dialog.point_d2.desc",\
                "fallback": "在灯塔地下室"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger tp set 11"\
            }\
        },\
        {\
            "label":{\
                "translate": "djzc.dialog.point_d3",\
                "fallback": "D3"\
            },\
            "tooltip": {\
                "translate": "djzc.dialog.point_d3.desc",\
                "fallback": "在CT家里"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger tp set 12"\
            }\
        },\
        {\
            "label":{\
                "translate": "djzc.dialog.respawn_piont1_ct",\
                "fallback": "CT出生点1",\
                "color":"blue"\
            },\
            "tooltip": {\
                "translate": "djzc.dialog.respawn_point1_ct.desc",\
                "fallback": "D3旁边"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger tp set 13"\
            }\
        },\
        {\
            "label":{\
                "translate": "djzc.dialog.respawn_point2_ct",\
                "fallback": "CT出生点2",\
                "color":"blue"\
            },\
            "tooltip": {\
                "translate": "djzc.dialog.respawn_piont2_ct.desc",\
                "fallback": "一个碉堡。"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger tp set 14"\
            }\
        },\
        {\
            "label":{\
                "translate": "djzc.dialog.respawn_piont1_t",\
                "fallback": "T出生点1",\
                "color":"red"\
            },\
            "tooltip": {\
                "translate": "djzc.dialog.respawn_point1_t.desc",\
                "fallback": "在A点附近"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger tp set 15"\
            }\
        },\
        {\
            "label":{\
                "translate": "djzc.dialog.respawn_piont2_t",\
                "fallback": "T出生点2",\
                "color":"red"\
            },\
            "tooltip": {\
                "translate": "djzc.dialog.respawn_piont2_t.desc",\
                "fallback": "在B点附近"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger tp set 16"\
            }\
        }\
    ]\
 }