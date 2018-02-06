;Title screen
;Created by 78ij in 2017.2

;message0 : advl used to display sceneario
;message1 : menul used to display save & load screen, menu, etc.
;message2 : val used to display novel sceneario.
;message3 : used to display the characters' names.
;message4 : used to display menu in game.

*logo
@initintb
@layopt layer = message0 opacity = 0
@rclick enabled = true
@history output=false enabled=false
@clickskip enabled = false
@image storage = "black" layer = base page = fore
@wait time = 500
@bgimage storage = "comp"
@trans method = crossfade time = 1000
@wt
@wait time = 500
*title
@stopbgm
@cm
@iscript
kag.fore.messages[1].clear();
@endscript
@advl layer = message0 frame = "text" 
@position layer=message4 visible = false
@layopt layer = message0 opacity = 0
@bgimage storage = "bgi01"
@trans method = crossfade time = 1000
@wt
@menul layer=message1
@layopt layer=message1 opacity = 255
@current layer = message1
@locate x = 430 y = 200
@button graphic = "t1_start" hint = "开始游戏。"  target = *start
@eval exp = "fml(1,0).object.opacity = 0" 
@eval exp= "ib(fml(1,0).object,700,255,430,200)"
@wait time=200

@locate x = 430 y = 260
@button graphic = "t1_load" hint ="读取存档。" target = *load
@eval exp = "fml(1,1).object.opacity = 0" 
@eval exp= "ib(fml(1,1).object,700,255,430,260)"
@wait time=200

@locate x = 430 y = 320
@button graphic = "t1_extra" hint = "原画鉴赏。"
@eval exp = "fml(1,2).object.opacity = 0" 
@eval exp= "ib(fml(1,2).object,700,255,430,320)"
@wait time=200

@locate x = 430 y = 380
@button graphic = "t1_exit" hint = "结束游戏。" exp="kag.close()"
@eval exp = "fml(1,3).object.opacity = 0" 
@eval exp= "ib(fml(1,3).object,700,255,430,380)"

@iscript
@endscript
@s
*load
@eval exp="clib()"
@eval exp="tf.istitleload = true"
@jump storage = "load.ks" target = *load
*start
@jump storage = "script.ks" target = *start