---@class PbEmptyMsg
local PbEmptyMsg = {}

---@class PbClinetCloseMsg
---@field public result number
---@field public uid number
local PbClinetCloseMsg = {}

---@class PbRolePTPPushResp
---@field public Types ProtoEnum.PTPResp
local PbRolePTPPushResp = {}

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
---@field public X number
---@field public Y number
---@field public Z number
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
---@field public Name string
---@class C2SPlayerMove
---@field public UID number
---@field public CurPos ProtoEnum.PbPosition
local C2SPlayerMove = {}

---@class S2CSyncPos
---@field public PbPlayerPos ProtoEnum.repeated
local S2CSyncPos = {}

---@class S2CPlayerRemove
---@field public PbPlayerPos ProtoEnum.repeated
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

---@class PbItem
---@field public Uid number
---@field public Id number
---@field public Number number
---@field public Times number
---@field public Durable number
local PbItem = {}

---@class PbDress
---@field public itemID number
---@field public childId number
---@field public number number
---@field public durable number
---@field public typeOfExistence number
---@field public startTime number
---@field public endTime number
---@field public star number
---@field public level number
---@field public uint32 ProtoEnum.repeated
---@field public uint32 ProtoEnum.repeated
---@field public isDressUp boolean
---@field public isNew boolean
local PbDress = {}

---@class S2CMsgUserItemsUpdate
---@field public PbItem ProtoEnum.repeated
---@field public PbItem ProtoEnum.repeated
---@field public uint32 ProtoEnum.repeated
---@field public PbItem ProtoEnum.repeated
---@field public PbItem ProtoEnum.repeated
---@field public uint32 ProtoEnum.repeated
---@field public PbDress ProtoEnum.repeated
---@field public PbDress ProtoEnum.repeated
---@field public uint32 ProtoEnum.repeated
local S2CMsgUserItemsUpdate = {}

---@class C2SMergeItemReq
---@field public mergeId number
local C2SMergeItemReq = {}

---@class S2CMergeItemResp
---@field public result ProtoEnum.PbMergeResp
local S2CMergeItemResp = {}

---@class C2SMsgCreateRoleReq
---@field public birth number
---@field public city string
---@field public sex number
---@field public nickName string
---@field public dressed string
---@field public avatar string
local C2SMsgCreateRoleReq = {}

---@class S2CMsgCreateRoleResp
---@field public result ProtoEnum.RoleRetResp
local S2CMsgCreateRoleResp = {}

---@class C2SOtherUserBaseReq
---@field public uid number
local C2SOtherUserBaseReq = {}

---@class S2CUserBaseResp
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
local S2CUserBaseResp = {}

---@class S2COtherUserBaseResp
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
---@field public LocalTime number
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
---@field public result ProtoEnum.RoleRetResp
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
---@field public uint32 ProtoEnum.repeated
---@field public uint32 ProtoEnum.repeated
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

---@class PbUseDresseds
---@field public ItemId number
---@field public ChildId number
---@field public EndTime number
local PbUseDresseds = {}

---@class PbUserItem
---@field public Uid number
---@field public Id number
---@field public Number number
---@field public Times number
---@field public Durable number
local PbUserItem = {}

---@class S2CItemsInfoList
---@field public PbUserItem ProtoEnum.repeated
local S2CItemsInfoList = {}

---@class C2SAvatarRepairReq
---@field public ChildId number
---@field public uint32 ProtoEnum.repeated
---@field public ItemConsumeType ProtoEnum.ItemConsumeRetReq
local C2SAvatarRepairReq = {}

---@class S2CAvatarRepairResp
---@field public result ProtoEnum.AvatarRetResp
---@field public ChildId number
---@field public Durable number
local S2CAvatarRepairResp = {}

---@class C2SAvatarUpgradeReq
---@field public ChildId number
local C2SAvatarUpgradeReq = {}

---@class S2CAvatarUpgradeResp
---@field public result ProtoEnum.AvatarRetResp
---@field public ChildId number
---@field public Level number
---@field public Down number
---@field public Up number
local S2CAvatarUpgradeResp = {}

---@class C2SAvatarUpStarReq
---@field public ChildId number
local C2SAvatarUpStarReq = {}

---@class S2CAvatarUpStarResp
---@field public result ProtoEnum.AvatarRetResp
---@field public ChildId number
---@field public Level number
---@field public Down number
---@field public Up number
local S2CAvatarUpStarResp = {}

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

---@class C2S_XJDZ_LOGIN_REQ
---@field public string ProtoEnum.required
---@field public string ProtoEnum.required
---@field public string ProtoEnum.required
---@field public string ProtoEnum.required
local C2S_XJDZ_LOGIN_REQ = {}

---@class S2C_XJDZ_LOGIN_RES
---@field public string ProtoEnum.required
---@field public string ProtoEnum.required
local S2C_XJDZ_LOGIN_RES = {}

---@class Role
---@field public string ProtoEnum.required
---@field public string ProtoEnum.required
---@class Role
---@field public string ProtoEnum.required
---@field public int32 ProtoEnum.required
---@field public float ProtoEnum.required
---@field public float ProtoEnum.required
---@field public bool ProtoEnum.required
local Role = {}

---@class SendHelloClient
---@field public string ProtoEnum.required
---@field public string ProtoEnum.required
local SendHelloClient = {}

---@class ReqCreateBattle
local ReqCreateBattle = {}

---@class ResCreateBattle
---@field public bool ProtoEnum.required
---@field public string ProtoEnum.optional
local ResCreateBattle = {}

---@class ReqJoinBattle
local ReqJoinBattle = {}

---@class ResJoinBattle
---@field public bool ProtoEnum.required
---@field public string ProtoEnum.optional
---@field public Role ProtoEnum.repeated
local ResJoinBattle = {}

---@class SendEnviromentRole
---@field public Role ProtoEnum.repeated
local SendEnviromentRole = {}

---@class SendBattleStart
local SendBattleStart = {}

---@class ReqGenBridge
---@field public int32 ProtoEnum.required
---@field public int32 ProtoEnum.required
local ReqGenBridge = {}

---@class ResGenBridge
---@field public bool ProtoEnum.required
---@field public string ProtoEnum.required
---@field public int32 ProtoEnum.required
---@field public int32 ProtoEnum.required
local ResGenBridge = {}

---@class ReqCutBridge
---@field public string ProtoEnum.required
---@field public int32 ProtoEnum.required
local ReqCutBridge = {}

---@class ResCutBridge
---@field public bool ProtoEnum.required
---@field public string ProtoEnum.required
---@field public string ProtoEnum.required
---@field public int32 ProtoEnum.required
local ResCutBridge = {}

---@class ReqRepealBridge
---@field public string ProtoEnum.required
---@field public int32 ProtoEnum.required
local ReqRepealBridge = {}

---@class ResRepealBridge
---@field public bool ProtoEnum.required
---@field public string ProtoEnum.required
---@field public string ProtoEnum.required
---@field public int32 ProtoEnum.required
local ResRepealBridge = {}

---@class C2S_SendMessage
---@field public input number
local C2S_SendMessage = {}

---@class S2C_SendMessage
---@field public ret ProtoEnum.PbClinetCloseMsg
local S2C_SendMessage = {}

