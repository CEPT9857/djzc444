$dialog show @s \
{\
    "type":"multi_action",\
    "pause": false,\
    "title":[\
    {\
    "translate":"djzc.dialog.type_manage.title",\
    "fallback":"兵种管理系统",\
    "hover_event": {\
    "action": "show_text",\
    "value": {\
        "translate": "djzc.dialog.author1",\
        "fallback": "冬战制作组 制作"\
    }\
    }\
    }\
    ],\
    "body":[\
    {\
        "type": "plain_message",\
        "contents": [\
        {\
            "translate": "djzc.dialog.type_manage.body1",\
            "fallback": "被勾选的兵种将转为启用状态，可以通过复选框，调整启用列表。"\
        },\
        {\
            "translate": "djzc.dialog.type_manage.body2",\
            "fallback": "您也可以通过该数据包提供的预设，快速调整启用列表。"\
        }\
        ]\
    },\
    {\
        "type": "plain_message",\
        "contents": [\
        {\
            "translate": "djzc.dialog.type_manage.body3",\
            "fallback": "[左键]是正向循环选择预设，[SHIFT+左键]是反向循环选择预设"\
        }\
        ]\
    }\
    ],\
    "inputs": [\
        {\
            "key": "preset",\
            "type": "single_option",\
            "label": {\
            "translate": "djzc.dialog.type_manage.preset",\
            "fallback": "加载预设",\
            },\
            "options": [\
                {\
                    "id": "1",\
                    "display": {\
                        "translate": "djzc.dialog.type_manage.preset1",\
                        "fallback": "陆战-经典模式"\
                    },\
                    "initial": $(preset1) \
                },\
                {\
                    "id": "2",\
                    "display": {\
                        "translate": "djzc.dialog.type_manage.preset2",\
                        "fallback": "陆战-冈格尼尔"\
                    },\
                    "initial": $(preset2) \
                },\
                {\
                    "id": "3",\
                    "display": {\
                        "translate": "djzc.dialog.type_manage.preset3",\
                        "fallback": "陆战-鹰击长空"\
                    },\
                    "initial": $(preset3) \
                },\
                {\
                    "id": "4",\
                    "display": {\
                        "translate": "djzc.dialog.type_manage.preset4",\
                        "fallback": "陆战-近距突击"\
                   },\
                    "initial": $(preset4) \
                },\
                {\
                    "id": "5",\
                    "display": {\
                        "translate": "djzc.dialog.type_manage.preset5",\
                        "fallback": "陆战-狙击模式"\
                   },\
                    "initial": $(preset5) \
                },\
                {\
                    "id": "6",\
                    "display": {\
                        "translate": "djzc.dialog.type_manage.preset6",\
                        "fallback": "冬战-怀旧模式"\
                   },\
                    "initial": $(preset6) \
                },\
                {\
                    "id": "7",\
                    "display": {\
                        "translate": "djzc.dialog.type_manage.preset7",\
                        "fallback": "陆战-随机兵种"\
                    },\
                    "initial": $(preset7) \
                },\
                {\
                    "id": "8",\
                    "display": {\
                        "translate": "djzc.dialog.type_manage.preset8",\
                        "fallback": "海战-先遣模式"\
                    },\
                    "initial": $(preset8) \
                }\
            ]\
        },\
        {\
            "key": "type_jzb",\
            "type": "boolean",\
            "on_false": "0",\
            "on_true": "1",\
            "label": [\
            {\
            "translate": "djzc.type_jzb",\
            "fallback": "近战兵",\
            "color":"$(jzb_color)",\
        },\
        {\
            "translate": "djzc.dialog.type_manage.status_bar.value.$(jzb)",\
            "color":"$(jzb_color)",\
        }\
            ],\
            "initial": $(jzb_ini) \
        },\
        {\
            "key": "type_jjs",\
            "type": "boolean",\
            "on_false": "0",\
            "on_true": "1",\
            "label": [\
            {\
            "translate": "djzc.type_jjs",\
            "fallback": "狙击手",\
            "color":"$(jjs_color)",\
        },\
        {\
            "translate": "djzc.dialog.type_manage.status_bar.value.$(jjs)",\
            "color":"$(jjs_color)",\
        }\
            ],\
            "initial": $(jjs_ini) \
        },\
        {\
            "key": "type_fkb",\
            "type": "boolean",\
            "on_false": "0",\
            "on_true": "1",\
            "label": [\
            {\
            "translate": "djzc.type_fkb",\
            "fallback": "防空兵",\
            "color":"$(fkb_color)",\
        },\
        {\
            "translate": "djzc.dialog.type_manage.status_bar.value.$(fkb)",\
            "color":"$(fkb_color)",\
        }\
            ],\
            "initial": $(fkb_ini) \
        },\
        {\
            "key": "type_ltjd",\
            "type": "boolean",\
            "on_false": "0",\
            "on_true": "1",\
            "label": [\
             {\
            "translate": "djzc.type_ltjd",\
            "fallback": "航空兵",\
            "color":"$(ltjd_color)",\
        },\
        {\
            "translate": "djzc.dialog.type_manage.status_bar.value.$(ltjd)",\
            "color":"$(ltjd_color)",\
        }\
            ],\
            "initial": $(ltjd_ini) \
        },\
        {\
            "key": "type_scj",\
            "type": "boolean",\
            "on_false": "0",\
            "on_true": "1",\
            "label": [\
            {\
            "translate": "djzc.type_scj",\
            "fallback": "三叉戟兵",\
            "color":"$(scj_color)"\
        },\
        {\
            "translate": "djzc.dialog.type_manage.status_bar.value.$(scj)",\
            "color":"$(scj_color)",\
        }\
            ],\
            "initial": $(scj_ini) \
        },\
        {\
            "key": "type_yqb",\
            "type": "boolean",\
            "on_false": "0",\
            "on_true": "1",\
            "label": [\
            {\
            "translate": "djzc.type_yqb",\
            "fallback": "游骑兵",\
            "color":"$(yqb_color)"\
        },\
        {\
            "translate": "djzc.dialog.type_manage.status_bar.value.$(yqb)",\
            "color":"$(yqb_color)",\
        }\
            ],\
            "initial": $(yqb_ini) \
        },\
        {\
            "key": "type_ggne",\
            "type": "boolean",\
            "on_false": "0",\
            "on_true": "1",\
            "label": [\
            {\
            "translate": "djzc.type_ggne",\
            "fallback": "干员·冈格尼尔",\
            "color":"$(ggne_color)"\
        },\
        {\
            "translate": "djzc.dialog.type_manage.status_bar.value.$(ggne)",\
            "color":"$(ggne_color)",\
        }\
            ],\
            "initial": $(ggne_ini) \
        },\
        {\
            "key": "type_bzb",\
            "type": "boolean",\
            "on_false": "0",\
            "on_true": "1",\
            "label": [\
            {\
            "translate": "djzc.type_bzb",\
            "fallback": "板载兵",\
            "color":"$(bzb_color)"\
        },\
        {\
            "translate": "djzc.dialog.type_manage.status_bar.value.$(bzb)",\
            "color":"$(bzb_color)",\
        }\
            ],\
            "initial": $(bzb_ini) \
        }\
        \
    ],\
    "columns": 4,\
    "actions": [\
        {\
            "label":{\
            "translate": "djzc.dialog.type_manage.preset",\
            "fallback": "加载预设",\
            },\
            "tooltip":{\
            "translate": "djzc.dialog.type_manage.preset.desc",\
            "fallback": "根据预设，调整复选框",\
            },\
            "action": {\
                "type": "dynamic/run_command",\
                "template": "$(template_preset)"\
            }\
        },\
        {\
            "label":{\
            "translate": "djzc.dialog.type_manage.confirm",\
            "fallback": "确认",\
            },\
            "tooltip":{\
            "translate": "djzc.dialog.type_manage.confirm.desc",\
            "fallback": "根据复选框的情况，调整禁用兵种列表",\
            },\
            "action": {\
                "type": "dynamic/run_command",\
                "template": "$(template_confirm)"\
            }\
        }\
    ]\
 }