;毎行保存用サブルーチン
*autoLabelLabel|
@if exp = "fml(4,0) == void"
@position layer=message4 visible = true 
@current layer=message4
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
@iscript
fml(4,2).object.onClick = function(x,y){	
	askYesNo("要快速存档吗？","确认",kag.saveBookMark,void,119);
};
fml(4,4).object.onClick = function(x,y){	
	askYesNo("要快速读档吗？","确认",kag.loadBookMark,void,119);
};
for(var i = 1;i <= 5;i++){
	fml(4,i).object.opacity = 0;
}
var isopen = false;
fml(4,0).object.onClick = function(){
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

@endscript
@endif
@return
