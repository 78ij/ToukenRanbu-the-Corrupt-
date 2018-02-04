;Preparations
;Created By 78ij in 2018.2

;Load plugins
@iscript
KAGLoadScript("moveBtn.tjs");
KAGLoadScript("fadeBtn.tjs");
KAGLoadScript("MoveMouseCursorPlugin.tjs"); 
KAGLoadScript("interpolateBtn.tjs"); 
//System.addFont("·ÂËÎ.tft", true);
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
@cm
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

@iscript
function ib(object,time,opacity,x,y){
	tf.ibarray.insert(0,new ButtonInterpolate(object,time,opacity,x,y));
	tf.ibarray[0].start();
}

function clib(){
	for(var i = 0;i < tf.ibarray.count;i++){
		if(tf.ibarray[i] != void){
			tf.ibarray[i].finalize();
		}
	}
}

@endscript

;init message3
@position layer = message3 page = fore visible = true opacity = 0 top = 372 left = 20 marginl=0 margint=0 marginr=0 marginb=0 height=35 width = 220


;display logo
@jump storage = "title.ks" target = *logo
