;------------------------------------------------------------
;   KAGeXpress ver 3.0 封装宏集
;   Author: Miliardo/2006.11.5
;   Author: 长山真夜/Ver 2.0
;
;   http://kcddp.keyfc.net/
;   (C) 2002-2006，Key Fans Club
;
;------------------------------------------------------------


;------------------------------------------------------------
;    初始设定
;------------------------------------------------------------

*init

@loadplugin module=wuvorbis.dll
@loadplugin module=wump3.dll
@loadplugin module=wutcwf.dll
@loadplugin module=extrans.dll
@loadplugin module=extNagano.dll

@if exp="global.useconfigMappfont==true"
@mappfont storage=&global.configMappfont
@endif

@macro name=vend
@if exp="tf.KAGeXpress_voice=1"
@eval exp="tf.KAGeXpress_voice=0"
@endhact
@endif
@endmacro

@macro name=p
@vend
@oporig
@endmacro

@call storage=snow.ks
@call storage=rain.ks
@call storage=staffroll.ks

;语音回放用的Buffer
@iscript
var isopen = false;
function bml(n,i){
	return kag.back.messages[n].links[i];
}

function init(){
dm("aaa");
fml(4,2).object.onClick = function(x,y){	
	askYesNo("要快速存档吗？","确认",kag.saveBookMark,void,119);
};
fml(4,4).object.onClick = function(x,y){	
	askYesNo("要快速读档吗？","确认",kag.loadBookMark,void,119);
};
for(var i = 1;i <= 7;i++){
	dm("aaa");
	if(!isopen){
		fml(4,i).object.opacity = 0;
		fml(4,i).object.setPos(108,28 + (i - 1) * 49);
	}
	fml(4,i).object.visible = true;
}
	fml(4,0).object.visible = true;
	dm("aaaa");
fml(4,0).object.onClick = function(){
	dm("aaaa");
	if(!isopen){
		clib();
		ib(fml(4,1).object,100,255,0,28);
		ib(fml(4,2).object,120,255,0,77);
		ib(fml(4,3).object,140,255,0,126);
		ib(fml(4,4).object,160,255,0,175);
		ib(fml(4,5).object,180,255,0,224);
		ib(fml(4,6).object,200,255,0,273);
		ib(fml(4,7).object,220,255,0,322);
		isopen = true;
	}
	else{
		clib();
		ib(fml(4,1).object,100,0,108,28);
		ib(fml(4,2).object,120,0,108,77);
		ib(fml(4,3).object,140,0,108,126);
		ib(fml(4,4).object,160,0,108,175);
		ib(fml(4,5).object,180,0,108,224);
		ib(fml(4,6).object,200,0,108,273);
		ib(fml(4,7).object,220,0,108,322);
		isopen = false;
	}
};
fml(4,1).object.onClick= function(x,y){
	var a = %[];
	a.enabled = true;
	a.call = true;
	a.storage = "save.ks";
	a.target = "*save";
	if(kag.clickWaiting){
		kag.setRightClickOptions(a);
		kag.callRightClickSubRoutine();
	}
};
fml(4,3).object.onClick= function(x,y){
	tf.istitleload = false;
	var a = %[];
	a.enabled = true;
	a.call = true;
	a.storage = "load.ks";
	a.target = "*load";
	if(kag.clickWaiting){
		kag.setRightClickOptions(a);
		kag.callRightClickSubRoutine();
	}
};
fml(4,5).object.onClick= function(x,y){
	var a = %[];
	a.enabled = true;
	a.call = true;
	a.storage = "checknum.ks";
	a.target = "*checknum";
	if(kag.clickWaiting){
		kag.setRightClickOptions(a);
		kag.callRightClickSubRoutine();
	}
};
fml(4,6).object.onClick= function(x,y){
	tf.istitleconfig = false;
	var a = %[];
	a.enabled = true;
	a.call = true;
	a.storage = "config.ks";
	a.target = "*config";
	if(kag.clickWaiting){
		kag.setRightClickOptions(a);
		kag.callRightClickSubRoutine();
	}
};
}
function initb(){

bml(4,2).object.onClick = function(x,y){	
	askYesNo("要快速存档吗？","确认",kag.saveBookMark,void,119);
};
bml(4,4).object.onClick = function(x,y){	
	askYesNo("要快速读档吗？","确认",kag.loadBookMark,void,119);
};
for(var i = 1;i <= 5;i++){
	bml(4,i).object.opacity = 0;
}
bml(4,0).object.onClick = function(){
	if(!isopen){
		clib();
		ib(bml(4,1).object,100,255,0,28);
		ib(bml(4,2).object,120,255,0,77);
		ib(bml(4,3).object,140,255,0,126);
		ib(bml(4,4).object,160,255,0,175);
		ib(bml(4,5).object,180,255,0,224);
		ib(bml(4,6).object,200,255,0,273);
		ib(bml(4,7).object,220,255,0,322);
		isopen = true;
	}
	else{
		clib();
		ib(bml(4,1).object,100,0,108,28);
		ib(bml(4,2).object,120,0,108,77);
		ib(bml(4,3).object,140,0,108,126);
		ib(bml(4,4).object,160,0,108,175);
		ib(bml(4,5).object,180,0,108,224);
		ib(bml(4,6).object,200,0,108,273);
		ib(bml(4,7).object,220,0,108,322);
		isopen = false;
	}
};
bml(4,1).object.onClick= function(x,y){
	var a = %[];
	a.enabled = true;
	a.call = true;
	a.storage = "save.ks";
	a.target = "*save";
	if(kag.clickWaiting){
		kag.setRightClickOptions(a);
		kag.callRightClickSubRoutine();
	}
};
bml(4,3).object.onClick= function(x,y){
	tf.istitleload = false;
	var a = %[];
	a.enabled = true;
	a.call = true;
	a.storage = "load.ks";
	a.target = "*load";
	if(kag.clickWaiting){
		kag.setRightClickOptions(a);
		kag.callRightClickSubRoutine();
	}
};
bml(4,5).object.onClick= function(x,y){
	var a = %[];
	a.enabled = true;
	a.call = true;
	a.storage = "checknum.ks";
	a.target = "*checknum";
	if(kag.clickWaiting){
		kag.setRightClickOptions(a);
		kag.callRightClickSubRoutine();
	}
};
bml(4,6).object.onClick= function(x,y){
	tf.istitleconfig = false;
	var a = %[];
	a.enabled = true;
	a.call = true;
	a.storage = "config.ks";
	a.target = "*config";
	if(kag.clickWaiting){
		kag.setRightClickOptions(a);
		kag.callRightClickSubRoutine();
	}
};
}
tf.WSB=new WaveSoundBuffer(null);
tf.strs1="histvoice(\"";
tf.strs2="\")";
tf.KAGeXpress_voice=0;
function histvoice(storage)
{
	kag.se[0].stop();
	if(!Storages.isExistentStorage(storage))
	{
		var test;
		if(test = storage + ".wav", Storages.isExistentStorage(test))
			storage = test;
		else if(test = storage + ".ogg", Storages.isExistentStorage(test))
			storage = test;
		else if(test = storage + ".tcw", Storages.isExistentStorage(test))
			storage = test;
		else if(test = storage + ".mp3", Storages.isExistentStorage(test))
			storage = test;
		else
			throw new Exception("语音 " + storage + " 未找到");
	}
	tf.WSB.open(storage);
	tf.WSB.play();
}
@endscript


