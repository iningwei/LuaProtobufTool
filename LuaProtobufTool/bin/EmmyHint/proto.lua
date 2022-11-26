---@class PbEmptyMsg
local PbEmptyMsg = {}

---@class PbVec3
---@field public X number
---@field public Y number
---@field public Z number
local PbVec3 = {}

---@class PbPosition
---@field public Pos PbVec3 @ 位置
---@field public Dir PbVec3 @ 朝向
local PbPosition = {}

---@class PbClinetCloseMsg
---@field public result number @ 返回信息
---@field public uid number @ 玩家ID
local PbClinetCloseMsg = {}

---@class PbRolePTPPushResp
---@field public Types ProtoEnum.PTPResp
local PbRolePTPPushResp = {}

---@class PbDress
---@field public itemId number @ 物品ID
---@field public itemUid number @ 子ID
---@field public number number @ 物品数量
---@field public durable PbDurable @ 剩余耐久度
---@field public typeOfExistence number @ 装扮存在类型 0 没有类型 1 赛季 >1 秒
---@field public startTime number @ 开始时间 [ 赛季：开始时间  秒：获取时间 ]
---@field public endTime number @ 结束时间 [ 赛季：结束时间  秒：到期时间 ]
---@field public star number @ 星级
---@field public level number @ 级别
---@field public up number @ 上限
---@field public down number @ 下限
---@field public isDressUp boolean @ 是否已经装扮
---@field public isNew boolean @ 是否是新获得
---@field public isLock boolean @ 是否锁定
---@field public LockTime number @ 锁定时间
---@field public sex number @ 服装性别
---@field public isDefault boolean @ 是否是默认
local PbDress = {}

---@class PbDurable
---@field public isDurable boolean @ 是否有耐久
---@field public durable number @ 总耐久
---@field public used number @ 使用的耐久度
local PbDurable = {}

---@class PbItem
---@field public itemUid number @ 道具唯一ID
---@field public itemId number @ 道具配置ID
---@field public Number number @ 道具数量
---@field public Times number @ 道具有效期[0:没有时效 1:赛季道具 >1:时效时间]
---@field public Durable number @ 道具耐久度[0:没有耐久度 >0:当前耐久度]
---@field public Lock number @ 道具锁定期[0:没有锁定 1：锁定时间]
local PbItem = {}

---@class PbUserBase
---@field public uid number @ 用户ID
---@field public birth number @ 出生时间
---@field public city string @ 城市
---@field public sex number @ 性别
---@field public nickName string @ 昵称
---@field public level number @ 级别
---@field public avatar string @ 头像
---@field public power number @ 体力
---@field public nftCount number @ nft数量
---@field public ranking number @ 排名
---@field public quarterScore number @ 季度赛分数
---@field public dressed PbDresseds[] @ 穿戴信息
---@field public microBlog string @ 博客账号
---@field public QQ string @ QQ账号
---@field public mailBox string @ e-mail账号
---@field public Phone string @ 手机号
---@field public weChat string @ 微信号
---@field public IdCard string @ 身份证验证信息
---@field public isVerify number @ 是否验证 0位 手机号验证 1位 微信号验证 【备注 已经验证为1】
---@field public currency PbItem[] @ 货币背包
---@field public LocalTime number @ 服务器本地时间
---@field public mapId number @ 玩家所在地图id
---@field public roomId number @ 玩家所在房间
---@field public Pos PbPosition @ 玩家所在位置
local PbUserBase = {}

---@class PbDresseds
---@field public ItemId number @ 道具ID
---@field public ItemUid number @ 物品ID
---@field public EndTime number @ 到期时间
local PbDresseds = {}

---@class C2SVerificationCodeReq
---@field public phone string @ 电话号码
local C2SVerificationCodeReq = {}

---@class S2CVerificationCodeResp
---@field public result boolean @ 是否获取成功
local S2CVerificationCodeResp = {}

---@class C2SMsgLoginReq
---@field public account string @ 账号/微信号/电话号码
---@field public loginType ProtoEnum.LoginRetReq @ 登录类型 [ 必填 ]
---@field public verification string @ 验证码 [ 非必填 ]
---@field public password string @ 密码 [ 必填 微信/电话号码 为成功返回的密码 ]
local C2SMsgLoginReq = {}

---@class S2CMsgLoginResp
---@field public result ProtoEnum.LoginRetResp @ 登录错误枚举
---@field public uId number @ 玩家id
---@field public account string @ 玩家账号
---@field public password string @ 登录密码
---@field public wechat string @ 微信账号
---@field public phone string @ 电话号码
---@field public roomId number @ 当前所在房间
local S2CMsgLoginResp = {}

