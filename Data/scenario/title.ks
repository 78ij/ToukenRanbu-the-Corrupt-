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
@bgimage storage = "title"
@trans method = crossfade time = 1000
@wt
@menul layer=message1
@layopt layer=message1 opacity = 255
@current layer = message1
@locate x = 420 y = 300
@movecursor x = 480 y=325 time=1000 accel = -5
@button normal=stn over=sto on=stc hint = "开始游戏。"  target = *start
@eval exp = "fml(1,0).object.opacity = 0" 
@if exp="tf.needtrans = true"
@eval exp= "ib(fml(1,0).object,700,255,420,300)"
@endif
@wait time=200

@locate x = 420 y = 360
@button normal=ldn over=ldo on=ldc hint ="读取存档。" target = *load
@eval exp = "fml(1,1).object.opacity = 0" 
@if exp="tf.needtrans = true"
@eval exp= "ib(fml(1,1).object,700,255,420,360)"
@endif
@wait time=200

@locate x = 420 y = 420
@button normal=confn over=confo on=confc hint = "游戏设置。" target = *config
@eval exp = "fml(1,2).object.opacity = 0" 
@if exp="tf.needtrans = true"
@eval exp= "ib(fml(1,2).object,700,255,420,420)"
@endif
@wait time=200

@locate x = 420 y = 480
@button normal=exn over=exo on=exc hint = "结束游戏。" exp="kag.close()"
@eval exp = "fml(1,3).object.opacity = 0" 

@eval exp= "ib(fml(1,3).object,700,255,420,480)"
@endif
@s
*load
@eval exp="clib()"
@eval exp="tf.istitleload = true"
@jump storage = "load.ks" target = *load
*start
@jump storage = "script.ks" target = *start
*config
@eval exp="clib()"
@eval exp="tf.istitleconfig = true"
@jump storage="config.ks" target=*config