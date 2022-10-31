---@class PbEmptyMsg
local PbEmptyMsg = {}

---@class PbClinetCloseMsg
---@field public result number
---@field public uid number
local PbClinetCloseMsg = {}

---@class PbRolePTPPushResp
---@field public Types ProtoEnum.PTPResp
local PbRolePTPPushResp = {}

---@class PbDress
---@field public itemId number
---@field public itemUid number
---@field public number number
---@field public durable number
---@field public typeOfExistence number
---@field public startTime number
---@field public endTime number
---@field public star number
---@field public level number
---@field public up number
---@field public down number
---@field public isDressUp boolean
---@field public isNew boolean
local PbDress = {}

---@class PbItem
---@field public itemUid number
---@field public itemId number
---@field public Number number
---@field public Times number
---@field public Durable number
---@field public Lock number
local PbItem = {}

---@class PbUserBase
---@field public uid number
---@field public birth number
---@field public city string
---@field public sex number
---@field public nickName string
---@field public level number
---@field public avatar string
---@field public power number
---@field public nftCount number
---@field public ranking number
---@field public quarterScore number
---@field public PbUseDresseds ProtoEnum.repeated
---@field public microBlog string
---@field public QQ string
---@field public mailBox string
---@field public Phone string
---@field public weChat string
---@field public IdCard string
---@field public isVerify number
---@field public PbUserItem ProtoEnum.repeated
---@field public LocalTime number
local PbUserBase = {}

---@class PbUseDresseds
---@field public ItemId number
---@field public itemUid number
---@field public EndTime number
local PbUseDresseds = {}

---@class PbUserItem
---@field public itemUid number
---@field public itemId number
---@field public Number number
---@field public Times number
---@field public Durable number
---@field public Lock number
local PbUserItem = {}

---@class C2SVerificationCodeReq
---@field public phone string
local C2SVerificationCodeReq = {}

---@class S2CVerificationCodeResp
---@field public result boolean
local S2CVerificationCodeResp = {}

---@class C2SMsgLoginReq
---@field public account string
---@field public loginType ProtoEnum.LoginRetReq
---@field public verification string
---@field public password string
local C2SMsgLoginReq = {}

---@class S2CMsgLoginResp
---@field public result ProtoEnum.LoginRetResp
---@field public uId number
---@field public account string
---@field public password string
---@field public wechat string
---@field public phone string
local S2CMsgLoginResp = {}

---@class S2CGetCliIPResp
---@field public cliIp string
local S2CGetCliIPResp = {}

---@class S2CDefaultClothing
---@field public uint32 ProtoEnum.repeated
---@field public uint32 ProtoEnum.repeated
local S2CDefaultClothing = {}

---@class PbVec3
---@field public X number
---@field public Y number
---@field public Z number
local PbVec3 = {}

---@class PbPosition
---@field public Pos ProtoEnum.PbVec3
---@field public Dir ProtoEnum.PbVec3
local PbPosition = {}

---@class PbPlayerPos
---@field public UID number
---@field public P ProtoEnum.PbPosition
local PbPlayerPos = {}

---@class PbDresseds
---@field public ItemId number
---@field public ChildId number
---@field public EndTime number
local PbDresseds = {}

---@class PbPlayerMin
---@field public UID number
---@field public Name string
---@field public Sex number
---@field public PbDresseds ProtoEnum.repeated
---@field public LocalTime number
---@field public Action number
local PbPlayerMin = {}

---@class PbPlayerInfo
---@field public UID number
---@field public Name string
local PbPlayerInfo = {}

---@class C2SPlayerMove
---@field public UID number
---@field public CurPos ProtoEnum.PbPosition
local C2SPlayerMove = {}

---@class S2CSyncPos
---@field public PbPlayerPos ProtoEnum.repeated
local S2CSyncPos = {}

---@class S2CPlayerRemove
---@field public uint32 ProtoEnum.repeated
local S2CPlayerRemove = {}

---@class S2CPlayerMin
---@field public PbPlayerMin ProtoEnum.repeated
local S2CPlayerMin = {}

---@class C2SPlayerInfo
---@field public UID number
local C2SPlayerInfo = {}

---@class S2CPlayerInfo
---@field public Data ProtoEnum.PbPlayerInfo
local S2CPlayerInfo = {}

---@class C2SChangeAction
---@field public UID number
---@field public Action number
local C2SChangeAction = {}

---@class S2CChangeAction
---@field public UID number
---@field public Action number
local S2CChangeAction = {}

---@class S2CMsgUserItemsUpdate
---@field public addCurs ProtoEnum.PbItem
---@field public upCurs ProtoEnum.PbItem
---@field public uint32 ProtoEnum.repeated
---@field public addItems ProtoEnum.PbItem
---@field public upItems ProtoEnum.PbItem
---@field public uint32 ProtoEnum.repeated
---@field public addDress ProtoEnum.PbDress
---@field public upDress ProtoEnum.PbDress
---@field public uint32 ProtoEnum.repeated
---@field public uint32 ProtoEnum.repeated
local S2CMsgUserItemsUpdate = {}

---@class C2SMergeItemReq
---@field public mergeId number
local C2SMergeItemReq = {}

---@class S2CMergeItemResp
---@field public result ProtoEnum.PbMergeResp
local S2CMergeItemResp = {}

---@class C2SMsgBagSellItemReq
---@field public uint32 ProtoEnum.repeated
local C2SMsgBagSellItemReq = {}