---@class S2CGetCliIPResp
---@field public cliIp string @ 玩家IP
local S2CGetCliIPResp = {}

---@class S2CDefaultClothing
---@field public Men number[] @ 默认男服装list
---@field public Female number[] @ 默认女装list
local S2CDefaultClothing = {}

---@class S2CRemoveDressedRedDotResp
---@field public result boolean @ 清除状态 true 清除成功 false 清除失败
local S2CRemoveDressedRedDotResp = {}

---@class PbMailOne
---@field public ID number @ 邮件ID，同时也是创建时间，纳秒
---@field public Type number @ 类型MAIL_TYPE_READED、MAIL_TYPE_SYSTEM
---@field public EmailID number @ emailID表的emailID
---@field public Et number @ 到期时间
---@field public SenderID number @ 邮件发送者的UserID
---@field public SenderName string @ 发送者名字
---@field public BodyData number[] @ 邮件内容数据（配合表emailID）
---@field public BodyData2 string[] @ 邮件内容数据（配合表emailID）
---@field public ItemLst number[] @ 邮件附加物品列表[ItemID,ItemCount...]
local PbMailOne = {}

---@class S2CMailInfo
---@field public Result number @ 返回信息，因为邮件到期会被删除，所以必须一次性返回所有邮件。0成功，1失败，
---@field public Lst PbMailOne[] @ 邮件列表，按收到邮件时间的倒序
---@field public GmLst PbMailOne[] @ GM邮件列表
local S2CMailInfo = {}

---@class C2SMailRead
---@field public ID number @ 邮件ID
---@field public Types ProtoEnum.MailTypeResp @ 邮件类型
local C2SMailRead = {}

---@class S2CMailRead
---@field public Result number @ 返回信息，0成功，1失败，2邮件已是已读状态，3未找到邮件，4背包容量不足
---@field public ID number @ 邮件ID
local S2CMailRead = {}

---@class C2SMailGet
---@field public ID number @ 邮件ID
---@field public Types ProtoEnum.MailTypeResp @ 邮件类型
local C2SMailGet = {}

---@class S2CMailGet
---@field public Result number @ 返回信息，0成功，1失败，2邮件物品已领取过，3未找到邮件，4仓库容量不够
---@field public ID number
local S2CMailGet = {}

---@class C2SMailDel
---@field public ID number
local C2SMailDel = {}

---@class S2CMailDel
---@field public Result number @ 返回信息，0成功，1失败，2邮件是未读状态或者有物品未领取，不能删除，3未找到邮件
---@field public ID number
local S2CMailDel = {}

---@class S2CMailGetAll
---@field public Result number @ 返回信息，0成功，1失败，2仓库容量不够
local S2CMailGetAll = {}

---@class S2CMailDelAll
---@field public Result number @ 返回信息，0成功，1失败
local S2CMailDelAll = {}

---@class S2CGetNotice
---@field public Result number @ 返回信息，0成功
---@field public Body string @ 系统公告内容
local S2CGetNotice = {}

---@class PbPaoMaDengOne
---@field public TimeBegin number @ 跑马灯开始的utc时间
---@field public TimeEnd number @ 跑马灯结束的utc时间
---@field public TimeInterval number @ 循环播放的时间间隔（单位：秒），0表示不循环播放
---@field public Body string @ 内容
---@field public LstStr string[] @ 附加的字符串参数
---@field public LstInt number[] @ 附加的数字参数，如果涉及浮点数坐标，数字为*100取整
local PbPaoMaDengOne = {}

---@class S2CGetPaoMaDengLst
---@field public Result number @ 返回信息，0成功
---@field public Lst PbPaoMaDengOne[] @ 跑马灯的列表
local S2CGetPaoMaDengLst = {}

---@class PbPlayerPos
---@field public UID number @ 用户ID
---@field public P PbPosition
local PbPlayerPos = {}

---@class PbPlayerMin
---@field public UID number @ 用户ID
---@field public Name string @ 昵称
---@field public Sex number @ 性别
---@field public Dressed PbDresseds[] @ 穿戴信息
---@field public LocalTime number @ 服务器本地时间
---@field public Action number @ 用户行为，1站立、空闲，2行走，3跑，4跳
local PbPlayerMin = {}

---@class PbPlayerInfo
---@field public UID number @ 用户ID
---@field public Name string @ 昵称
local PbPlayerInfo = {}

