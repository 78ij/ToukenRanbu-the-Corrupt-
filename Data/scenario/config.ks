;Config screen

*config
@rclick enabled = false
@position layer = message1  frame = "configbg"
@layopt layer=message1 opacity=0
@iscript
var saveloadbuttons = [];
var pagebuttons = [];
saveloadbuttons.clear();
pagebuttons.clear();
tf.needtrans = false;
var bgmconf = new SliderLayer(kag,kag.fore.messages[1],false);
bgmconf.setPos(333,210);
bgmconf.loadBase("confsliderbg");
bgmconf.loadTabs("configslidertab","configslidertab","configslidertab");
bgmconf.visible = true;
var seconf = new SliderLayer(kag,kag.fore.messages[1],false);
seconf.setPos(333,285);
seconf.loadBase("confsliderbg");
seconf.loadTabs("configslidertab","configslidertab","configslidertab");
seconf.visible = true;
ib(kag.fore.messages[1],500,255,0,0);
@endscript
@current layer=message1
@locate x=417 y=328
@button normal=returnn over=returno on=returnc target=*configreturn
@s
*configreturn
@iscript
ib(kag.fore.messages[1],500,1,0,0);
kag.fore.messages[1].clear();
@endscript
@current layer=message0
@if exp="tf.istitleconfig == true"
@wait time = 500
@menul layer=message1
@jump storage = "title.ks" target= *title
@else
@return
@endlf