;------------------------------------------------------------
;    内容调整
;------------------------------------------------------------
;前景图层数量修改（默认为3个）
@autolabelmode mode=true
@erafterpage mode=true

;------------------------------------------------------------
;    Macro区域（可根据情况自行调整）
;------------------------------------------------------------

;人物淡入显示
;fg us rule=xxx ....则执行Universal Transition
@macro name=fg
@eval exp="mp.method=universal" cond=mp.us
@backlay
@image * layer=%layer|%lay|0 page=back storage=%storage|%file visible=true key=%key left=%l top=%t opacity=%op pos=%pos
@current layer=message4 page=back
@locate x = 0 y = 0
@button normal = "menu"
@locate x= 108 y = 28
@button graphic="save" enterse ="se1" clickse = "se2"
@locate x = 108 y = 77
@button graphic="quicksave" enterse ="se1" clickse = "se2"
@locate x= 108 y = 126
@button graphic="load" enterse ="se1" clickse = "se2"
@locate x= 108 y = 175
@button graphic="quickload" enterse ="se1" clickse = "se2"
@locate x= 108 y = 224
@button graphic="checka" enterse ="se1" clickse = "se2"
@locate x=108 y =273
@button graphic="setting" enterse ="se1" clickse = "se2"
@locate x=108 y=322
@button graphic="returntop" storage = "title.ks" target=*title enterse ="se1" clickse = "se2"
@eval exp="initb()"
@trans * method=%method|crossfade time=%time|200 layer=base
@wt
@eval exp="kag.fore.messages[4].clear()"
@eval exp="clib()"
@current layer=message4 page=fore
@locate x = 0 y = 0
@button normal = "menu"
@locate x= 108 y = 28
@button graphic="save" enterse ="se1" clickse = "se2"
@locate x = 108 y = 77
@button graphic="quicksave" enterse ="se1" clickse = "se2"
@locate x= 108 y = 126
@button graphic="load" enterse ="se1" clickse = "se2"
@locate x= 108 y = 175
@button graphic="quickload" enterse ="se1" clickse = "se2"
@locate x= 108 y = 224
@button graphic="checka" enterse ="se1" clickse = "se2"
@locate x=108 y =273
@button graphic="setting" enterse ="se1" clickse = "se2"
@locate x=108 y=322
@button graphic="returntop" storage = "title.ks" target=*title enterse ="se1" clickse = "se2"
@eval exp="init()"
@endmacro

