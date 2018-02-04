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
@rclick enabled = false
@history output=false enabled=false
@clickskip enabled = false
@image storage = "black" layer = base page = fore
@wait time = 500
@bgimage storage = "comp"
@trans method = crossfade time = 1000
@wt
@wait time = 2000
@bgimage storage = "black"
@trans method = crossfade time = 1000
@wt

*title
@stopbgm
@cm

@advl layer = message0 frame = "text" 
@layopt layer = message0 opacity = 0
@layopt layer = message3 opacity = 255


@current layer = message1
@menul
@locate x = 430 y = 200
@button graphic = "t1_start" hint = "开始游戏。"  target = *start
@eval exp = "fml(1,0).object.opacity = 0" 
@eval exp= "ib(fml(1,0),700,255,430,200)"
@wait time=200

@locate x = 430 y = 260
@button graphic = "t1_load" hint ="读取存档。"
@eval exp = "fml(1,1).object.opacity = 0" 
@eval exp= "ib(fml(1,1),700,255,430,260)"
@wait time=200

@locate x = 430 y = 320
@button graphic = "t1_extra" hint = "原画鉴赏。"
@eval exp = "fml(1,2).object.opacity = 0" 
@eval exp= "ib(fml(1,2),700,255,430,320)"
@wait time=200

@locate x = 430 y = 380
@button graphic = "t1_exit" hint = "结束游戏。" exp="kag.close()"
@eval exp = "fml(1,3).object.opacity = 0" 
@eval exp= "ib(fml(1,3),700,255,430,380)"
@s

*start
@eval exp="clib()"
@jump storage = "script.ks" target = *start