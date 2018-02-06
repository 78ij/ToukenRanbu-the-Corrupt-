;Script file.

*save
@tempsave place = 120
@jump storage = "save.ks" target = *save
*start
@eval exp="clib()"
@clickskip enabled = true
@history output=true enabled=true
@position layer=message1 visible=false
@rclick enabled = false
@bgimage storage="bgi01"
@trans method = crossfade time = 1000
@wt

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
@layopt layer=message0 opacity = 255
@current layer=message0

*eps|Day 1

;Script begin.
@n
��֮��
@nn
���������ϸ�Ĳ�ѯ�����Ƿ���������������һ�������ߡ���[lr]
@n
������
@nn
��������������[lr]
@n
��֮��
@nn
�����ǵ����������ڶ�ʱ�����о���ս����������׿Խ���ף�����������������������һ�����ڽ������߽����㲻����������������塣��[lr]
@n
��֮��
@nn
������������������Ҫ�����ָ����������ߴ���������ʲô�����𣿡�[lr]
@n
������
@nn
����������֮������һ��һ�۵������Ҳ����Ϊ������ˣ����Ǻ����Ǽһ����������ɣ���Ȼ��Э���Ǹ���ͷ�ӵĶ����磬��֮�����ǲ���Ҫ��͵��Ͷ������𡣻�˵������������Ҳ²��ǲ����ڡ�����[lr]
@n
��֮��
@nn
�������ߴ��ˣ�����˵�Ļ�������ֱ���´��ָ����κ�һλ��ɥ��û�й�ϵ����[lr]
@n
������
@nn
��������[lr]
@n
��֮��
@nn
��������Ҫ����װɵ�ˣ���Ϊ���������������Ӧ�������Ȳ�������鼣��ģ�����ô�ö�û���ϱ���������һ���µ�ʱ��������������߶�����ֱ���������������Ѿ������������Ŀ����ˣ�������֪����[lr]
@n
������
@nn
������һ���º��Ҷ��Ὣ�������ҳ�����[lr]
@n
��֮��
@nn
�������ȥ�������ߴ��˵Ļظ���֪���������������ߴ��ˣ�����֮ǰ��������һ�䡪���벻Ҫ�������¡���ô���ٻᡣ��[lr]
@n
������
@nn
�������Զ����Ӧ�ö������˰ɡ�����[lr]
@n
@nn
(...)[lr]
@n
������
@nn
�����龭����ž�����������[lr]
@n
���Ȳ�
@nn
�������Ƕ��ڰ�������������ʲôͷ���𣿡�[lr]
@n
������
@nn
�����֪����˭����Ͱ�����������һ���˺ò��á���Ȼ���и�֪���������а����ߵĴ��ڣ����Ǿ�����˭�ҾͲ�֪���ˡ���[lr]
@n
���Ȳ�
@nn
���������������ĺ��ˣ��ҳ��Ȳ�һ������һ���µ����ޡ�����������������Ļ�������һ���ʱ����Ҳ�Ὣ�Ǹ������߾������������ϣ�����мҳ��Ļ���Ҳ������[lr]
@n
����
@nn
�����Ȳ�����ʵ���ǲ�����Ϊʲô���������ļһ��������˵���ߡ���[lr]
@n
���Ȳ�
@nn
���ߣ��������ֲ�����û��õļһﶮʲô��˵������������һ�ɲ�Ҫ��Ϊ��������εľ��ܰ��Ѱ����ߵ����ɣ��Ҹ������������ÿһ�񵶾����ǽ���ű����������������ڶ��������˵������У���[lr]
@n
��������
@nn
��������������Ȼ˵�������������Ҳ����������Ȼ�����飬���ǳ��Ȳ��������Ƿ�������һ�����أ���[lr]
@n
���Ȳ�
@nn
��������[lr]
@n
����
@nn
��ѹ�г��Ȳ�����Ҳ�����ɷ�֮һ�������ڵ�����³��������Լ���û���κ�һ�񵶽�ӵ��Ѱ�Ұ����ߵ�Ȩ������[lr]
@n
���Ȳ�
@nn
�������������������֪���˰�����[lr]