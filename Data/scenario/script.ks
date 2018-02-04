;Script file.
*start

*eps|Day 1

@clickskip enabled = true
@rclick enabled = true
@history output=true enabled=true
@position layer=message1 visible=false

@bgimage storage="bgi01"
@trans method = crossfade time = 1000
@wt

@position layer=message4 visible = true 
@current layer=message4
@locate x = 91 y = 72
@button normal = "menu"
@locate x=112 y = 37
@button graphic="save"
@iscript
var isopen = false;
fml(4,0).object.onClick = function(){
	if(!isopen){
		clib();
		ib(kag.fore.messages[4],300,255,760,0);
		isopen = true;
	}
	else{
		clib();
		ib(kag.fore.messages[4],300,255,760,-72);
		isopen = false;
	}
};
@endscript
@layopt layer=message0 opacity = 255
@current layer=message0

;Script begin.
@n
狐之助
@nn
「经政府严格的查询，我们发现这座本丸中有一名暗堕者。」[lr]
@n
审神者
@nn
「……？？？」[lr]
@n
狐之助
@nn
「考虑到这座本丸在对时间溯行军的战斗中做出过卓越贡献，政府决定若是审神者能在一个月内将暗堕者交出便不对这座本丸进行肃清。」[lr]
@n
狐之助
@nn
「以上是政府交付我要传达的指令，请问审神者大人您还有什么疑问吗？」[lr]
@n
审神者
@nn
「哈……狐之助你这一板一眼的样子我差点以为是真的了，这是鹤丸那家伙提出的主意吧？居然会协助那个老头子的恶作剧，狐之助你是不想要晚餐的油豆腐了吗。话说鹤丸在哪里？让我猜猜是不是在……」[lr]
@n
狐之助
@nn
「审神者大人！我所说的话是政府直接下达的指令！与任何一位付丧神都没有关系！」[lr]
@n
审神者
@nn
「……」[lr]
@n
狐之助
@nn
「请您不要继续装傻了，身为这座本丸的主人您应该是最先察觉到暗堕迹象的，而这么久都没有上报……给您一个月的时间让您查出暗堕者而不是直接销毁这座本丸已经是政府对您的宽容了，请您自知。」[lr]
@n
审神者
@nn
「……一个月后我定会将暗堕者找出。」[lr]
@n
狐之助
@nn
「我这就去将审神者大人的回复告知政府。……审神者大人，在走之前我提醒您一句——请不要感情用事。那么，再会。」[lr]
@n
审神者
@nn
「出阵和远征的应该都回来了吧……」[lr]
@n
@nn
(...)[lr]
@n
审神者
@nn
「事情经过大概就是这样。」[lr]
@n
长谷部
@nn
「……那对于暗堕者主公您有什么头绪吗？」[lr]
@n
审神者
@nn
「如果知道是谁我早就把他揪出来打一顿了好不好。虽然我有感知到本丸中有暗堕者的存在，可是具体是谁我就不知道了。」[lr]
@n
长谷部
@nn
「主公！请您放心好了！我长谷部一定会在一个月的期限……不！如果是主命的话就算是一天的时间我也会将那个暗堕者揪出来，如果您希望手刃家臣的话我也——」[lr]
@n
巴形
@nn
「长谷部，我实在是不明白为什么像你这样的家伙会呆在主人的身边。」[lr]
@n
长谷部
@nn
「哼，像你这种才现形没多久的家伙懂什么。说起来，你这个家伙可不要以为是最近现形的就能摆脱暗堕者的嫌疑，我告诉你在这里的每一振刀就算是今天才被带出来的日向正宗都在嫌疑人的行列中！」[lr]
@n
日向正宗
@nn
「被怀疑了吗？虽然说在这种情况下这也是是理所当然的事情，但是长谷部先生你是否忘记了一件事呢？」[lr]
@n
长谷部
@nn
「哈？」[lr]
@n
巴形
@nn
「压切长谷部，你也是嫌疑犯之一。在现在的情况下除了主人自己，没有任何一振刀剑拥有寻找暗堕者的权力。」[lr]
@n
长谷部
@nn
「……这种事情我早就知道了啊！」[lr]