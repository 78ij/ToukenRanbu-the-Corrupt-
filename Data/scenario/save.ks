;Save Screen

*save
@locksnapshot
@position layer=message1 visible = true opacity = 0 page = fore frame ="savebg"
@current layer=message1
@er
@locate x = 900 y = 259
@button normal = rightn over = righto on = rightc
@locate x = 8 y = 259
@button normal = leftn over = lefto on = leftc
@locate x = 826 y = 506
@button normal = returnn over = returno on = returnc target = *savereturn
@iscript
tf.savepages = 0;
var saveloadbuttons = [];
var pagebuttons = [];
for(var i = 0; i < 6; i++){
	saveloadbuttons[i] = new SaveLoadButtonLayer(kag,kag.fore.messages[1]);
	saveloadbuttons[i].show(i + tf.savepages * 6 ,true,(int (i % 2)) * 431 + 76,(int (i / 2)) * 146 + 61);
}

for(var i = 0; i < 10; i++){
	pagebuttons[i] = new ButtonLayer(kag,kag.fore.messages[1]);
	pagebuttons[i].loadButtons(string (i + 1),(string (i + 1)) + "g",(string (i + 1)) + "g",void);
	if(i == tf.savepages){
		pagebuttons[i].loadButtons(string (i + 1) + "g",(string (i + 1)) + "g",(string (i + 1)) + "g",void);
	}
	pagebuttons[i].setPos(325 + 35 * i,515);
	pagebuttons[i].visible = true;
}

//no closure????????
//so i must writ some SB code
	pagebuttons[0].onClick = function(x,y){
		tf.savepages = 0;
		upd();
	};
	pagebuttons[1].onClick = function(x,y){
		tf.savepages = 1;
		upd();
	};
	pagebuttons[2].onClick = function(x,y){
		tf.savepages = 2;
		upd();
	};
	pagebuttons[3].onClick = function(x,y){
		tf.savepages = 3;
		upd();
	};
	pagebuttons[4].onClick = function(x,y){
		tf.savepages = 4;
		upd();
	};
	pagebuttons[5].onClick = function(x,y){
		tf.savepages = 5;
		upd();
	};
	pagebuttons[6].onClick = function(x,y){
		tf.savepages = 6;
		upd();
	};
	pagebuttons[7].onClick = function(x,y){
		tf.savepages = 7;
		upd();
	};
	pagebuttons[8].onClick = function(x,y){
		tf.savepages = 8;
		upd();
	};
	pagebuttons[9].onClick = function(x,y){
		tf.savepages = 9;
		upd();
	};
function upd(){
	dm("s");
	for(var i = 0; i < 6; i++){
		saveloadbuttons[i].show(i + tf.savepages * 6 ,true,(int (i % 2)) * 431 + 76,(int (i / 2)) * 146 + 61);
	}
	for(var i = 0; i < 10; i++){
	pagebuttons[i].loadButtons(string (i + 1),(string (i + 1)) + "g",(string (i + 1)) + "g",void);
	if(i == tf.savepages){
		pagebuttons[i].loadButtons(string (i + 1) + "g",(string (i + 1)) + "g",(string (i + 1)) + "g",void);
	}
	pagebuttons[i].setPos(325 + 35 * i,515);
	pagebuttons[i].visible = true;
}
}
fml(1,1).object.onClick = function(x,y){
	if(tf.savepages > 0){
		tf.savepages--;
		upd();
	}
};
fml(1,0).object.onClick = function(x,y){
	dm("aaa");
	if(tf.savepages < 9){
		tf.savepages++;
		upd();
	}
};
kag.fore.messages[1].opacity = 0;
ib(kag.fore.messages[1],500,255,0,0);
@endscript
@s
*savereturn
@unlocksnapshot
@iscript
ib(kag.fore.messages[1],500,1,0,0);
var a = %[];
a.enabled = false;
kag.setRightClickOptions(a);
@endscript
@current layer=message0
@return