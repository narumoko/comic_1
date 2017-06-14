[_tb_system_call storage=system/_scene1.ks]

[cm  ]
[tb_start_tyrano_code]
[eval exp="f.page=1"]
[eval exp="f.coma=1"]
[eval exp="f.cmax=6"]

;現在のページ表示
[ptext layer=21 text="&f.page" size=40 x=100 y=830 color=white]
[ptext layer=21 text="/12P" size=40 x=125 y=830 color=white]
[ptext layer=21 text="&f.coma" size=40 x=230 y=830 color=white]
[ptext layer=21 text="/" size=40 x=260 y=830 color=white]
[ptext layer=21 text="&f.cmax" size=40 x=290 y=830 color=white]
[layopt layer=21 visible=true]
[_tb_end_tyrano_code]

[button  storage="scene1.ks"  target="*次ページボタン"  graphic="buttons/button_next.png"  width="50"  height="50"  x="727"  y="827"  _clickable_img=""  name="img_2"  ]
[button  storage="scene1.ks"  target="*進むボタン"  graphic="buttons/button_right.png"  width="50"  height="50"  x="430"  y="827"  _clickable_img=""  name="img_3"  ]
[button  storage="scene1.ks"  target="*戻るボタン"  graphic="buttons/button_left.png"  width="50"  height="50"  x="327"  y="827"  _clickable_img=""  name="img_6"  ]
[button  storage="scene1.ks"  target="*前ページボタン"  graphic="buttons/button_back.png"  width="50"  height="50"  x="20"  y="827"  _clickable_img=""  name="img_5"  ]
[jump  storage="scene1.ks"  target="*1P1C"  ]
*ボタン待機

[button  storage="scene1.ks"  target="*次ページボタン"  graphic="buttons/button_next.png"  width="50"  height="50"  x="727"  y="827"  _clickable_img=""  name="img_8"  ]
[button  storage="scene1.ks"  target="*前ページボタン"  graphic="buttons/button_back.png"  width="50"  height="50"  x="20"  y="827"  _clickable_img=""  name="img_5"  ]
[button  storage="scene1.ks"  target="*戻るボタン"  graphic="buttons/button_left.png"  width="50"  height="50"  x="327"  y="827"  _clickable_img=""  name="img_6"  ]
[button  storage="scene1.ks"  target="*進むボタン"  graphic="buttons/button_right.png"  width="50"  height="50"  x="430"  y="827"  _clickable_img=""  name="img_7"  ]
[tb_start_tyrano_code]
;現在のページ表示
[freeimage layer=21]
[ptext layer=21 text="&f.page" size=40 x=100 y=830 color=white]
[ptext layer=21 text="/12P" size=40 x=125 y=830 color=white]
[ptext layer=21 text="&f.coma" size=40 x=230 y=830 color=white]
[ptext layer=21 text="/" size=40 x=260 y=830 color=white]
[ptext layer=21 text="&f.cmax" size=40 x=290 y=830 color=white]
[layopt layer=21 visible=true]
[_tb_end_tyrano_code]

[s  ]
*前ページボタン

[tb_start_tyrano_code]
;レイヤー全消去
[layopt layer=20 visible=true]
[image layer=20 storage="default/black.png" zindex="10" time=1000]
[freeimage layer=0]
[freeimage layer=1]
[freeimage layer=2]
[freeimage layer=3]
[freeimage layer=4]
[freeimage layer=5]
[freeimage layer=6]
[freeimage layer=7]
[freeimage layer=8]
[freeimage layer=9]
[freeimage layer=10]
[freeimage layer=11]
[freeimage layer=12]
[freeimage layer=13]
[freeimage layer=14]

[freeimage layer=20]


