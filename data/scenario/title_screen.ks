[_tb_system_call storage=system/_title_screen.ks]

[hidemenubutton]

[tb_hide_message_window  ]
[jump  storage="scene1.ks"  target=""  ]
[bg  storage="title.jpg"  ]
*title

[glink  text="はじめから"  x="75"  y="370"  target="*start"  ]
[glink  text="つづきから"  x="75"  y="470"  target="*load"  ]
[s  ]
*start

[cm  ]
[s  ]
*load

[cm  ]
[showload]

[jump  target="*title"  storage=""  ]
[s  ]