---@class S2CMsgBagSellItemResp
---@field public result ProtoEnum.PropRetResp
local S2CMsgBagSellItemResp = {}

---@class C2SMsgBagUseItemReq
---@field public uint32 ProtoEnum.repeated
---@field public index number
local C2SMsgBagUseItemReq = {}

---@class S2CMsgBagUseItemResp
---@field public result ProtoEnum.PropRetResp
local S2CMsgBagUseItemResp = {}

---@class C2SMsgBagSplitItemReq
---@field public uint32 ProtoEnum.repeated
local C2SMsgBagSplitItemReq = {}

---@class S2CMsgBagSplitItemResp
---@field public result ProtoEnum.PropRetResp
local S2CMsgBagSplitItemResp = {}

---@class C2SMsgBagUnlockItemReq
---@field public uint32 ProtoEnum.repeated
local C2SMsgBagUnlockItemReq = {}

---@class S2CMsgBagUnlockItemResp
---@field public result ProtoEnum.PropRetResp
local S2CMsgBagUnlockItemResp = {}

---@class C2SMsgBagRedPointClearReq
local C2SMsgBagRedPointClearReq = {}

---@class S2CMsgBagRedPointClearResp
---@field public result ProtoEnum.PropRetResp
local S2CMsgBagRedPointClearResp = {}

---@class C2SMsgCreateRoleReq
---@field public birth number
---@field public city string
---@field public sex number
---@field public nickName string
---@field public dressed string
---@field public avatar string
local C2SMsgCreateRoleReq = {}

---@class S2CMsgCreateRoleResp
---@field public result ProtoEnum.PbRoleRetResp
local S2CMsgCreateRoleResp = {}

---@class C2SOtherUserBaseReq
---@field public uid number
local C2SOtherUserBaseReq = {}

---@class S2CUserBaseResp
---@field public info ProtoEnum.PbUserBase
local S2CUserBaseResp = {}

---@class S2COtherUserBaseResp
---@field public other ProtoEnum.PbUserBase
local S2COtherUserBaseResp = {}

---@class C2SMsgChangeRoleBaseReq
---@field public birth number
---@field public city string
---@field public avatar string
---@field public dressed string
---@field public nickName string
---@field public microBlog string
---@field public QQ string
---@field public mailBox string
---@field public phone string
---@field public weChat string
local C2SMsgChangeRoleBaseReq = {}

---@class S2CMsgChangeRoleBaseResp
---@field public result ProtoEnum.PbRoleRetResp
local S2CMsgChangeRoleBaseResp = {}

---@class C2SUserDressUpRep
---@field public uint32 ProtoEnum.repeated
---@field public uint32 ProtoEnum.repeated
local C2SUserDressUpRep = {}

---@class S2CUserDressUpResp
---@field public uint32 ProtoEnum.repeated
---@field public isOk boolean
local S2CUserDressUpResp = {}

---@class PbAvatarInfo
---@field public itemID number
---@field public childId number
---@field public number number
---@field public durable number
---@field public typeOfExistence number
---@field public startTime number
---@field public endTime number
---@field public star number
---@field public level number
---@field public up number
---@field public down number
---@field public isDressUp boolean
---@field public isNew boolean
local PbAvatarInfo = {}

---@class S2CAvatarInfoList
---@field public PbAvatarInfo ProtoEnum.repeated
local S2CAvatarInfoList = {}

---@class C2SAvatarTsAdd
---@field public itemID number
local C2SAvatarTsAdd = {}

---@class S2CAvatarTsAdd
---@field public itemID number
local S2CAvatarTsAdd = {}

---@class S2CItemsInfoList
---@field public items ProtoEnum.PbUserItem
---@field public uint32 ProtoEnum.repeated
local S2CItemsInfoList = {}

---@class C2SAvatarRepairReq
---@field public ChildId number
---@field public uint32 ProtoEnum.repeated
---@field public NftRepair boolean
---@field public ItemConsumeType ProtoEnum.ItemConsumeRetReq
local C2SAvatarRepairReq = {}

---@class S2CAvatarRepairResp
---@field public result ProtoEnum.AvatarRetResp
---@field public ChildId number
---@field public Durable number
local S2CAvatarRepairResp = {}

---@class C2SAvatarLevelUpReq
---@field public ChildId number
local C2SAvatarLevelUpReq = {}

---@class S2CAvatarLevelUpResp
---@field public Result ProtoEnum.AvatarRetResp
---@field public ChildId number
---@field public Level number
---@field public Down number
local S2CAvatarLevelUpResp = {}

---@class C2SAvatarStarUpReq
---@field public ChildId number
local C2SAvatarStarUpReq = {}

---@class S2CAvatarStarUpResp
---@field public result ProtoEnum.AvatarRetResp
---@field public ChildId number
---@field public Star number
---@field public Up number
local S2CAvatarStarUpResp = {}

---@class C2SCkAvaterTimeOutByChildId
---@field public uint32 ProtoEnum.repeated
local C2SCkAvaterTimeOutByChildId = {}

---@class CkAvaterTimeOutByChildIdResp
---@field public result boolean
---@field public childId number
local CkAvaterTimeOutByChildIdResp = {}

---@class S2CCkAvaterTimeOutByChildIdResp
---@field public CkAvaterTimeOutByChildIdResp ProtoEnum.repeated
local S2CCkAvaterTimeOutByChildIdResp = {}