[eval exp="f.page=f.page - 1"]
[if exp="f.page==0"]
[eval exp="f.page=1"]
[endif]
[eval exp="f.coma=1"]
[eval exp="f.pa=f.page + 'P'"]
[eval exp="f.co=f.coma + 'C'"]
[eval exp="f.paco=f.pa + f.co"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[jump target=&f.paco]
[_tb_end_tyrano_code]

[wait  time="1"  ]
*次ページボタン

[tb_start_tyrano_code]
;レイヤー全消去
[layopt layer=20 visible=true]
[image layer=20 storage="default/black.png" zindex="10" time=1000]
[freeimage layer=0]
[freeimage layer=1]
[freeimage layer=2]
[freeimage layer=3]
[freeimage layer=4]
[freeimage layer=5]
[freeimage layer=6]
[freeimage layer=7]
[freeimage layer=8]
[freeimage layer=9]
[freeimage layer=10]
[freeimage layer=11]
[freeimage layer=12]
[freeimage layer=13]
[freeimage layer=14]

[freeimage layer=20]




[eval exp="f.page=f.page + 1"]
[if exp="f.page==12"]
[eval exp="f.page=11"]
[endif]
[eval exp="f.coma=1"]
[eval exp="f.pa=f.page + 'P'"]
[eval exp="f.co=f.coma + 'C'"]
[eval exp="f.paco=f.pa + f.co"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[jump target=&f.paco]
[_tb_end_tyrano_code]

*戻るボタン

[tb_start_tyrano_code]
[eval exp="f.coma=f.coma - 1"]
[eval exp="f.pa=f.page + 'P'"]
[eval exp="f.co=f.coma + 'C'"]
[eval exp="f.paco=f.pa + f.co"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[jump target=&f.paco]
[_tb_end_tyrano_code]

[wait  time="1"  ]
*進むボタン

[tb_start_tyrano_code]
[eval exp="f.coma=f.coma + 1"]
[eval exp="f.pa=f.page + 'P'"]
[eval exp="f.co=f.coma + 'C'"]
[eval exp="f.paco=f.pa + f.co"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[jump target=&f.paco]
[_tb_end_tyrano_code]

*1P0C

[tb_start_tyrano_code]
[eval exp="f.coma=1"]
[eval exp="f.pa=f.page + 'P'"]
[eval exp="f.co=f.coma + 'C'"]
[eval exp="f.paco=f.pa + f.co"]
[jump target=&f.paco]
[_tb_end_tyrano_code]

*1P1C

[tb_hide_message_window  ]
[tb_start_tyrano_code]
[eval exp="f.cmax=6"]
[freeimage layer=0]
[freeimage layer=1]
[freeimage layer=2]

[image layer=1 storage="default/1P/1P1C目3.png" left="390" top="13" width="399" height="345" zindex="4"]

[image layer=0 storage="default/1P/1P1C枠.png" zindex="0"]
[image layer=0 storage="default/1P/1P1C人.png" zindex="1"]
[image layer=0 storage="default/1P/1P1C目1.png" left="399" top="13" width="390" height="345" zindex="3"]
[layopt layer=0 visible=true]
[layopt layer=1 visible=true]
[_tb_end_tyrano_code]

[wait  time="1500"  ]
[tb_start_tyrano_code]
[anim layer=1 opacity=0 time=2000]
[wa]
[_tb_end_tyrano_code]

[jump  storage="scene1.ks"  target="*ボタン待機"  ]
*1P2C

[tb_start_tyrano_code]
[freeimage layer=3]
[freeimage layer=4]
[freeimage layer=2]

[layopt layer=2 visible=true]
[image layer=2 storage="default/1P/1P1C文字.png" zindex="4" time=500]
[_tb_end_tyrano_code]

[jump  storage="scene1.ks"  target="*ボタン待機"  ]
*1P3C

[tb_start_tyrano_code]
[freeimage layer=5]
[freeimage layer=3]
[freeimage layer=4]
[layopt layer=3 visible=true]
[image layer=4 storage="default/1P/1P1C目1.png" left="9" top="9" width="400" height="348" zindex="4"]
[layopt layer=4 visible=true]
[image layer=3 storage="default/1P/1P2C枠.png" zindex="0" time=0]
[image layer=3 storage="default/1P/1P2C人.png" zindex="1" time=0]
[image layer=3 storage="default/1P/1P1C目2.png" left="13" top="17" width="390" zindex="3"]


[_tb_end_tyrano_code]

[wait  time="500"  ]
[tb_start_tyrano_code]
[anim layer=4 opacity=0 time=2000]
[wa]
[_tb_end_tyrano_code]

[jump  storage="scene1.ks"  target="*ボタン待機"  ]
*1P4C

[tb_start_tyrano_code]
[freeimage layer=5]
[freeimage layer=6]

[layopt layer=5 visible=true]
[image layer=5 storage="default/1P/1P2C文字.png" zindex="4" time=500]
[_tb_end_tyrano_code]

[jump  storage="scene1.ks"  target="*ボタン待機"  ]
*1P5C

[tb_start_tyrano_code]
[freeimage layer=7]
[freeimage layer=6]

[layopt layer=6 visible=true]
[image layer=6 storage="default/1P/1P3C枠.png" zindex="0" time=1]
[image layer=6 storage="default/1P/1P3C背.png" zindex="0" time=50]
[image layer=6 storage="default/1P/1P3C人.png" zindex="1" time=1000]
[image layer=6 storage="default/1P/1P3C文字.png" zindex="2" time=500]


[_tb_end_tyrano_code]

[jump  storage="scene1.ks"  target="*ボタン待機"  ]
*1P6C

[tb_start_tyrano_code]
[freeimage layer=7]

[layopt layer=7 visible=true]
[image layer=7 storage="default/1P/1P4C枠.png" zindex="0" time=1]
[image layer=7 storage="default/1P/1P4C背.png" zindex="0" time=5]
[image layer=7 storage="default/1P/1P4C人.png" zindex="1" time=1500]
[image layer=7 storage="default/1P/1P4C文字.png" zindex="2" time=500]


[_tb_end_tyrano_code]

[jump  storage="scene1.ks"  target="*ボタン待機"  ]
*1P7C

[tb_start_tyrano_code]
[layopt layer=10 visible=true]
[image layer=10 storage="default/black.png" zindex="10" time=1000]
[freeimage layer=0]
[freeimage layer=1]
[freeimage layer=2]
[freeimage layer=3]
[freeimage layer=4]
[freeimage layer=5]
[freeimage layer=6]
[freeimage layer=7]
[freeimage layer=10]

[eval exp="f.coma=1"]
[eval exp="f.page=2"]
[eval exp="f.pa=f.page + 'P'"]
[eval exp="f.co=f.coma + 'C'"]
[eval exp="f.paco=f.pa + f.co"]
[jump target=&f.paco]
[_tb_end_tyrano_code]

*2P0C

[tb_start_tyrano_code]
[eval exp="f.cmax=6"]

[layopt layer=10 visible=true]
[image layer=10 storage="default/black.png" zindex="10" time=1000]
[freeimage layer=0]
[image layer=0 storage="default/1P/1P1C枠.png" zindex="0"]
[image layer=0 storage="default/1P/1P1C人.png" zindex="1"]
[image layer=0 storage="default/1P/1P1C目1.png" left="399" top="13" width="390" height="345" zindex="3"]
[layopt layer=0 visible=true]
[layopt layer=2 visible=true]
[image layer=2 storage="default/1P/1P1C文字.png" zindex="4"]
[layopt layer=3 visible=true]
[image layer=3 storage="default/1P/1P2C枠.png" zindex="0" time=0]
[image layer=3 storage="default/1P/1P2C人.png" zindex="1" time=0]
[image layer=3 storage="default/1P/1P1C目2.png" left="13" top="17" width="390" zindex="3"]
[layopt layer=5 visible=true]
[image layer=5 storage="default/1P/1P2C文字.png" zindex="4" time=0]
[layopt layer=6 visible=true]
[image layer=6 storage="default/1P/1P3C枠.png" zindex="0" time=0]
[image layer=6 storage="default/1P/1P3C背.png" zindex="0" time=0]
[image layer=6 storage="default/1P/1P3C人.png" zindex="1" time=0]
[image layer=6 storage="default/1P/1P3C文字.png" zindex="2" time=0]
[anim layer=10 opacity=0 time=2000]
[wa]
[freeimage layer=10]


[eval exp="f.coma=6"]
[eval exp="f.page=1"]
[eval exp="f.pa=f.page + 'P'"]
[eval exp="f.co=f.coma + 'C'"]
[eval exp="f.paco=f.pa + f.co"]
[jump target=&f.paco]
[_tb_end_tyrano_code]

*2P1C

[tb_start_tyrano_code]
[eval exp="f.cmax=8"]
[freeimage layer=0]
[freeimage layer=1]
[freeimage layer=2]

[image layer=0 storage="default/2P/2P1C背.png" zindex="0"]
[image layer=0 storage="default/2P/2P1C枠.png" zindex="10"]
[image layer=0 storage="default/2P/2P1C人.png" zindex="1"]
[layopt layer=0 visible=true]
[wait time=1000]
[image layer=0 storage="default/2P/2P1Cセリフ.png" zindex="2" time=500]
[image layer=0 storage="default/2P/2P1C文字.png" zindex="2" time=500]
[_tb_end_tyrano_code]

[jump  storage="scene1.ks"  target="*ボタン待機"  ]
*2P2C

[tb_start_tyrano_code]
[freeimage layer=1]
[freeimage layer=2]
[freeimage layer=3]

[image layer=1 storage="default/2P/2P2C背.png" zindex="0"]
[image layer=1 storage="default/2P/2P2C枠.png" zindex="10"]
[image layer=1 storage="default/2P/2P2C人1.png" zindex="1"]
[layopt layer=1 visible=true]
[wait time=1000]
[image layer=1 storage="default/2P/2P2C文字.png" zindex="3" time=0]
[image layer=1 storage="default/2P/2P2C人2.png" zindex="2" time=1000]
[_tb_end_tyrano_code]

[jump  storage="scene1.ks"  target="*ボタン待機"  ]
*2P3C

[tb_start_tyrano_code]
[freeimage layer=2]
[freeimage layer=3]

[image layer=2 storage="default/2P/2P3C背.png" zindex="0"]
[image layer=2 storage="default/2P/2P3C枠.png" zindex="10"]
[image layer=2 storage="default/2P/2P3C人.png" zindex="1"]
[layopt layer=2 visible=true]
[wait time=1000]
[image layer=2 storage="default/2P/2P3Cセリフ.png" zindex="2" time=500]
[image layer=2 storage="default/2P/2P3C文字.png" zindex="3" time=500]

[_tb_end_tyrano_code]

[jump  storage="scene1.ks"  target="*ボタン待機"  ]
*2P4C

[tb_start_tyrano_code]
[freeimage layer=4]
[freeimage layer=3]

[image layer=3 storage="default/2P/2P4C背.png" zindex="0"]
[image layer=3 storage="default/2P/2P4C枠.png" zindex="10"]
[image layer=3 storage="default/2P/2P4C人.png" zindex="1"]
[layopt layer=3 visible=true]
[wait time=1000]
[image layer=3 storage="default/2P/2P4Cセリフ.png" zindex="2" time=500]

[_tb_end_tyrano_code]

[jump  storage="scene1.ks"  target="*ボタン待機"  ]
*2P5C

[tb_start_tyrano_code]
[freeimage layer=4]
[freeimage layer=5]

[image layer=4 storage="default/2P/2P5C背.png" zindex="0"]
[image layer=4 storage="default/2P/2P5C枠.png" zindex="10"]
[image layer=4 storage="default/2P/2P5C人.png" zindex="1"]
[layopt layer=4 visible=true]
[wait time=1000]
[image layer=4 storage="default/2P/2P5Cセリフ.png" zindex="2" time=500]
[image layer=4 storage="default/2P/2P5C文字.png" zindex="3" time=500]

[_tb_end_tyrano_code]

[jump  storage="scene1.ks"  target="*ボタン待機"  ]
*2P6C

[tb_start_tyrano_code]
[freeimage layer=6]
[freeimage layer=5]

[image layer=5 storage="default/2P/2P6C背.png" zindex="0"]
[image layer=5 storage="default/2P/2P6C枠.png" zindex="10"]
[image layer=5 storage="default/2P/2P6C人.png" zindex="1"]
[layopt layer=5 visible=true]
[image layer=5 storage="default/2P/2P6C文字.png" zindex="3" time=500]

[_tb_end_tyrano_code]

[jump  storage="scene1.ks"  target="*ボタン待機"  ]
*2P7C

[tb_start_tyrano_code]
[freeimage layer=6]
[freeimage layer=7]

[image layer=6 storage="default/2P/2P7C背.png" zindex="0"]
[image layer=6 storage="default/2P/2P7C枠.png" zindex="10"]
[image layer=6 storage="default/2P/2P7C人.png" zindex="1"]
[layopt layer=6 visible=true]
[image layer=6 storage="default/2P/2P7C文字.png" zindex="3" time=500]
[wait time=1000]
[image layer=6 storage="default/2P/2P7Cセリフ.png" zindex="2" time=500]
[image layer=6 storage="default/2P/2P7C文字.png" zindex="3" time=500]

[_tb_end_tyrano_code]

[jump  storage="scene1.ks"  target="*ボタン待機"  ]
*2P8C

[tb_start_tyrano_code]
[freeimage layer=7]
[freeimage layer=10]

[image layer=7 storage="default/2P/2P8C背.png" zindex="0"]
[image layer=7 storage="default/2P/2P8C枠.png" zindex="10"]
[layopt layer=7 visible=true]
[image layer=7 storage="default/2P/2P8Cセリフ.png" zindex="1" time=500]
[wait time=2000]
[image layer=7 storage="default/2P/2P8Cセリフ2.png" zindex="2" time=500]
[wait time=2000]
[image layer=7 storage="default/2P/2P8Cセリフ3.png" zindex="2" time=500]
[_tb_end_tyrano_code]

[jump  storage="scene1.ks"  target="*ボタン待機"  ]
*2P9C

[tb_start_tyrano_code]
[layopt layer=10 visible=true]
[image layer=10 storage="default/black.png" zindex="10" time=1000]
[freeimage layer=0]
[freeimage layer=1]
[freeimage layer=2]
[freeimage layer=3]
[freeimage layer=4]
[freeimage layer=5]
[freeimage layer=6]
[freeimage layer=7]
[freeimage layer=10]

[eval exp="f.coma=1"]
[eval exp="f.page=3"]
[eval exp="f.pa=f.page + 'P'"]
[eval exp="f.co=f.coma + 'C'"]
[eval exp="f.paco=f.pa + f.co"]
[jump target=&f.paco]
[_tb_end_tyrano_code]

*3P0C

[tb_start_tyrano_code]
[eval exp="f.cmax=8"]
[layopt layer=10 visible=true]
[image layer=10 storage="default/black.png" zindex="10" time=1000]
[freeimage layer=0]
[image layer=0 storage="default/2P/2P1C背.png" zindex="0"]
[image layer=0 storage="default/2P/2P1C枠.png" zindex="10"]
[image layer=0 storage="default/2P/2P1C人.png" zindex="1"]
[layopt layer=0 visible=true]
[image layer=0 storage="default/2P/2P1Cセリフ.png" zindex="2" time=0]
[image layer=0 storage="default/2P/2P1C文字.png" zindex="2" time=0]
[image layer=1 storage="default/2P/2P2C背.png" zindex="0"]
[image layer=1 storage="default/2P/2P2C枠.png" zindex="10"]
[layopt layer=1 visible=true]
[image layer=1 storage="default/2P/2P2C文字.png" zindex="3" time=0]
[image layer=1 storage="default/2P/2P2C人2.png" zindex="2" time=0]
[image layer=2 storage="default/2P/2P3C背.png" zindex="0"]
[image layer=2 storage="default/2P/2P3C枠.png" zindex="10"]
[image layer=2 storage="default/2P/2P3C人.png" zindex="1"]
[layopt layer=2 visible=true]
[image layer=2 storage="default/2P/2P3Cセリフ.png" zindex="2" time=0]
[image layer=2 storage="default/2P/2P3C文字.png" zindex="3" time=0]
[image layer=3 storage="default/2P/2P4C背.png" zindex="0"]
[image layer=3 storage="default/2P/2P4C枠.png" zindex="10"]
[image layer=3 storage="default/2P/2P4C人.png" zindex="1"]
[layopt layer=3 visible=true]
[image layer=3 storage="default/2P/2P4Cセリフ.png" zindex="2" time=0]
[image layer=4 storage="default/2P/2P5C背.png" zindex="0"]
[image layer=4 storage="default/2P/2P5C枠.png" zindex="10"]
[image layer=4 storage="default/2P/2P5C人.png" zindex="1"]
[layopt layer=4 visible=true]
[image layer=4 storage="default/2P/2P5Cセリフ.png" zindex="2" time=0]
[image layer=4 storage="default/2P/2P5C文字.png" zindex="3" time=0]
[image layer=5 storage="default/2P/2P6C背.png" zindex="0"]
[image layer=5 storage="default/2P/2P6C枠.png" zindex="10"]
[image layer=5 storage="default/2P/2P6C人.png" zindex="1"]
[layopt layer=5 visible=true]
[image layer=5 storage="default/2P/2P6C文字.png" zindex="3" time=0]
[image layer=6 storage="default/2P/2P7C背.png" zindex="0"]
[image layer=6 storage="default/2P/2P7C枠.png" zindex="10"]
[image layer=6 storage="default/2P/2P7C人.png" zindex="1"]
[layopt layer=6 visible=true]
[image layer=6 storage="default/2P/2P7C文字.png" zindex="3" time=0]
[image layer=6 storage="default/2P/2P7Cセリフ.png" zindex="2" time=0]
[image layer=6 storage="default/2P/2P7C文字.png" zindex="3" time=0]





[anim layer=10 opacity=0 time=2000]
[wa]
[freeimage layer=10]


[eval exp="f.coma=8"]
[eval exp="f.page=2"]
[eval exp="f.pa=f.page + 'P'"]
[eval exp="f.co=f.coma + 'C'"]
[eval exp="f.paco=f.pa + f.co"]
[jump target=&f.paco]
[_tb_end_tyrano_code]

*3P1C

[tb_start_tyrano_code]
[eval exp="f.cmax=10"]
[freeimage layer=0]
[freeimage layer=1]
[freeimage layer=2]

[image layer=0 storage="default/3P/3P1C背.png" zindex="0"]
[image layer=0 storage="default/3P/3P1C枠.png" zindex="10"]
[image layer=0 storage="default/3P/3P1C人.png" zindex="1"]
[layopt layer=0 visible=true]
[wait time=1000]
[image layer=0 storage="default/3P/3P1Cセリフ.png" zindex="2" time=500]
[image layer=0 storage="default/3P/3P1C文字.png" zindex="2" time=500]
[_tb_end_tyrano_code]

[jump  storage="scene1.ks"  target="*ボタン待機"  ]
*

[tb_start_tyrano_code]
[freeimage layer=0]
[freeimage layer=1]
[freeimage layer=2]

[image layer=0 storage="default/3P/3P1C背.png" zindex="0"]
[image layer=0 storage="default/3P/3P1C枠.png" zindex="10"]
[image layer=0 storage="default/3P/3P1C人.png" zindex="1"]
[layopt layer=0 visible=true]
[wait time=1000]
[image layer=0 storage="default/3P/3P1C文字.png" zindex="2" time=500]
[image layer=0 storage="default/3P/3P1Cセリフ.png" zindex="2" time=500]
[_tb_end_tyrano_code]

[jump  storage="scene1.ks"  target="*ボタン待機"  ]
*3P2C

[tb_start_tyrano_code]
[freeimage layer=3]
[freeimage layer=2]
[freeimage layer=4]
[freeimage layer=5]
[freeimage layer=6]

[image layer=2 storage="default/3P/3P2C背.png" zindex="0"]
[image layer=2 storage="default/3P/3P2C枠.png" zindex="10"]
[image layer=2 storage="default/3P/3P2C人.png" zindex="1"]
[layopt layer=2 visible=true]
[wait time=1000]
[image layer=2 storage="default/3P/3P2C文字.png" zindex="2" time=500]
[image layer=2 storage="default/3P/3P2Cセリフ.png" zindex="2" time=500]
[_tb_end_tyrano_code]

[jump  storage="scene1.ks"  target="*ボタン待機"  ]
*3P3C

[tb_start_tyrano_code]
[freeimage layer=3]
[freeimage layer=4]
[freeimage layer=5]
[freeimage layer=6]

[image layer=3 storage="default/3P/3P3C背.png" zindex="0"]
[image layer=3 storage="default/3P/3P3C枠.png" zindex="10"]
[image layer=3 storage="default/3P/3P3C人.png" zindex="1"]
[image layer=4 storage="default/3P/3P3C手上.png" zindex="2"]
[image layer=5 storage="default/3P/3P3C手中.png" zindex="3" ]
[image layer=6 storage="default/3P/3P3C手下.png" zindex="4"]
[layopt layer=3 visible=true]
[layopt layer=4 visible=true]
[layopt layer=5 visible=true opacity=0]
[layopt layer=6 visible=true]
[anim layer=6 opacity=0 time=0]
[wait time=1000]

;------------keyframe の定義
[keyframe name="anim1"]
[frame p=0% opacity=1 ]
[frame p=100% opacity=0 ]
[endkeyframe]
[keyframe name="anim2"]
[frame p=0% opacity=0 ]
[frame p=100% opacity=1 ]
[endkeyframe]
;[kanim layer=4 keyframe="anim1" time="3000" ]
;[wait time=1000]
;[kanim layer=6 keyframe="anim2" time="3000" ]
[wa]
[image layer=3 storage="default/3P/3P3C文字.png" zindex="2" time=500]
[_tb_end_tyrano_code]

[jump  storage="scene1.ks"  target="*ボタン待機"  ]
*3P4C

[tb_start_tyrano_code]
[freeimage layer=8]


;手コキアニメ

[anim layer=4 opacity=0 time=2000]
[wait time=1000]
[anim layer=6 opacity=255 time=2000]
[wa]
[_tb_end_tyrano_code]

[jump  storage="scene1.ks"  target="*ボタン待機"  ]
*3P5C

[tb_start_tyrano_code]
[freeimage layer=8]
[freeimage layer=9]

[image layer=8 storage="default/3P/3P4C背.png" zindex="0"]
[image layer=8 storage="default/3P/3P4C枠.png" zindex="10"]
[image layer=8 storage="default/3P/3P4C人.png" zindex="1"]
[layopt layer=8 visible=true]
[wait time=1000]
[image layer=8 storage="default/3P/3P4Cセリフ.png" zindex="2" time=500]
[image layer=8 storage="default/3P/3P4C文字.png" zindex="2" time=500]
[_tb_end_tyrano_code]

[jump  storage="scene1.ks"  target="*ボタン待機"  ]
*3P6C

[tb_start_tyrano_code]

[freeimage layer=9]
[freeimage layer=10]

[image layer=9 storage="default/3P/3P5C背.png" zindex="0"]
[image layer=9 storage="default/3P/3P5C枠.png" zindex="10"]
[image layer=9 storage="default/3P/3P5C人.png" zindex="1"]

[image layer=9 storage="default/3P/3P5C人2.png" zindex="2"]
[layopt layer=9 visible=true]
[wait time=1000]
[image layer=9 storage="default/3P/3P5C文字.png" zindex="3" time=500]
[_tb_end_tyrano_code]

[jump  storage="scene1.ks"  target="*ボタン待機"  ]
*3P7C

[tb_start_tyrano_code]
[freeimage layer=10]
[freeimage layer=11]

[image layer=10 storage="default/3P/3P6C背.png" zindex="0"]
[image layer=10 storage="default/3P/3P6C枠.png" zindex="10"]
[image layer=10 storage="default/3P/3P6C人.png" zindex="1"]
[layopt layer=10 visible=true]
[wait time=1000]

[image layer=10 storage="default/3P/3P6C文字.png" zindex="2" time=500]
[image layer=10 storage="default/3P/3P6Cセリフ.png" zindex="2" time=500]
[_tb_end_tyrano_code]

[jump  storage="scene1.ks"  target="*ボタン待機"  ]
*3P8C

[tb_start_tyrano_code]
[freeimage layer=11]
[freeimage layer=12]

[image layer=11 storage="default/3P/3P7C背.png" zindex="0"]
[image layer=11 storage="default/3P/3P7C枠.png" zindex="10"]
[image layer=11 storage="default/3P/3P7C人.png" zindex="1"]
[image layer=11 storage="default/3P/3P7C女下.png" zindex="1"]
[layopt layer=11 visible=true]
[wait time=1000]
[image layer=11 storage="default/3P/3P7C文字.png" zindex="2" time=500]
[image layer=11 storage="default/3P/3P7Cセリフ.png" zindex="2" time=500]
[_tb_end_tyrano_code]

[jump  storage="scene1.ks"  target="*ボタン待機"  ]
*3P9C

[tb_start_tyrano_code]
[freeimage layer=12]
[freeimage layer=13]

[image layer=12 storage="default/3P/3P8C背.png" zindex="0"]
[image layer=12 storage="default/3P/3P8C枠.png" zindex="10"]
[image layer=12 storage="default/3P/3P8C人.png" zindex="1"]
[layopt layer=12 visible=true]
[wait time=1000]
[image layer=12 storage="default/3P/3P8C文字.png" zindex="2" time=500]
[image layer=12 storage="default/3P/3P8Cセリフ.png" zindex="2" time=500]
[_tb_end_tyrano_code]

[jump  storage="scene1.ks"  target="*ボタン待機"  ]
*3P10C

[tb_start_tyrano_code]
[freeimage layer=13]

[image layer=13 storage="default/3P/3P9C背.png" zindex="0"]
[image layer=13 storage="default/3P/3P9C枠.png" zindex="10"]
[image layer=13 storage="default/3P/3P9C人.png" zindex="1"]
[layopt layer=13 visible=true]
[wait time=1000]
[image layer=13 storage="default/3P/3P9Cセリフ.png" zindex="2" time=500]
[image layer=13 storage="default/3P/3P9C文字.png" zindex="2" time=500]
[_tb_end_tyrano_code]

[jump  storage="scene1.ks"  target="*ボタン待機"  ]
