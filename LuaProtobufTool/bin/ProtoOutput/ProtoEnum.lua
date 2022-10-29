---@class ProtoEnum
local ProtoEnum={
-- 点对点推送 枚举
 PTPResp {
  PTP_AVATAR_TIME_OUT = 0; -- 用户装扮到期
}
,
-- 用户登录枚举值
 LoginRetReq
{
  Q_ACCOUNT = 0; -- 账号登录
  Q_WECHAT  = 1; -- 微信登录
  Q_PHONE   = 2; -- 电话号码登录
},
-- 用户登录返回枚举值
 LoginRetResp
{
  RR_ERROR             = 0; -- 错误
  RR_SERVER_BUSY       = 1;
  RR_NO_ROLE           = 2; -- 没有角色
  RR_SENSITIVEWORDS    = 3; -- 敏感词
  RR_SAME_NAME         = 4; -- 重名
  RR_ACCOUNT_PASSWORDS = 5; -- 账号或者密码错误
  RR_VERIFICATION      = 6; -- 验证码错误
  RR_PHONENUMBER       = 7; -- 手机号码格式错误
  RR_ACCOUNTEMPT       = 8; -- 账号为空
  RR_PASSEMPTY         = 9; -- 密码为空
  RR_SUCCESS           = 10;-- 成功
}
,
-- 合成枚举值
 PbMergeResp {
  MERGE_ACCESS            = 0; -- 合成成功
  MERGE_ITEM_NUMBER_ERROR = 1; -- 合成碎片不足
  MERGE_FAIL              = 2; -- 合成失败
  MERGE_MERGE_ID_ERROR    = 3; -- 合成ID错误
  MERGE_DEL_ITEM_ERROR    = 4; -- 删除已经合成的碎片失败
}
,
-- 角色相关协议返回枚举值
 RoleRetResp
{
  RRR_SUCCESS             = 0; -- 成功
  RRR_ERR                 = 1; -- 错误
  RRR_BIRTH_ERR           = 2; -- 角色出生时间错误
  RRR_CITY_ERR            = 3; -- 角色城市错误
  RRR_SEX_ERR             = 4; -- 角色性别错误
  RRR_NICKNAME_LENGTH_ERR = 5; -- 角色昵称长度错误
  RRR_NICKNAME_SAME_ERR   = 6; -- 角色昵称重名错误
  RRR_CREATE_ERR          = 7; -- 角色重复创建
  RRR_ROLE_NOT_ERR        = 8; -- 角色未创建
  RRR_NICKNAME_NO_CHANGE  = 9; -- 角色昵称未修改
  RRR_PHONE_ERR  = 10; -- 角色手机号错误
}
,
-- 装备养成枚举值
 AvatarRetResp
{
  RR_ERROR             = 0; -- 错误
  RR_SUCCESS           = 1; -- 成功
  RR_NO_NEED_REPAIR    = 2; -- 装备不需要修复
  RR_MAX_DURABLE       = 3; -- 装备耐久度已满
  RR_NO_ENOUGH_STAR    = 4; -- 装备星级不够
  RR_NO_ENOUGH_LEVEL   = 5; -- 装备等级不够
  RR_NO_Dress          = 6; -- 没有装备
  RR_FAILED            = 7; -- 养成失败
}
,
-- 道具消耗枚举值
 ItemConsumeRetReq
{
  Q_PLUME = 0; -- 消耗羽毛
  Q_GOLD  = 1; -- 消耗金币
}
,
}
return ProtoEnum
