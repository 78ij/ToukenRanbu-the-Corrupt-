;毎行保存用サブルーチン
*autoLabelLabel|
@if exp = "fml(4,0) == void"
@position layer=message4 visible = true 
@current layer=message4
@locate x = 0 y = 0
@button normal = "menu"
@locate x= 108 y = 28
@button graphic="save"
@locate x = 108 y = 77
@button graphic="quicksave"
@locate x= 108 y = 126
@button graphic="load"
@locate x= 108 y = 175
@button graphic="quickload"
@locate x= 108 y = 224
@button graphic="returntop" storage = "title.ks" target=*title
@iscript
fml(4,2).object.onClick = function(x,y){	
	askYesNo("要快速存档?？","??",kag.saveBookMark,void,119);
};
fml(4,4).object.onClick = function(x,y){	
	askYesNo("要快速?档?？","??",kag.loadBookMark,void,119);
};
for(var i = 1;i <= 5;i++){
	fml(4,i).object.opacity = 0;
}
var isopen = false;
fml(4,0).object.onClick = function(){
	if(!isopen){
		clib();
		ib(fml(4,1).object,200,255,0,28);
		ib(fml(4,2).object,250,255,0,77);
		ib(fml(4,3).object,300,255,0,126);
		ib(fml(4,4).object,350,255,0,175);
		ib(fml(4,5).object,400,255,0,224);
		isopen = true;
	}
	else{
		clib();
		ib(fml(4,1).object,200,0,108,28);
		ib(fml(4,2).object,250,0,108,77);
		ib(fml(4,3).object,300,0,108,126);
		ib(fml(4,4).object,350,0,108,175);
		ib(fml(4,5).object,400,0,108,224);
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
@endscript
@endif
@return