;淡出层(layer为正常层)/清除一切(cl all)
;参数：keep=msg/keep=back
;fg us rule=xxx ....则执行Universal Transition
@macro name=cl
@eval exp="mp.method=universal" cond=mp.us
@if exp=mp.all
@clearlayers page=back
@backlay layer=message cond=mp.keep=="msg"|"back"
@backlay layer=base cond=mp.keep=="back"
@clearlayers page=fore keep=%keep
@copylay srclayer=message destlayer=message srcpage=back destpage=fore cond=mp.keep=="msg"|"back"
@copylay srclayer=message destlayer=message srcpage=back destpage=fore cond=mp.keep=="back"
@endif
@backlay
@freeimage layer=%layer|%lay|0 page=back
@current layer=message4 page=back
@locate x = 0 y = 0
@button normal = "menu"
@locate x= 108 y = 28
@button graphic="save" enterse ="se1" clickse = "se2"
@locate x = 108 y = 77
@button graphic="quicksave" enterse ="se1" clickse = "se2"
@locate x= 108 y = 126
@button graphic="load" enterse ="se1" clickse = "se2"
@locate x= 108 y = 175
@button graphic="quickload" enterse ="se1" clickse = "se2"
@locate x= 108 y = 224
@button graphic="checka" enterse ="se1" clickse = "se2"
@locate x=108 y =273
@button graphic="setting" enterse ="se1" clickse = "se2"
@locate x=108 y=322
@button graphic="returntop" storage = "title.ks" target=*title enterse ="se1" clickse = "se2"
@eval exp="initb()"
@trans * method=%method|crossfade time=%time|200 layer=base
@wt
@eval exp="kag.fore.messages[4].clear()"
@eval exp="clib()"
@current layer=message4 page=fore
@locate x = 0 y = 0
@button normal = "menu"
@locate x= 108 y = 28
@button graphic="save" enterse ="se1" clickse = "se2"
@locate x = 108 y = 77
@button graphic="quicksave" enterse ="se1" clickse = "se2"
@locate x= 108 y = 126
@button graphic="load" enterse ="se1" clickse = "se2"
@locate x= 108 y = 175
@button graphic="quickload" enterse ="se1" clickse = "se2"
@locate x= 108 y = 224
@button graphic="checka" enterse ="se1" clickse = "se2"
@locate x=108 y =273
@button graphic="setting" enterse ="se1" clickse = "se2"
@locate x=108 y=322
@button graphic="returntop" storage = "title.ks" target=*title enterse ="se1" clickse = "se2"
@eval exp="init()"
@endmacro