---@class C2SPlayerMove
---@field public UID number @ 用户ID
---@field public CurPos PbPosition @ 当前位置
local C2SPlayerMove = {}

---@class S2CSyncPos
---@field public Lst PbPlayerPos[] @ 用户位置信息列表
local S2CSyncPos = {}

---@class S2CPlayerRemove
---@field public Lst number[] @ 用户ID列表
local S2CPlayerRemove = {}

---@class S2CPlayerMin
---@field public Lst PbPlayerMin[]
local S2CPlayerMin = {}

---@class C2SPlayerInfo
---@field public UID number @ 用户ID
local C2SPlayerInfo = {}

---@class S2CPlayerInfo
---@field public Data PbPlayerInfo @ 用户信息
local S2CPlayerInfo = {}

---@class C2SChangeAction
---@field public UID number @ 用户ID
---@field public Action number @ 用户行为，1站立、空闲，2行走，3跑，4跳
local C2SChangeAction = {}

---@class S2CChangeAction
---@field public UID number @ 用户ID
---@field public Action number @ 用户行为
local S2CChangeAction = {}

---@class C2SChangeMap
---@field public MapId number @ 目的地map id
---@field public PosId number @ 转跳点id
local C2SChangeMap = {}

---@class S2CChangeMap
---@field public Result number @ 返回信息，0成功，1失败
---@field public MapId number @ 目的地map id
---@field public PosId number @ 转跳点id，>0时有效，=0时CurPos有效
---@field public CurPos PbPosition @ 退出战斗场景，同步进入战斗之前的位置信息
local S2CChangeMap = {}

---@class S2CMsgUserItemsUpdate
---@field public addCurs PbItem[] @ 增加的货币
---@field public upCurs PbItem[] @ 更新的货币
---@field public delCurs number[] @ 删除的货币
---@field public addItems PbItem[] @ 增加的道具
---@field public upItems PbItem[] @ 更新的道具
---@field public delItems number[] @ 删除的道具
---@field public addDress PbDress[] @ 增加的装备
---@field public upDress PbDress[] @ 更新的装备
---@field public delDress number[] @ 删除的装备
---@field public addLst number[] @ 增加列表
local S2CMsgUserItemsUpdate = {}

---@class C2SMergeItemReq
---@field public mergeId number @ 需要合成的ID
local C2SMergeItemReq = {}

---@class S2CMergeItemResp
---@field public result ProtoEnum.PbMergeResp @ 合成状态
local S2CMergeItemResp = {}

---@class C2SMsgBagSellItemReq
---@field public list number[] @ 出售的物品列表[物品uid,物品id]
local C2SMsgBagSellItemReq = {}

---@class S2CMsgBagSellItemResp
---@field public result ProtoEnum.PropRetResp @ 结果
local S2CMsgBagSellItemResp = {}

---@class C2SMsgBagUseItemReq
---@field public list number[] @ 使用的物品[物品uid,物品id,物品数量]
---@field public index number @ 选择的奖励序号[自选奖励使用]
local C2SMsgBagUseItemReq = {}

---@class S2CMsgBagUseItemResp
---@field public result ProtoEnum.PropRetResp @ 结果
local S2CMsgBagUseItemResp = {}

---@class C2SMsgBagSplitItemReq
---@field public list number[] @ 分解的物品列表[物品uid,物品id]
local C2SMsgBagSplitItemReq = {}

---@class S2CMsgBagSplitItemResp
---@field public result ProtoEnum.PropRetResp @ 结果
local S2CMsgBagSplitItemResp = {}

---@class C2SMsgBagUnlockItemReq
---@field public list number[] @ 解锁的物品[物品uid,物品id]
local C2SMsgBagUnlockItemReq = {}

---@class S2CMsgBagUnlockItemResp
---@field public result ProtoEnum.PropRetResp @ 结果
local S2CMsgBagUnlockItemResp = {}

---@class C2SMsgBagRedPointClearReq
local C2SMsgBagRedPointClearReq = {}

---@class S2CMsgBagRedPointClearResp
---@field public result ProtoEnum.PropRetResp @ 结果
local S2CMsgBagRedPointClearResp = {}

---@class C2SMsgCreateRoleReq
---@field public birth number @ 出生时间
---@field public city string @ 城市
---@field public sex number @ 性别
---@field public nickName string @ 昵称
---@field public dressed string @ 穿戴信息
---@field public avatar string @ 头像
local C2SMsgCreateRoleReq = {}

