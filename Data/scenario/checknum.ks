;Check various values

*checknum
@rclick enabled = false
@position layer = message1  frame = "checkbg"
@position layer=message1 visible = true
@layopt layer=message1 opacity=0
@iscript
kag.fore.messages[1].clear();
var saveloadbuttons = [];
var pagebuttons = [];
saveloadbuttons.clear();
pagebuttons.clear();
if(f.gov == void)
	f.gov = 10;
if(f.susp == void)
	f.susp = 0;
if(f.beli == void)
	f.beli = 80;
var gov = new Layer(kag,kag.fore.messages[1]);
gov.onPaint = function(){
	//gov.super.onPaint();
	var temp = kag.temporaryLayer;
	temp.loadImages("valfill");
	var width = int ((f.gov / 100) * 530);
	gov.copyRect(0,0,temp,0,0,width,15);
};
gov.loadImages("valbg");
gov.setPos(226,225);
gov.setSizeToImageSize();
gov.visible = true;
gov.update();

var susp = new Layer(kag,kag.fore.messages[1]);
susp.onPaint = function(){
	//gov.super.onPaint();
	var temp = kag.temporaryLayer;
	temp.loadImages("valfill");
	var width = int ((f.susp / 100) * 530);
	susp.copyRect(0,0,temp,0,0,width,15);
};
susp.loadImages("valbg");
susp.setPos(226,290);
susp.setSizeToImageSize();
susp.visible = true;
susp.update();

var beli = new Layer(kag,kag.fore.messages[1]);
beli.onPaint = function(){
	//gov.super.onPaint();
	var temp = kag.temporaryLayer;
	temp.loadImages("valfill");
	var width = int ((f.beli / 100) * 530);
	beli.copyRect(0,0,temp,0,0,width,15);
};
beli.loadImages("valbg");
beli.setPos(226,353);
beli.setSizeToImageSize();
beli.visible = true;
beli.update();

kag.fore.messages[1].font.height = 16;
kag.fore.messages[1].font.face = "¿¬Ìå";
kag.fore.messages[1].drawText(365,197,(string f.gov) + " / 100",0x000000);
kag.fore.messages[1].drawText(415,261,(string f.susp) + " / 100",0x000000);
kag.fore.messages[1].drawText(415,325,(string f.beli) + " / 100",0x000000);
ib(kag.fore.messages[1],500,255,0,0);
@endscript
@current layer=message1
@locate x=417 y=382
@button normal=returnn over=returno on=returnc target=*checkreturn
@s
*checkreturn
@iscript
ib(kag.fore.messages[1],500,1,0,0);
//ib(bgmconf,500,1,333,210);
//ib(seconf,500,1,333,285);
@endscript
@wait time = 500
@iscript
kag.fore.messages[1].clear();
invalidate gov;
invalidate susp;
invalidate beli;
@endscript
@current layer=message0
@return