@macro name=cl1
@eval exp="mp.method=universal" cond=mp.us
@if exp=mp.all
@clearlayers page=back
@backlay layer=message cond=mp.keep=="msg"|"back"
@backlay layer=base cond=mp.keep=="back"
@clearlayers page=fore keep=%keep
@copylay srclayer=message destlayer=message srcpage=back destpage=fore cond=mp.keep=="msg"|"back"
@copylay srclayer=message destlayer=message srcpage=back destpage=fore cond=mp.keep=="back"
@endif
@backlay
@freeimage layer=%layer|%lay|0 page=back
@trans * method=%method|crossfade time=%time|200 layer=base
@wt

@endmacro

;背景切换/淡入淡出
;fg us rule=xxx ....则执行Universal Transition
@macro name=bg
@eval exp="mp.method=universal" cond=mp.us
@backlay
@image * layer=base storage=%storage|%file layer=base page=back left=%l top=%t
@trans * method=%method|crossfade time=%time|0 layer=base
@wt
@endmacro

;文字点击换行
@macro name=lr
@eval exp="kag.fore.messages[4].clear()"
@eval exp="clib()"
@current layer=message4 page=fore
@if exp="!isopen"
@locate x = 0 y = 0
@button normal = "menu"
@locate x= 108 y = 28
@button graphic="save" enterse ="se1" clickse = "se2"
@locate x = 108 y = 77
@button graphic="quicksave" enterse ="se1" clickse = "se2"
@locate x= 108 y = 126
@button graphic="load" enterse ="se1" clickse = "se2"
@locate x= 108 y = 175
@button graphic="quickload" enterse ="se1" clickse = "se2"
@locate x= 108 y = 224
@button graphic="checka" enterse ="se1" clickse = "se2"
@locate x=108 y =273
@button graphic="setting" enterse ="se1" clickse = "se2"
@locate x=108 y=322
@button graphic="returntop" storage = "title.ks" target=*title enterse ="se1" clickse = "se2"
@else
@locate x = 0 y = 0
@button normal = "menu"
@locate x= 0 y = 28
@button graphic="save" enterse ="se1" clickse = "se2"
@locate x = 0 y = 77
@button graphic="quicksave" enterse ="se1" clickse = "se2"
@locate x= 0 y = 126
@button graphic="load" enterse ="se1" clickse = "se2"
@locate x= 0 y = 175
@button graphic="quickload" enterse ="se1" clickse = "se2"
@locate x= 0 y = 224
@button graphic="checka" enterse ="se1" clickse = "se2"
@locate x=0 y =273
@button graphic="setting" enterse ="se1" clickse = "se2"
@locate x=0 y=322
@button graphic="returntop" storage = "title.ks" target=*title enterse ="se1" clickse = "se2"
@endif
@eval exp="init()"
@current layer=message0
@locate x = 890 y = 120
;@l
;@r
@p
@if exp="isopen"
@eval exp="isopen = 0"
@eval exp="clib()"
@eval exp="ib(fml(4,1).object,100,0,108,28)"
@eval exp="ib(fml(4,2).object,120,0,108,77)"
@eval exp="ib(fml(4,3).object,140,0,108,126)"
@eval exp="ib(fml(4,4).object,160,0,108,175)"
@eval exp="ib(fml(4,5).object,180,0,108,224)"
@eval exp="ib(fml(4,6).object,200,0,108,273)"
@eval exp="ib(fml(4,7).object,220,0,108,322)"
@endif
@endmacro

