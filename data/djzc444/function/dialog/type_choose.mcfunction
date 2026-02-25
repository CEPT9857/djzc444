 $dialog show @s \
 {\
    type:"multi_action",\
    "pause": false,\
    title:[\
    {\
    "translate":"djzc.dialog.type_choose.title",\
    "fallback":"兵种选择系统",\
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
        "type": "plain_message",\
        "width": 300,\
        "contents":[\
            {\
                "translate": "djzc.dialog.type_choose.body1",\
                "fallback": "兵种定位：",\
                "hover_event": {\
                    "action": "show_text",\
                    "value": {\
                        "translate": "djzc.dialog.type_choose.body1.desc",\
                        "fallback":"仅供参考喵～(∠・ω< )⌒★",\
                        "color": "light_purple"\
                    }\
                }\
            },\
            {\
                "text": "     "\
            },\
            {\
                "translate": "djzc.type_tjb",\
                "fallback": "突击兵",\
                "color": "gold",\
                "hover_event": {\
                    "action": "show_text",\
                    "value": {\
                        "translate": "djzc.type_tjb.desc",\
                        "fallback": "突击兵有厚重的装甲和强大的近战能力"\
                    }\
                }\
            },\
            {\
                "text": "     "\
            },\
            {\
                "translate": "djzc.type_zcb",\
                "fallback": "侦察兵",\
                "color": "light_purple",\
                "hover_event": {\
                    "action": "show_text",\
                    "value": {\
                        "translate": "djzc.type_zcb.desc",\
                        "fallback": "侦察兵可以对敌人进行强有力的远程火力打击"\
                    }\
                }\
            },\
            {\
                "text": "     "\
            },\
            {\
                "translate": "djzc.type_zyb",\
                "fallback": "支援兵",\
                "color": "green",\
                "hover_event": {\
                    "action": "show_text",\
                    "value": {\
                        "translate": "djzc.type_zyb.desc",\
                        "fallback": "适合新手：给队友回血，给敌人扣血，就这么简单。"\
                    }\
                }\
            },\
            {\
                "text": "     "\
            },\
            {\
                "translate": "djzc.type_hkb",\
                "fallback": "航空兵",\
                "color": "aqua",\
                "hover_event": {\
                    "action": "show_text",\
                    "value": {\
                        "translate": "djzc.type_hkb.desc",\
                        "fallback": "航空兵可以飞，也可以被防空兵打下来"\
                    }\
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
    },\
    {\
        "type": "plain_message",\
        "contents": \
        {\
            "translate": "djzc.dialog.tp_system",\
            "fallback": "点击访问传送系统",\
            "color": "light_purple",\
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
                "translate": "djzc.type_jzb",\
                "fallback": "近战兵",\
                "color": "gold"\
            },\
            "tooltip": {\
                "translate": "djzc.type_jzb.desc",\
                "fallback": "传统的盾斧剑兵种，适合热血的狂战士"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger type set 1"\
            }\
        },\
        {\
            "label":{\
                "translate": "djzc.type_jjs",\
                "fallback": "狙击手",\
                "color":"light_purple"\
            },\
            "tooltip": {\
                "translate": "djzc.type_jjs.desc",\
                "fallback": "配备大威力弓箭，一箭一个小朋友"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger type set 2"\
            }\
        },\
        {\
            "label":{\
                "translate": "djzc.type_fkb",\
                "fallback": "防空兵",\
                "color":"green"\
            },\
            "tooltip": {\
                "translate": "djzc.type_fkb.desc",\
                "fallback": "拥有高射速的弩和地空导弹，也可以对着地面扫射"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger type set 3"\
            }\
        },\
        {\
            "label":{\
                "translate": "djzc.type_ltjd",\
                "fallback": "航空兵",\
                "color":"aqua"\
            },\
            "tooltip": {\
                "translate": "djzc.type_ltjd.desc",\
                "fallback": "可以飞起来，并使用导弹进行战斗"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger type set 4"\
            }\
        },\
        {\
            "label":{\
                "translate": "djzc.type_scj",\
                "fallback": "三叉戟兵",\
                "color":"gold"\
            },\
            "tooltip": {\
                "translate": "djzc.type_scj.desc",\
                "fallback": "可能只是拿着三叉戟的近战兵而已"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger type set 5"\
            }\
        },\
        {\
            "label":{\
                "translate": "djzc.type_yqb",\
                "fallback": "游骑兵",\
                "color": "light_purple"\
            },\
            "tooltip": {\
                "translate": "djzc.type_yqb.desc",\
                "fallback": "拥有特色武器“骑兵枪”，重要的是，他很快"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger type set 6"\
            }\
        },\
        {\
            "label":{\
                "translate": "djzc.type_ggne",\
                "fallback": "干员·冈格尼尔",\
                "color":"green"\
            },\
            "tooltip": {\
                "translate": "djzc.type_ggne.desc",\
                "fallback": "贯穿一切，抵抗命运。"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger type set 7"\
            }\
        },\
        {\
            "label":{\
                "translate": "djzc.type_bzb",\
                "fallback": "板载兵",\
                "color":"aqua"\
            },\
            "tooltip":{\
                "translate": "djzc.type_bzb.desc",\
                "fallback": "他的历史原型不太光彩，你会变成一只萤火虫。"\
            },\
            "action": {\
                "type": "run_command",\
                "command": "trigger type set 8"\
            }\
        }\
    ]\
 }