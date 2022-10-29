
---@class C2S_XJDZ_LOGIN_REQ
---@field public account string @帐号
---@field public nick_name string @名字
---@field public pwd string @密码
---@field public loginIp string @登录ip
local C2S_XJDZ_LOGIN_REQ={}

---@class S2C_XJDZ_LOGIN_RES
---@field public account string
---@field public nick_name string
local S2C_XJDZ_LOGIN_RES={}

---@class Role
---@field public roleName string
---@field public id int32
---@field public germXPos float
---@field public germYPos float
---@field public isEnviroment bool
local Role={}

---@class SendHelloClient
---@field public greetStr string
---@field public randomName string @服务器给你随机取的名字
local SendHelloClient={}

---@class ReqCreateBattle
local ReqCreateBattle={}

---@class ResCreateBattle
---@field public result bool
---@field public errorMsg string
local ResCreateBattle={}

---@class ReqJoinBattle
local ReqJoinBattle={}

---@class ResJoinBattle
---@field public result bool
---@field public errorMsg string
---@field public role Role @战场所有人
local ResJoinBattle={}

---@class SendEnviromentRole
---@field public role Role
local SendEnviromentRole={}

---@class SendBattleStart
local SendBattleStart={}

---@class ReqGenBridge
---@field public startGermId int32
---@field public endGermId int32
local ReqGenBridge={}

---@class ResGenBridge
---@field public result bool
---@field public errorMsg string
---@field public startGermId int32
---@field public endGermId int32
local ResGenBridge={}

---@class ReqCutBridge
---@field public bridgeName string
---@field public cutPosIndex int32 @切到的小球对应的索引
local ReqCutBridge={}

---@class ResCutBridge
---@field public result bool
---@field public errorMsg string
---@field public bridgeName string
---@field public cutPosIndex int32
local ResCutBridge={}

---@class ReqRepealBridge
---@field public bridgeName string
---@field public leftCount int32
local ReqRepealBridge={}

---@class ResRepealBridge
---@field public result bool
---@field public errorMsg string
---@field public bridgeName string
---@field public leftCount int32
local ResRepealBridge={}
