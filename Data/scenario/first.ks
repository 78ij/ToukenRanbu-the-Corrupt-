;Preparations
;Created By 78ij in 2018.2

;message0 : advl used to display sceneario
;message1 : menul used to display save & load screen, menu, etc.
;message2 : val used to display novel sceneario.
;message3 : used to display the characters' names.
;message4 : used to display menu in game.

;Load plugins
@iscript
KAGLoadScript("moveBtn.tjs");
KAGLoadScript("fadeBtn.tjs");
KAGLoadScript("MoveMouseCursorPlugin.tjs"); 
KAGLoadScript("interpolateBtn.tjs"); 
KAGLoadScript("SaveLoadButtonLayer.tjs");
tf.needempty = false;
@endscript

;Macro defination
@macro name = bgimage
@backlay
@image storage = %storage layer = base page = back
@endmacro

@macro name=n
@hr cond = "tf.needempty"
@current layer=message3
@deffont size = 23 face = "¿¬Ìå"
@er
@style align = center
@nowait
@endmacro

@macro name=nn
@hr
@deffont size = 20 face = "ËÎÌå"
@eval exp="tf.needempty = true"
@current layer = message0
@style align = left
@locate x = 20 y = 50
@endnowait
@endmacro

@macro name=initintb
@eval exp="tf.ibarray = []"
@endmacro

@macro name =ce

@endmacro

;init message3
@position layer = message3 page = fore visible = true opacity = 0 top = 372 left = 20 marginl=0 margint=0 marginr=0 marginb=0 height=35 width = 220

;init message4
@position layer = message4 page = fore visible = true opacity = 0 top = 0 left = 852 width = 108 height = 1000 marginl=0 margint=0 marginr=0 marginb=0

;change position of messsage1
@layopt layer = message1 index = 200000000

;display logo
@jump storage = "title.ks" target = *logo