;音乐播放/停止音乐播放
@macro name=bgm
@if exp=mp.play||(!mp.stop)
@if exp=mp.time!=0
@xchgbgm storage=%storage|%file overlap=%time loop=%loop|true volume=%volume|100
@endif
@if exp=mp.time==(void)
@playbgm storage=%storage|%file loop=%loop|true volume=%volume|100
@endif
@endif
@if exp=mp.stop
@fadeoutbgm buf=%buf|0 time=%time|0
@endif
@if exp=mp.wait
@wb buf=%buf|0
@endif
@endmacro

;音效播放/停止音效播放
@macro name=se
@if exp=mp.play||(!mp.stop)
@if exp=mp.time!=0
@fadeinse buf=%buf|0 storage=%storage|%file time=%time volume=%volume|100 loop=%loop|false loop=%loop|false
@endif
@if exp=mp.time==(void)
@playse storage=%storage|%file loop=%loop|false volume=%volume|100 buf=%buf|0
@endif
@endif
@if exp=mp.stop
@fadeoutse buf=0 time=%time|0
@endif
@if exp=mp.wait
@wf buf=%buf|0
@ws buf=%buf|0
@endif
@endmacro

;语音播放(可以回放)
@macro name=vo
@if exp=mp.play||(!mp.stop)
@eval exp="tf.WSB.stop()"
@eval exp="tf.KAGeXpress_voice=1"
@playse storage=%storage|%file buf=1
@eval exp="tf.ds=tf.strs1+mp.file+tf.strs2"
@hact exp=&tf.ds
@endif
@if exp=mp.stop
@stopse buf=1
@endif
@endmacro

;视频播放
@macro name=movie
@video visible=true left=0 top=0 width=640 height=480
@playvideo storage=%storage|%file
@wv canskip=true
@endmacro

;等待音效播放结束
@macro name=wse
@ws buf=1 canskip=true
@endmacro

;等待语音播放结束
@macro name=wvo
@ws buf=0 canskip=true
@endmacro

;文字层属性调整
@macro name=frame
[position layer=%layer|%layer|message0 page=fore visible=true opacity=%op top=%t height=%h left=%l width=%w marginl=%ml margint=%mt marginr=%mr marginb=%mb frame=%frame| ]
@endmacro

;下雨/下雪/震动效果
@macro name=fx

@if exp=mp.rain
@if exp=!mp.stop
@raininit forevisible=true backvisible=true
@playse storage=rain.wav buf=2 loop=true
@endif
@if exp=mp.stop
@rainuninit
@stopse buf=2
@endif
@endif

@if exp=mp.snow
@if exp=!mp.stop
@snowinit forevisible=true backvisible=true
@endif
@if exp=mp.stop
@snowuninit
@stopse buf=2
@endif

@endif

@if exp=mp.shake
@quake time=%time hmax=%h vamx=%v
@if exp=mp.wait==true
@wq
@endif
@endif

@endmacro

;画面震动
@macro name=shake
@quake time=%time hmax=%h vamx=%v
@endmacro

;文字框显示/消失
@macro name=text

@if exp=mp.on
@backlay
@layopt layer=message page=back visible=true
@trans method=crossfade time=%time|0
@wt
@layopt layer=message page=fore visible=true
@endif

@if exp=mp.off
@layopt layer=message page=back visible=false
@trans method=crossfade time=%time|0
@wt
@layopt layer=message page=fore visible=false
@endif

@endmacro
@call storage=textset.ks
;------------------------------------------------------------
;    Macro区域
;------------------------------------------------------------
@jump storage=first.ks