---@class S2CMsgCreateRoleResp
---@field public result ProtoEnum.PbRoleRetResp @ 结果
local S2CMsgCreateRoleResp = {}

---@class C2SOtherUserBaseReq
---@field public uid number @ 用户ID
local C2SOtherUserBaseReq = {}

---@class S2CUserBaseResp
---@field public info PbUserBase @ 用户基本数据
local S2CUserBaseResp = {}

---@class S2COtherUserBaseResp
---@field public other PbUserBase @ 其他用户基本数据
local S2COtherUserBaseResp = {}

---@class C2SMsgChangeRoleBaseReq
---@field public birth number @ 出生时间
---@field public city string @ 城市
---@field public avatar string @ 头像
---@field public dressed string @ 穿戴信息
---@field public nickName string @ 昵称
---@field public microBlog string @ 微博
---@field public QQ string @ qq
---@field public mailBox string @ 邮箱
---@field public phone string @ 手机
---@field public weChat string @ 微信
local C2SMsgChangeRoleBaseReq = {}

---@class S2CMsgChangeRoleBaseResp
---@field public result ProtoEnum.PbRoleRetResp @ 结果
local S2CMsgChangeRoleBaseResp = {}

---@class C2SUserDressUpRep
---@field public oldDressed number[] @ 之前的装扮信息 [ 备注 可以不发 ]
---@field public newDressed number[] @ 最新的装扮信息 [ 备注 必填 ]
local C2SUserDressUpRep = {}

---@class S2CUserDressUpResp
---@field public dressed number[] @ 最新装扮
---@field public isOk boolean @ 是否装扮成功 [ 备注 false 没有装扮成功 且 dressed 为空 true 装扮成功 ]
local S2CUserDressUpResp = {}

---@class S2CAvatarInfoList
---@field public avaterList PbDress[] @ 装扮信息list
local S2CAvatarInfoList = {}

---@class S2CItemsInfoList
---@field public items PbItem[] @ 道具背包
---@field public newItems number[] @ 新的道具[uid]
local S2CItemsInfoList = {}

---@class C2SAvatarRepairReq
---@field public ItemUid number @ 装备唯一ID
---@field public DressConsumeChildIds number[] @ NFT装备消耗
---@field public NftRepair boolean @ 是否是NFT装备修复
---@field public ItemConsumeType ProtoEnum.ItemConsumeRetReq @ 普通修复消耗[非必填,nft装备不填]
local C2SAvatarRepairReq = {}

---@class S2CAvatarRepairResp
---@field public result ProtoEnum.AvatarRetResp @ 返回枚举值
---@field public ItemUid number @ 唯一装备ID
---@field public Durable number @ 装备耐久值
local S2CAvatarRepairResp = {}

---@class C2SAvatarLevelUpReq
---@field public ItemUid number @ 装备唯一ID
local C2SAvatarLevelUpReq = {}

---@class S2CAvatarLevelUpResp
---@field public Result ProtoEnum.AvatarRetResp @ 返回枚举值
---@field public ItemUid number @ 装备唯一ID
---@field public Level number @ 装备等级
---@field public Down number @ 基础系数下限
local S2CAvatarLevelUpResp = {}

---@class C2SAvatarStarUpReq
---@field public ItemUid number @ 装备唯一ID
local C2SAvatarStarUpReq = {}

---@class S2CAvatarStarUpResp
---@field public result ProtoEnum.AvatarRetResp @ 返回枚举值
---@field public ItemUid number @ 装备唯一ID
---@field public Star number @ 装备星级
---@field public Up number @ 基础系数上限
local S2CAvatarStarUpResp = {}

---@class C2SCkAvaterTimeOutByChildId
---@field public ItemUid number[] @ 需要检测的avatar childId
local C2SCkAvaterTimeOutByChildId = {}

---@class CkAvaterTimeOutByChildIdResp
---@field public result boolean @ 状态 true 没有超时 false 已经超时
---@field public ItemUid number @ avatar子ID
local CkAvaterTimeOutByChildIdResp = {}

---@class S2CCkAvaterTimeOutByChildIdResp
---@field public resp CkAvaterTimeOutByChildIdResp[] @ 返回检测结果
local S2CCkAvaterTimeOutByChildIdResp = {}

---@class S2CMusicList
---@field public data PbMusicInfo[]
local S2CMusicList = {}

---@class PbMusicInfo
---@field public musicId number @ 歌曲Id
---@field public number number @ 获得分数
---@field public phase number @ 完成阶段
---@field public isNew boolean @ 是否为新
local PbMusicInfo = {}

