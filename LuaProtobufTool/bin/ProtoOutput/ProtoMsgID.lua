---@type ProtoMsgIDExt
ProtoMsgIDExt=require "ProtoMsgIDExt"

--发送
Proto.MsgIdByNameCS = {
-- 获取手机验证码
["C2SVerificationCodeReq"]="1@5",

-- 用户登录
["C2SMsgLoginReq"]="100@1",

["C2SMailRead"]="110@2",

["C2SMailGet"]="110@3",

["C2SMailDel"]="110@4",

["C2SPlayerMove"]="90@2",

-- 客户端发给服务器，获取玩家详细信息
["C2SPlayerInfo"]="90@1",

-- 客户端发给服务器，获取玩家详细信息
["C2SChangeAction"]="90@3",

-- 客户端发给服务器，切换地图
["C2SChangeMap"]="90@4",

-- 道具和合成
["C2SMergeItemReq"]="100@14",

-- 道具出售
["C2SMsgBagSellItemReq"]="104@1",

-- 道具使用
["C2SMsgBagUseItemReq"]="104@2",

-- 道具分解
["C2SMsgBagSplitItemReq"]="104@3",

-- 道具解锁
["C2SMsgBagUnlockItemReq"]="104@4",

-- 清除背包红点
["C2SMsgBagRedPointClearReq"]="104@5",

-- 创建角色
["C2SMsgCreateRoleReq"]="103@1",

-- 请求其他用户数据
["C2SOtherUserBaseReq"]="103@2",

-- 修改角色基本信息
["C2SMsgChangeRoleBaseReq"]="103@3",

-- 角色装扮请求信息
["C2SUserDressUpRep"]="100@6",

-- 装备修复
["C2SAvatarRepairReq"]="105@3",

-- 装备升级
["C2SAvatarLevelUpReq"]="105@1",

-- 装备升星
["C2SAvatarStarUpReq"]="105@2",

-- 检测Avatar是否超过有效期
["C2SCkAvaterTimeOutByChildId"]="100@15",

}

--接收
Proto.MsgIdByNameSC = {
-- 返回获取的验证码
["S2CVerificationCodeResp"]="1@104",

-- 服务器返回登录信息
["S2CMsgLoginResp"]="100@101",

-- 服务器返回客户端IP
["S2CGetCliIPResp"]="100@104",

-- 服务器返回默认服装
["S2CDefaultClothing"]="100@108",

-- 服务器返回清除服装红点
["S2CRemoveDressedRedDotResp"]="100@116",

["S2CMailInfo"]="110@101",

["S2CMailRead"]="110@103",

["S2CMailGet"]="110@104",

["S2CMailDel"]="110@105",

["S2CMailGetAll"]="110@107",

["S2CMailDelAll"]="110@108",

["S2CGetNotice"]="100@109",

["S2CGetPaoMaDengLst"]="100@110",

-- 玩家广播数据
["S2CSyncPos"]="90@10000",

["S2CPlayerRemove"]="90@10003",

-- 服务器发给客户端的玩家简略信息（场景显示玩家所需信息）
["S2CPlayerMin"]="90@10001",

-- 服务器发给客户端的玩家详细信息（查看玩家详情所需信息）
["S2CPlayerInfo"]="90@10002",

-- 服务器发给客户端的玩家详细信息（查看玩家详情所需信息）
["S2CChangeAction"]="90@10004",

-- 服务器发给客户端，回应切换地图
["S2CChangeMap"]="90@10005",

-- 道具信息更新推送
["S2CMsgUserItemsUpdate"]="104@201",

-- 返回道具合成结果
["S2CMergeItemResp"]="100@114",

["S2CMsgBagSellItemResp"]="104@101",

["S2CMsgBagUseItemResp"]="104@102",

["S2CMsgBagSplitItemResp"]="104@103",

["S2CMsgBagUnlockItemResp"]="104@104",

["S2CMsgBagRedPointClearResp"]="104@105",

-- 创建角色返回
["S2CMsgCreateRoleResp"]="103@101",

-- 返回用户数据
["S2CUserBaseResp"]="100@103",

-- 返回其他用户数据
["S2COtherUserBaseResp"]="100@102",

-- 修改角色基本信息返回
["S2CMsgChangeRoleBaseResp"]="103@103",

-- 角色装扮返回信息
["S2CUserDressUpResp"]="100@106",

-- 装扮List信息
["S2CAvatarInfoList"]="100@107",

-- 背包道具信息
["S2CItemsInfoList"]="100@113",

-- 装备修复
["S2CAvatarRepairResp"]="105@103",

-- 装备升级
["S2CAvatarLevelUpResp"]="105@101",

-- 装备升级
["S2CAvatarStarUpResp"]="105@102",

-- 返回检测Avatar是否超过有效期
["S2CCkAvaterTimeOutByChildIdResp"]="100@115",

}

Proto.MsgNameByIdCS={}
for k, v in pairs(Proto.MsgIdByNameCS) do
    Proto.MsgNameByIdCS[v] = k
end

Proto.MsgNameByIdSC = {}
for k, v in pairs(Proto.MsgIdByNameSC) do
    Proto.MsgNameByIdSC[v] = k
end

setmetatable(Proto.MsgIdByNameCS,{
    __index=function(t,k)
        local value=ProtoMsgIDExt.MsgIdByNameCS[k]
        if value~=nil then
            t[k]=value
            return value
        end
    end
})

setmetatable(Proto.MsgIdByNameSC,{
    __index=function(t,k)
        local value=ProtoMsgIDExt.MsgIdByNameSC[k]
        if value~=nil then
            t[k]=value
            return value
        end
    end
})

setmetatable(Proto.MsgNameByIdCS,{
    __index=function(t,k)
        local value=ProtoMsgIDExt.MsgNameByIdCS[k]
        if value~=nil then
            t[k]=value
            return value
        end
    end
})

setmetatable(Proto.MsgNameByIdSC,{
    __index=function(t,k)
        local value=ProtoMsgIDExt.MsgNameByIdSC[k]
        if value~=nil then
            t[k]=value
            return value
        end
    end
})

