local proto={
	Schema=[[
//由于需要自己写proto文件对应的lua提示代码和消息号、消息名互查,故proto文件格式需要遵循如下约定：
//1,收发消息的结构，上面用msgID=消息号来标识
//2,普通结构不需要消息号标识
//3,消息或者结构由   message 名称{   构成
//4,结构(包括消息)中{需要紧跟结构名，然后换行
//5,}需要另起一行，标识一个结构声明结束
//6,结构类的条目由(限定修饰符 数据类型 字段名称=字段编码值;//注释)这几个部分构成，各个部分之间最多只能有一个空格字符隔开
//7,//start标识proto声明开始

//start
//msgID=10019
message C2S_XJDZ_LOGIN_REQ{
	required string account=1;//帐号
	required string nick_name=2;//名字
	required string pwd=3;//密码
	required string loginIp=4;//登录ip
}

//msgID=10020
message S2C_XJDZ_LOGIN_RES{
	required string account=1;
	required string nick_name=2;
}
	
message Role{
	required string roleName=1;
	required int32 id=2;
	required float germXPos=3;
	required float germYPos=4;
	required bool isEnviroment=5;
}
	
//客户端连接上服务器后，服务器的广播问候
//msgID=1
message SendHelloClient{
	required string greetStr=1;
	required string randomName=2;//服务器给你随机取的名字
}
 		
//创建战场
//msgID=2
message ReqCreateBattle{			 
}
//msgID=3
message ResCreateBattle{
	required bool result=1;	
	optional string errorMsg=2;		
}

//加入战场
//msgID=4
message ReqJoinBattle {	  
}
//msgID=5
message ResJoinBattle{		
	required bool result=1;
	optional string errorMsg=2;
	repeated Role role=3;//战场所有人
}
	
//生成野怪
//msgID=6
message SendEnviromentRole{
	repeated Role role=1;
}
	
//游戏开始
//msgID=10
message SendBattleStart{
}
	
	
//产生桥
//msgID=11
message ReqGenBridge{
	required int32 startGermId=1;
	required int32 endGermId=2;		
}
//msgID=12
message ResGenBridge{
	required bool result=1;
	required string errorMsg=2;
	required int32 startGermId=3;
	required int32 endGermId=4;		
}
	
	
//切断桥
//msgID=13
message ReqCutBridge{
	required string bridgeName=1;
	required int32 cutPosIndex=2;//切到的小球对应的索引
}
//msgID=14
message ResCutBridge{
	required bool result=1;
	required string errorMsg=2;
	required string bridgeName=3;
	required int32 cutPosIndex=4;
}
	
//撤销桥
//msgID=15
message ReqRepealBridge{
	required string bridgeName=1;
	required int32 leftCount=2;
}

//msgID=16
message ResRepealBridge{
	required bool result=1;
	required string errorMsg=2;
	required string bridgeName=3;
	required int32 leftCount=4;
}]],
NameByID={
	[10019]="C2S_XJDZ_LOGIN_REQ",
	[10020]="S2C_XJDZ_LOGIN_RES",
	[1]="SendHelloClient",
	[2]="ReqCreateBattle",
	[3]="ResCreateBattle",
	[4]="ReqJoinBattle",
	[5]="ResJoinBattle",
	[6]="SendEnviromentRole",
	[10]="SendBattleStart",
	[11]="ReqGenBridge",
	[12]="ResGenBridge",
	[13]="ReqCutBridge",
	[14]="ResCutBridge",
	[15]="ReqRepealBridge",
	[16]="ResRepealBridge",
},

IDByName={
	["C2S_XJDZ_LOGIN_REQ"]=10019,
	["S2C_XJDZ_LOGIN_RES"]=10020,
	["SendHelloClient"]=1,
	["ReqCreateBattle"]=2,
	["ResCreateBattle"]=3,
	["ReqJoinBattle"]=4,
	["ResJoinBattle"]=5,
	["SendEnviromentRole"]=6,
	["SendBattleStart"]=10,
	["ReqGenBridge"]=11,
	["ResGenBridge"]=12,
	["ReqCutBridge"]=13,
	["ResCutBridge"]=14,
	["ReqRepealBridge"]=15,
	["ResRepealBridge"]=16,
},

ResetByID={
	[10019]=function(obj)	--C2S_XJDZ_LOGIN_REQ
		if obj==nil then return end
		obj.account=""
		obj.nick_name=""
		obj.pwd=""
		obj.loginIp=""
	end,
	[10020]=function(obj)	--S2C_XJDZ_LOGIN_RES
		if obj==nil then return end
		obj.account=""
		obj.nick_name=""
	end,
	[1]=function(obj)	--SendHelloClient
		if obj==nil then return end
		obj.greetStr=""
		obj.randomName=""
	end,
	[2]=function(obj)	--ReqCreateBattle
		if obj==nil then return end
	end,
	[3]=function(obj)	--ResCreateBattle
		if obj==nil then return end
		obj.result=nil
		obj.errorMsg=""
	end,
	[4]=function(obj)	--ReqJoinBattle
		if obj==nil then return end
	end,
	[5]=function(obj)	--ResJoinBattle
		if obj==nil then return end
		obj.result=nil
		obj.errorMsg=""
		obj.role=nil
	end,
	[6]=function(obj)	--SendEnviromentRole
		if obj==nil then return end
		obj.role=nil
	end,
	[10]=function(obj)	--SendBattleStart
		if obj==nil then return end
	end,
	[11]=function(obj)	--ReqGenBridge
		if obj==nil then return end
		obj.startGermId=nil
		obj.endGermId=nil
	end,
	[12]=function(obj)	--ResGenBridge
		if obj==nil then return end
		obj.result=nil
		obj.errorMsg=""
		obj.startGermId=nil
		obj.endGermId=nil
	end,
	[13]=function(obj)	--ReqCutBridge
		if obj==nil then return end
		obj.bridgeName=""
		obj.cutPosIndex=nil
	end,
	[14]=function(obj)	--ResCutBridge
		if obj==nil then return end
		obj.result=nil
		obj.errorMsg=""
		obj.bridgeName=""
		obj.cutPosIndex=nil
	end,
	[15]=function(obj)	--ReqRepealBridge
		if obj==nil then return end
		obj.bridgeName=""
		obj.leftCount=nil
	end,
	[16]=function(obj)	--ResRepealBridge
		if obj==nil then return end
		obj.result=nil
		obj.errorMsg=""
		obj.bridgeName=""
		obj.leftCount=nil
	end,
},
}
return proto