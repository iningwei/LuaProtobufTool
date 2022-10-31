---@class ProtoEnum
local ProtoEnum={
-- 角色相关协议返回枚举值
PbRoleRetResp=
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
AvatarRetResp=
{
  RER_ERROR             = 0; -- 错误
  RER_SUCCESS           = 1; -- 成功
  RER_NO_NEED_REPAIR    = 2; -- 装备不需要修复
  RER_MAX_DURABLE       = 3; -- 装备耐久度已满
  RER_NO_ENOUGH_STAR    = 4; -- 装备星级不够
  RER_NO_ENOUGH_LEVEL   = 5; -- 装备等级不够
  RER_NO_Dress          = 6; -- 没有装备
  RER_FAILED            = 7; -- 养成失败
  RER_NO_ENOUGH_ITEM    = 8; -- 养成道具不足
  RER_DEL_ITEM_ERROR    = 9; -- 扣除道具失败
}
,
ItemConsumeRetReq=
{
  Q_PLUME = 0; -- 消耗羽毛
  Q_GOLD  = 1; -- 消耗金币
}
,
}
return ProtoEnum
