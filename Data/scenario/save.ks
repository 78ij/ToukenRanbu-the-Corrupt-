;Save Screen

*save
@locksnapshot
@position layer=message1 visible = true opacity = 0 page = fore frame ="savebg"
@current layer=message1
@er
@iscript
var saveloadbuttons = [];
for(var i = 0; i < 6; i++){
	saveloadbuttons[i] = new SaveLoadButtonLayer(kag,kag.fore.messages[1]);
	saveloadbuttons[i].show(i,true,(int (i % 2)) * 431 + 76,(int (i / 2)) * 146 + 61);
}
kag.fore.messages[1].opacity = 0;
ib(kag.fore.messages[1],500,255,0,0);
@endscript