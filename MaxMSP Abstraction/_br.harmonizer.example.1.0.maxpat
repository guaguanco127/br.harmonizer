{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 0,
            "revision": 0,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [
            100.0,
            100.0,
            760.0,
            620.0
        ],
        "bglocked": 0,
        "openinpresentation": 0,
        "default_fontsize": 12.0,
        "default_fontface": 0,
        "default_fontname": "Arial",
        "gridonopen": 1,
        "gridsize": [
            15.0,
            15.0
        ],
        "gridsnaponopen": 1,
        "objectsnaponopen": 1,
        "statusbarvisible": 2,
        "toolbarvisible": 1,
        "lefttoolbarpinned": 0,
        "toptoolbarpinned": 0,
        "righttoolbarpinned": 0,
        "bottomtoolbarpinned": 0,
        "toolbars_unpinned_last_save": 0,
        "tallnewobj": 0,
        "boxanimatetime": 200,
        "enablehscroll": 1,
        "enablevscroll": 1,
        "devicewidth": 0.0,
        "description": "_br.harmonizer.example.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Built around retune~ (Cycling '74). Original research and design by Brian Riordan.",
        "digest": "",
        "tags": "",
        "style": "",
        "subpatcher_template": "",
        "assistshowspatchername": 0,
        "boxes": [
            {
                "box": {
                    "maxclass": "comment",
                    "id": "obj-signature",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        30,
                        570,
                        520,
                        20.0
                    ],
                    "text": "_br.harmonizer.example.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Built around retune~ (Cycling '74). Original research and design by Brian Riordan.",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "obj-2",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "signal"
                    ],
                    "patching_rect": [
                        30,
                        60,
                        72.0,
                        22.0
                    ],
                    "text": "adc~ 1 2",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "comment",
                    "id": "obj-3",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        30,
                        30,
                        149.0,
                        20.0
                    ],
                    "text": "mic / instrument in",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "obj-4",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        230,
                        40,
                        58.0,
                        22.0
                    ],
                    "text": "notein",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "kslider",
                    "id": "obj-5",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        230,
                        100,
                        168.0,
                        53.0
                    ],
                    "parameter_enable": 0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "obj-6",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        230,
                        170,
                        72.0,
                        22.0
                    ],
                    "text": "pack 0 0",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "comment",
                    "id": "obj-7",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        420,
                        40,
                        260,
                        20.0
                    ],
                    "text": "MIDI keyboard (any port) or click the keys",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "live.dial",
                    "id": "obj-8",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        300,
                        210,
                        44.0,
                        48.0
                    ],
                    "parameter_enable": 1,
                    "varname": "Attack",
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "Attack",
                            "parameter_shortname": "Attack",
                            "parameter_mmin": 1.0,
                            "parameter_mmax": 2000.0,
                            "parameter_initial": [
                                5.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_modmode": 0,
                            "parameter_type": 0,
                            "parameter_unitstyle": 2,
                            "parameter_exponent": 3.0
                        }
                    }
                }
            },
            {
                "box": {
                    "maxclass": "live.dial",
                    "id": "obj-9",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        375,
                        210,
                        44.0,
                        48.0
                    ],
                    "parameter_enable": 1,
                    "varname": "Decay",
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "Decay",
                            "parameter_shortname": "Decay",
                            "parameter_mmin": 1.0,
                            "parameter_mmax": 2000.0,
                            "parameter_initial": [
                                5.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_modmode": 0,
                            "parameter_type": 0,
                            "parameter_unitstyle": 2,
                            "parameter_exponent": 3.0
                        }
                    }
                }
            },
            {
                "box": {
                    "maxclass": "live.dial",
                    "id": "obj-10",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        450,
                        210,
                        44.0,
                        48.0
                    ],
                    "parameter_enable": 1,
                    "varname": "Sustain",
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "Sustain",
                            "parameter_shortname": "Sustain",
                            "parameter_mmin": 0.0,
                            "parameter_mmax": 100.0,
                            "parameter_initial": [
                                100.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_modmode": 0,
                            "parameter_type": 0,
                            "parameter_unitstyle": 5
                        }
                    }
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "obj-11",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        450,
                        270,
                        58.0,
                        22.0
                    ],
                    "text": "/ 100.",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "live.dial",
                    "id": "obj-12",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        525,
                        210,
                        44.0,
                        48.0
                    ],
                    "parameter_enable": 1,
                    "varname": "Release",
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "Release",
                            "parameter_shortname": "Release",
                            "parameter_mmin": 1.0,
                            "parameter_mmax": 5000.0,
                            "parameter_initial": [
                                5.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_modmode": 0,
                            "parameter_type": 0,
                            "parameter_unitstyle": 2,
                            "parameter_exponent": 3.0
                        }
                    }
                }
            },
            {
                "box": {
                    "maxclass": "live.dial",
                    "id": "obj-13",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        600,
                        210,
                        44.0,
                        48.0
                    ],
                    "parameter_enable": 1,
                    "varname": "Dry/Wet",
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "Dry/Wet",
                            "parameter_shortname": "Dry/Wet",
                            "parameter_mmin": 0.0,
                            "parameter_mmax": 100.0,
                            "parameter_initial": [
                                50.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_modmode": 0,
                            "parameter_type": 0,
                            "parameter_unitstyle": 5
                        }
                    }
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "obj-14",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        600,
                        270,
                        58.0,
                        22.0
                    ],
                    "text": "/ 100.",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "live.dial",
                    "id": "obj-15",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        675,
                        210,
                        44.0,
                        48.0
                    ],
                    "parameter_enable": 1,
                    "varname": "Max Boost",
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "Max Boost",
                            "parameter_shortname": "Max Boost",
                            "parameter_mmin": 0.0,
                            "parameter_mmax": 48.0,
                            "parameter_initial": [
                                30.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_modmode": 0,
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    }
                }
            },
            {
                "box": {
                    "maxclass": "live.text",
                    "id": "obj-16",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        750,
                        210,
                        60.0,
                        20.0
                    ],
                    "parameter_enable": 1,
                    "varname": "Stereo",
                    "text": "Mono",
                    "texton": "Stereo",
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [
                                "Mono",
                                "Stereo"
                            ],
                            "parameter_initial": [
                                0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Stereo",
                            "parameter_shortname": "Stereo",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_type": 2
                        }
                    }
                }
            },
            {
                "box": {
                    "maxclass": "live.gain~",
                    "id": "obj-17",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [
                        "signal",
                        "signal",
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        30,
                        380,
                        48.0,
                        136.0
                    ],
                    "parameter_enable": 1,
                    "varname": "Output",
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "Output",
                            "parameter_shortname": "Output",
                            "parameter_mmin": -70.0,
                            "parameter_mmax": 6.0,
                            "parameter_initial": [
                                -70.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_modmode": 3,
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    }
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "obj-18",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        110,
                        350,
                        100.0,
                        22.0
                    ],
                    "text": "loadmess -71",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "obj-19",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        30,
                        530,
                        44.0,
                        22.0
                    ],
                    "text": "dac~",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "toggle",
                    "id": "obj-20",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        110,
                        500,
                        24.0,
                        24.0
                    ],
                    "parameter_enable": 0
                }
            },
            {
                "box": {
                    "maxclass": "comment",
                    "id": "obj-21",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        140,
                        500,
                        100.0,
                        20.0
                    ],
                    "text": "audio on/off",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "obj-core",
                    "maxclass": "newobj",
                    "text": "br.harmonizer.core.1.0",
                    "numinlets": 10,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "signal"
                    ],
                    "patching_rect": [
                        30,
                        320,
                        420.0,
                        22.0
                    ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "source": [
                        "obj-10",
                        0
                    ],
                    "destination": [
                        "obj-11",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-13",
                        0
                    ],
                    "destination": [
                        "obj-14",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-4",
                        0
                    ],
                    "destination": [
                        "obj-6",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-4",
                        1
                    ],
                    "destination": [
                        "obj-6",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-5",
                        0
                    ],
                    "destination": [
                        "obj-6",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-5",
                        1
                    ],
                    "destination": [
                        "obj-6",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-18",
                        0
                    ],
                    "destination": [
                        "obj-17",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-17",
                        0
                    ],
                    "destination": [
                        "obj-19",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-17",
                        1
                    ],
                    "destination": [
                        "obj-19",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-20",
                        0
                    ],
                    "destination": [
                        "obj-19",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-2",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-2",
                        1
                    ],
                    "destination": [
                        "obj-core",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-6",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-8",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-9",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        4
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-11",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        5
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-12",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        6
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-14",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        7
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-15",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        9
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-16",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        8
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-core",
                        0
                    ],
                    "destination": [
                        "obj-17",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-core",
                        1
                    ],
                    "destination": [
                        "obj-17",
                        1
                    ]
                }
            }
        ],
        "dependency_cache": [],
        "autosave": 0,
        "parameters": {
            "obj-8": [
                "Attack",
                "Attack",
                0
            ],
            "obj-9": [
                "Decay",
                "Decay",
                0
            ],
            "obj-10": [
                "Sustain",
                "Sustain",
                0
            ],
            "obj-12": [
                "Release",
                "Release",
                0
            ],
            "obj-13": [
                "Dry/Wet",
                "Dry/Wet",
                0
            ],
            "obj-15": [
                "Max Boost",
                "Max Boost",
                0
            ],
            "obj-16": [
                "Stereo",
                "Stereo",
                0
            ],
            "obj-17": [
                "Output",
                "Output",
                0
            ],
            "inherited_shortname": 1
        }
    }
}