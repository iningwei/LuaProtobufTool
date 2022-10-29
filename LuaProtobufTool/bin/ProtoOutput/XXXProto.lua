---@class Proto
local Proto={
Schema=[[
syntax="proto3"
// 空数据
message PbEmptyMsg {

}

// 服务器返回用户关闭
message PbClinetCloseMsg {
  uint32 result = 1; // 返回信息
  uint32 uid    = 2; // 玩家ID
}

// 点对点推送 枚举
enum PTPResp {
  PTP_AVATAR_TIME_OUT = 0; // 用户装扮到期
}

// 点对点推送
message PbRolePTPPushResp {
  PTPResp Types = 1;
}
// 获取手机验证码
message C2SVerificationCodeReq {
  string phone = 1; // 电话号码
}

// 返回获取的验证码
message S2CVerificationCodeResp {
  bool result = 1; // 是否获取成功
}

// 用户登录枚举值
enum LoginRetReq
{
  Q_ACCOUNT = 0; // 账号登录
  Q_WECHAT  = 1; // 微信登录
  Q_PHONE   = 2; // 电话号码登录
}
// 用户登录
message C2SMsgLoginReq
{
  string      account   = 1; // 账号/微信号/电话号码
  LoginRetReq loginType = 2; // 登录类型 [ 必填 ]
  string verification   = 3; // 验证码 [ 非必填 ]
  string password       = 4; // 密码 [ 必填 微信/电话号码 为成功返回的密码 ]
}

// 用户登录返回枚举值
enum LoginRetResp
{
  RR_ERROR             = 0; // 错误
  RR_SERVER_BUSY       = 1;
  RR_NO_ROLE           = 2; // 没有角色
  RR_SENSITIVEWORDS    = 3; // 敏感词
  RR_SAME_NAME         = 4; // 重名
  RR_ACCOUNT_PASSWORDS = 5; // 账号或者密码错误
  RR_VERIFICATION      = 6; // 验证码错误
  RR_PHONENUMBER       = 7; // 手机号码格式错误
  RR_ACCOUNTEMPT       = 8; // 账号为空
  RR_PASSEMPTY         = 9; // 密码为空
  RR_SUCCESS           = 10;// 成功
}

// 服务器返回登录信息
message S2CMsgLoginResp {
  LoginRetResp          result        = 1;        //登录错误枚举
  uint32                uId           = 2;        //玩家id
  string                account       = 3;        //玩家账号
  string                password      = 4;        //登录密码
  string                wechat        = 5;        //微信账号
  string                phone         = 6;        //电话号码
}

// 服务器返回客户端IP
message S2CGetCliIPResp {
  string cliIp = 1; // 玩家IP
}

// 服务器返回默认服装
message S2CDefaultClothing {
  repeated uint32 Men    = 1; // 默认男服装list
  repeated uint32 Female = 2; // 默认女装list
}
//位置信息
message PbVec3{
	float X=1;
	float Y=2;
	float Z=3;
}

//位置信息
message PbVec3{
	float X=1;
	float Y=2;
	float Z=3;
}

message PbPosition{
	PbVec3 Pos=1;	//位置
	PbVec3 Dir=2;	//朝向
}

//玩家位置信息
message PbPlayerPos{
	uint32 UID	=	1;	//用户ID
	PbPosition P	=	2;
}


// 用户已经穿戴的数
message PbDresseds  {
	uint32  ItemId  = 1; // 道具ID
	uint32  ChildId = 2;// 物品ID
	uint32  EndTime   = 3; // 到期时间
}


//玩家简略信息
message PbPlayerMin{
	uint32              UID	      = 1; // 用户ID
	string              Name      = 2; // 昵称
	uint32              Sex       = 3; // 性别
	repeated PbDresseds Dressed   = 4; // 穿戴信息
	uint32              LocalTime = 5; // 服务器本地时间
	uint32 							Action		= 6;	//用户行为，1站立、空闲，2行走，3跑，4跳
}

//玩家详细信息
message PbPlayerInfo{
	uint32 UID	=	1;	//用户ID
	string Name	=	2;	//昵称
}

//玩家详细信息
message PbPlayerInfo{
	uint32 UID	=	1;	//用户ID
	string Name	=	2;	//昵称
}

message C2SPlayerMove{
	uint32 UID				=	1;	//用户ID
	PbPosition CurPos	= 2;	//当前位置
}

//玩家广播数据
message S2CSyncPos{
	repeated PbPlayerPos Lst	=	1;//用户位置信息列表
}

//玩家广播数据
message S2CSyncPos{
	repeated PbPlayerPos Lst	=	1;//用户位置信息列表
}

message S2CPlayerRemove{
	repeated uint32 Lst	=	1;//用户ID列表
}

// 服务器发给客户端的玩家简略信息（场景显示玩家所需信息）
message S2CPlayerMin{
	repeated PbPlayerMin Lst	=	1;
}

// 客户端发给服务器，获取玩家详细信息
message C2SPlayerInfo{
	uint32 UID	=	1;	//用户ID
}

// 服务器发给客户端的玩家详细信息（查看玩家详情所需信息）
message S2CPlayerInfo{
	PbPlayerInfo Data	=	1;	//用户信息
}

// 客户端发给服务器，获取玩家详细信息
message C2SChangeAction{
	uint32 UID		=	1;	//用户ID
	uint32 Action	= 2;	//用户行为，1站立、空闲，2行走，3跑，4跳
}

// 服务器发给客户端的玩家详细信息（查看玩家详情所需信息）
message S2CChangeAction{
	uint32 UID		=	1;	//用户ID
	uint32 Action	= 2;	//用户行为
}
// 通用道具结构
message PbItem {
  uint32 Uid      = 1; // 道具唯一ID
  uint32 Id       = 2; // 道具配置ID
  uint32 Number   = 3; // 道具数量
  uint32 Times    = 4; // 道具有效期[0:没有时效 1:赛季道具 >1:时效时间]
  uint32 Durable  = 5; // 道具耐久度[0:没有耐久度 >0:当前耐久度]
}

// 装扮信息
message PbDress {
  uint32 itemID          = 1; // 物品ID
  uint32 childId         = 2; // 子ID
  uint32 number          = 3; // 物品数量
  uint32 durable         = 4; // 剩余耐久度
  uint32 typeOfExistence = 5; // 装扮存在类型 0 没有类型 1 赛季 >1 秒
  uint32 startTime       = 6; // 开始时间 [ 赛季：开始时间  秒：获取时间 ]
  uint32 endTime         = 7; // 结束时间 [ 赛季：结束时间  秒：到期时间 ]
  uint32 star            = 8; // 星级
  uint32 level           = 9; // 级别
  repeated uint32 up     = 10;// 上限
  repeated uint32 down   = 11;// 下限
  bool   isDressUp       = 12;// 是否已经装扮
  bool   isNew           = 13;// 是否是新获得
}

// 道具信息更新推送
message S2CMsgUserItemsUpdate {
  repeated PbItem addCurs      = 1; // 增加的货币
  repeated PbItem upCurs       = 2; // 更新的货币
  repeated uint32 delCurs      = 3; // 删除的货币
  repeated PbItem addItems     = 4; // 增加的道具
  repeated PbItem upItems      = 5; // 更新的道具
  repeated uint32 delItems     = 6; // 删除的道具
  repeated PbDress addDress    = 7; // 增加的装备
  repeated PbDress upDress     = 8; // 更新的装备
  repeated uint32  delDress    = 9; // 删除的装备
}

// 道具和合成
message C2SMergeItemReq {
  uint32 mergeId = 1;// 需要合成的ID
}

// 合成枚举值
enum PbMergeResp {
  MERGE_ACCESS            = 0; // 合成成功
  MERGE_ITEM_NUMBER_ERROR = 1; // 合成碎片不足
  MERGE_FAIL              = 2; // 合成失败
  MERGE_MERGE_ID_ERROR    = 3; // 合成ID错误
  MERGE_DEL_ITEM_ERROR    = 4; // 删除已经合成的碎片失败
}

// 返回道具合成结果
message S2CMergeItemResp {
    PbMergeResp result = 1; // 合成状态
}
// 角色相关协议返回枚举值
enum RoleRetResp
{
  RRR_SUCCESS             = 0; // 成功
  RRR_ERR                 = 1; // 错误
  RRR_BIRTH_ERR           = 2; // 角色出生时间错误
  RRR_CITY_ERR            = 3; // 角色城市错误
  RRR_SEX_ERR             = 4; // 角色性别错误
  RRR_NICKNAME_LENGTH_ERR = 5; // 角色昵称长度错误
  RRR_NICKNAME_SAME_ERR   = 6; // 角色昵称重名错误
  RRR_CREATE_ERR          = 7; // 角色重复创建
  RRR_ROLE_NOT_ERR        = 8; // 角色未创建
  RRR_NICKNAME_NO_CHANGE  = 9; // 角色昵称未修改
  RRR_PHONE_ERR  = 10; // 角色手机号错误
}

// 创建角色
message C2SMsgCreateRoleReq
{
  uint32  birth = 1;    // 出生时间
  string  city  = 2;    // 城市
  uint32  sex   = 3;    // 性别
  string  nickName = 4; // 昵称
  string  dressed  = 5; // 穿戴信息
  string  avatar   = 6; // 头像
}

// 创建角色返回
message S2CMsgCreateRoleResp {
  RoleRetResp   result  = 1; // 结果
}

// 请求其他用户数据
message C2SOtherUserBaseReq {
  uint32 uid = 1; // 用户ID
}

// 返回用户数据
message S2CUserBaseResp {
           uint32        uid         = 1; // 用户ID
           uint32        birth       = 2; // 出生时间
           string        city        = 3; // 城市
           uint32        sex         = 4; // 性别
           string        nickName    = 5; // 昵称
           uint32        level        = 6; // 级别
           string        avatar       = 7; // 头像
           uint64        power        = 8; // 体力
           uint64        nftCount     = 9; // nft数量
           uint64        ranking      = 10;// 排名
           uint64        quarterScore = 11;// 季度赛分数
  repeated PbUseDresseds dressed      = 12;// 穿戴信息
           string        microBlog    = 13;// 博客账号
           string        QQ           = 14;// QQ账号
           string        mailBox      = 15;// e-mail账号
           string        Phone        = 16;// 手机号
           string        weChat       = 17;// 微信号
           string        IdCard       = 18;// 身份证验证信息
           uint32        isVerify     = 19;// 是否验证 0位 手机号验证 1位 微信号验证 【备注 已经验证为1】
  repeated PbUserItem    currency     = 20;// 货币背包
           uint32        LocalTime    = 21;// 服务器本地时间
}

// 返回其他用户数据
message S2COtherUserBaseResp {
           uint32        uid         = 1; // 用户ID
           uint32        birth       = 2; // 出生时间
           string        city        = 3; // 城市
           uint32        sex         = 4; // 性别
           string        nickName    = 5; // 昵称
           uint32        level        = 6; // 级别
           string        avatar       = 7; // 头像
           uint64        power        = 8; // 体力
           uint64        nftCount     = 9; // nft数量
           uint64        ranking      = 10;// 排名
           uint64        quarterScore = 11;// 季度赛分数
  repeated PbUseDresseds dressed      = 12;// 穿戴信息
           string        microBlog    = 13;// 博客账号
           string        QQ           = 14;// QQ账号
           string        mailBox      = 15;// e-mail账号
           string        Phone        = 16;// 手机号
           string        weChat       = 17;// 微信号
           string        IdCard       = 18;// 身份证验证信息
           uint32        isVerify     = 19;// 是否验证 0位 手机号验证 1位 微信号验证 【备注 已经验证为1】
           uint32        LocalTime    = 20;// 服务器本地时间
}

// 修改角色基本信息
message C2SMsgChangeRoleBaseReq {
  uint32  birth     = 1; // 出生时间
  string  city      = 2; // 城市
  string  avatar    = 3; // 头像
  string  dressed   = 4; // 穿戴信息
  string  nickName  = 5; // 昵称
  string  microBlog = 6; // 微博
  string  QQ        = 7; // qq
  string  mailBox   = 8; // 邮箱
  string  phone     = 9; // 手机
  string  weChat    = 10;// 微信
}

// 修改角色基本信息返回
message S2CMsgChangeRoleBaseResp {
  RoleRetResp   result  = 1; // 结果
}

// 角色装扮请求信息
message C2SUserDressUpRep {
  repeated uint32 oldDressed = 1; // 之前的装扮信息 [ 备注 可以不发 ]
  repeated uint32 newDressed = 2; // 最新的装扮信息 [ 备注 必填 ]
}

// 角色装扮返回信息
message S2CUserDressUpResp {
  repeated uint32 dressed = 1; // 最新装扮
           bool   isOk    = 2; // 是否装扮成功 [ 备注 false 没有装扮成功 且 dressed 为空 true 装扮成功 ]
}

// 装扮信息
message PbAvatarInfo {
  uint32 itemID          = 1; // 物品ID
  uint32 childId         = 2; // 子ID
  uint32 number          = 3; // 物品数量
  uint32 durable         = 4; // 剩余耐久度
  uint32 typeOfExistence = 5; // 装扮存在类型 0 没有类型 1 赛季 >1 秒
  uint32 startTime       = 6; // 开始时间 [ 赛季：开始时间  秒：获取时间 ]
  uint32 endTime         = 7; // 结束时间 [ 赛季：结束时间  秒：到期时间 ]
  uint32 star            = 8; // 星级
  uint32 level           = 9; // 级别
  repeated uint32 up     = 10;// 上限
  repeated uint32 down   = 11;// 下限
  bool   isDressUp       = 12;// 是否已经装扮
  bool   isNew           = 13;// 是否是新获得
}

// 装扮List信息
message S2CAvatarInfoList {
  repeated PbAvatarInfo avaterList = 1; // 装扮信息list
}

// 装扮List信息
message C2SAvatarTsAdd {
  uint32 itemID  = 1; // 物品ID
}

// 装扮List信息
message S2CAvatarTsAdd {
  uint32 itemID  = 1; // 物品ID
}

// 用户已经穿戴的数
message PbUseDresseds  {
  uint32 ItemId    = 1; // 道具ID
  uint32 ChildId   = 2; // 物品ID
  uint32 EndTime   = 3; // 到期时间
}

// 通用道具结构
message PbUserItem {
  uint32 Uid      = 1; // 道具唯一ID
  uint32 Id       = 2; // 道具配置ID
  uint32 Number   = 3; // 道具数量
  uint32 Times    = 4; // 道具有效期[0:没有时效 1:赛季道具 >1:时效时间]
  uint32 Durable  = 5; // 道具耐久度[0:没有耐久度 >0:当前耐久度]
}

// 背包道具信息
message S2CItemsInfoList {
  repeated PbUserItem    items    = 1; // 道具背包
}

// 装备养成枚举值
enum AvatarRetResp
{
  RR_ERROR             = 0; // 错误
  RR_SUCCESS           = 1; // 成功
  RR_NO_NEED_REPAIR    = 2; // 装备不需要修复
  RR_MAX_DURABLE       = 3; // 装备耐久度已满
  RR_NO_ENOUGH_STAR    = 4; // 装备星级不够
  RR_NO_ENOUGH_LEVEL   = 5; // 装备等级不够
  RR_NO_Dress          = 6; // 没有装备
  RR_FAILED            = 7; // 养成失败
}

// 装备修复
message  C2SAvatarRepairReq {
           uint32   ChildId              = 1; // 装备唯一ID
  repeated uint32   DressConsumeChildIds = 2; // NFT装备消耗
  ItemConsumeRetReq ItemConsumeType      = 3; // 普通修复消耗[非必填,nft装备不填]
}

// 道具消耗枚举值
enum ItemConsumeRetReq
{
  Q_PLUME = 0; // 消耗羽毛
  Q_GOLD  = 1; // 消耗金币
}

// 装备修复
message S2CAvatarRepairResp {
  AvatarRetResp result  = 1;  // 返回枚举值
    uint32      ChildId = 2; // 唯一装备ID
    uint32      Durable = 3; // 装备耐久值
}

// 装备升级
message  C2SAvatarUpgradeReq {
  uint32            ChildId         = 1; // 装备唯一ID
}

// 装备升级
message  S2CAvatarUpgradeResp {
  AvatarRetResp result  = 1; // 返回枚举值
  uint32        ChildId = 2; // 装备唯一ID
  uint32        Level   = 3; // 装备等级
  uint32        Down    = 4; // 基础系数下限
  uint32        Up      = 5; // 基础系数上限
}

// 装备升星
message  C2SAvatarUpStarReq {
  uint32            ChildId         = 1; // 装备唯一ID
}

// 装备升级
message  S2CAvatarUpStarResp {
  AvatarRetResp result  = 1; // 返回枚举值
  uint32        ChildId = 2; // 装备唯一ID
  uint32        Level   = 3; // 装备等级
  uint32        Down    = 4; // 基础系数下限
  uint32        Up      = 5; // 基础系数上限
}

// 检测Avatar是否超过有效期
message C2SCkAvaterTimeOutByChildId {
  repeated uint32 childId = 1; // 需要检测的avatar childId
}

// 检测Avatar是否超过有效期 返回基本结构体
message CkAvaterTimeOutByChildIdResp{
  bool            result = 1; // 状态 true 没有超时 false 已经超时
  uint32          childId= 2; // avatar子ID
}

// 返回检测Avatar是否超过有效期
message S2CCkAvaterTimeOutByChildIdResp {
    repeated CkAvaterTimeOutByChildIdResp resp = 1; // 返回检测结果
}
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
	
//msgID=1
message SendHelloClient{
	required string greetStr=1;
	required string randomName=2;//服务器给你随机取的名字
}
 		
//msgID=2
message ReqCreateBattle{			 
}
//msgID=3
message ResCreateBattle{
	required bool result=1;	
	optional string errorMsg=2;		
}

//msgID=4
message ReqJoinBattle {	  
}
//msgID=5
message ResJoinBattle{		
	required bool result=1;
	optional string errorMsg=2;
	repeated Role role=3;//战场所有人
}
	
//msgID=6
message SendEnviromentRole{
	repeated Role role=1;
}
	
//msgID=10
message SendBattleStart{
}
	
	
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
}
message C2S_SendMessage {
  uint32 input = 1;
}

message S2C_SendMessage {
PbClinetCloseMsg ret = 1;
}
]]
}
return Proto
