RegisterTableGoal(GOAL_LostKnight_SwordShield_301100_Battle, "LostKnight_SwordShield_301100_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_LostKnight_SwordShield_301100_Battle, true)

Goal.Initialize = function (_, arg1, _, _)
    arg1:SetNumber(10, 0)
    arg1:SetNumber(1, 0)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3005)
    arg1:EnableUnfavorableAttackCheck(0, 3006)
    arg1:EnableUnfavorableAttackCheck(0, 3007)
    arg1:EnableUnfavorableAttackCheck(0, 3008)
    arg1:EnableUnfavorableAttackCheck(0, 3009)
    arg1:EnableUnfavorableAttackCheck(0, 3010)
    arg1:EnableUnfavorableAttackCheck(0, 3011)
    arg1:EnableUnfavorableAttackCheck(0, 3015)
    arg1:EnableUnfavorableAttackCheck(0, 3016)
    arg1:EnableUnfavorableAttackCheck(0, 3017)
    arg1:EnableUnfavorableAttackCheck(0, 3019)
end

Goal.Activate = function (_, actor, goals)
    local probabilities = {}
    local acts = {}
    local f2_local0 = {}
    Common_Clear_Param(probabilities, acts, f2_local0)
    local distance = actor:GetDist(TARGET_ENE_0)
    actor:GetRandam_Int(1, 100)
    actor:GetEventRequest()
    actor:HasSpecialEffectId(TARGET_SELF, 10164)
    actor:HasSpecialEffectId(TARGET_SELF, 10840)
    local f2_local1 = actor:HasSpecialEffectId(TARGET_SELF, 10850)
    actor:HasSpecialEffectId(TARGET_SELF, 10851)
    local f2_local2 = actor:HasSpecialEffectId(TARGET_SELF, 11139)
    local f2_local3 = actor:HasSpecialEffectId(TARGET_SELF, 10880)
    actor:SetStringIndexedNumber("c3010_DashRate", 0)
    actor:SetStringIndexedNumber("c3010_WalkDist", 1)
    actor:SetStringIndexedNumber("c3010_RunDist", 1)
    actor:SetStringIndexedNumber("c3010_GuardRate", 100)
    if f2_local3 == true and actor:GetNumber(1) ~= 1 then
        actor:SetStringIndexedNumber("c3010_GuardRate", 0)
    end
    actor:SetStringIndexedNumber("c3010_WalkLife", 1)
    if f2_local2 == true then
        actor:SetStringIndexedNumber("c3010_DashRate", 0)
        actor:SetStringIndexedNumber("c3010_WalkDist", 0)
        actor:SetStringIndexedNumber("c3010_RunDist", 999)
        actor:SetStringIndexedNumber("c3010_GuardRate", 100)
        actor:SetStringIndexedNumber("c3010_WalkLife", 1)
    elseif f2_local1 == true then
        actor:SetStringIndexedNumber("c3010_DashRate", 100)
        actor:SetStringIndexedNumber("c3010_WalkDist", 0)
        actor:SetStringIndexedNumber("c3010_RunDist", 999)
        actor:SetStringIndexedNumber("c3010_GuardRate", 0)
        actor:SetStringIndexedNumber("c3010_WalkLife", 0)
    end
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 10896)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 10897)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 10874)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 30000006)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 30000007)
    actor:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 10859)
    actor:AddObserveSpecialEffectAttribute(TARGET_ENE_0, PLAN_SP_EFFECT_TRUNK_COLLAPSE)
    actor:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if actor:HasSpecialEffectId(TARGET_SELF, 30000007) == true then
        probabilities[24] = 100
    elseif f2_local2 == true then
        if actor:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku or actor:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            if actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 90, 90, 20 - actor:GetMapHitRadius(TARGET_SELF)) then
                probabilities[21] = 1
            elseif distance >= 10 then
                probabilities[1] = 20
                probabilities[4] = 30
                probabilities[18] = 30
                probabilities[23] = 100
                probabilities[24] = 200
            elseif distance >= 6.5 then
                probabilities[1] = 20
                probabilities[4] = 30
                probabilities[5] = 20
                probabilities[18] = 30
                probabilities[26] = 40
                probabilities[23] = 100
                probabilities[24] = 200
            elseif distance >= 3.5 then
                probabilities[1] = 40
                probabilities[2] = 50
                probabilities[4] = 30
                probabilities[5] = 30
                probabilities[7] = 30
                probabilities[8] = 30
                probabilities[17] = 30
                probabilities[18] = 30
                probabilities[26] = 60
                probabilities[24] = 200
            else
                probabilities[1] = 30
                probabilities[2] = 40
                probabilities[3] = 25
                probabilities[5] = 25
                probabilities[6] = 20
                probabilities[7] = 20
                probabilities[8] = 20
                probabilities[17] = 20
                probabilities[26] = 40
                probabilities[23] = 200
                probabilities[24] = 200
            end
        elseif actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 90, 90, 20 - actor:GetMapHitRadius(TARGET_SELF)) then
            probabilities[21] = 1
        elseif distance >= 10 then
            probabilities[1] = 20
            probabilities[4] = 30
            probabilities[18] = 30
            probabilities[22] = 40
        elseif distance >= 6.5 then
            probabilities[1] = 20
            probabilities[4] = 30
            probabilities[5] = 20
            probabilities[18] = 30
            probabilities[22] = 30
            probabilities[23] = 20
            probabilities[26] = 40
        elseif distance >= 3.5 then
            probabilities[1] = 40
            probabilities[2] = 40
            probabilities[4] = 30
            probabilities[5] = 30
            probabilities[7] = 30
            probabilities[8] = 30
            probabilities[17] = 30
            probabilities[18] = 30
            probabilities[22] = 15
            probabilities[23] = 20
            probabilities[26] = 60
        else
            probabilities[1] = 30
            probabilities[2] = 40
            probabilities[3] = 25
            probabilities[5] = 25
            probabilities[6] = 20
            probabilities[7] = 20
            probabilities[8] = 20
            probabilities[17] = 20
            probabilities[23] = 20
            probabilities[26] = 40
        end
    elseif f2_local3 == true then
        if actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 90, 90, 20 - actor:GetMapHitRadius(TARGET_SELF)) then
            probabilities[21] = 1
        elseif distance >= 10 then
            probabilities[1] = 20
            probabilities[4] = 30
            probabilities[11] = 40
            probabilities[12] = 20
            probabilities[18] = 30
        elseif distance >= 6.5 then
            probabilities[1] = 20
            probabilities[4] = 30
            probabilities[5] = 20
            probabilities[11] = 30
            probabilities[12] = 20
            probabilities[18] = 30
            probabilities[26] = 40
        elseif distance >= 3.5 then
            probabilities[1] = 40
            probabilities[2] = 30
            probabilities[4] = 30
            probabilities[5] = 30
            probabilities[7] = 30
            probabilities[8] = 30
            probabilities[12] = 40
            probabilities[13] = 40
            probabilities[17] = 30
            probabilities[18] = 30
            probabilities[26] = 60
        else
            probabilities[1] = 30
            probabilities[2] = 40
            probabilities[3] = 25
            probabilities[5] = 25
            probabilities[6] = 20
            probabilities[7] = 20
            probabilities[8] = 20
            probabilities[12] = 20
            probabilities[13] = 40
            probabilities[17] = 20
            probabilities[26] = 40
        end
    elseif actor:GetHpRate(TARGET_SELF) <= 0.5 then
        if actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 90, 90, 20 - actor:GetMapHitRadius(TARGET_SELF)) then
            probabilities[21] = 1
        elseif distance >= 10 then
            probabilities[1] = 20
            probabilities[4] = 30
            probabilities[18] = 30
            probabilities[22] = 40
            probabilities[27] = 200
        elseif distance >= 6.5 then
            probabilities[1] = 20
            probabilities[4] = 30
            probabilities[5] = 20
            probabilities[18] = 30
            probabilities[22] = 30
            probabilities[23] = 20
            probabilities[26] = 40
        elseif distance >= 3.5 then
            probabilities[1] = 40
            probabilities[2] = 30
            probabilities[4] = 30
            probabilities[5] = 30
            probabilities[7] = 30
            probabilities[8] = 30
            probabilities[17] = 30
            probabilities[18] = 30
            probabilities[22] = 15
            probabilities[23] = 20
            probabilities[26] = 60
            probabilities[27] = 200
        else
            probabilities[1] = 30
            probabilities[2] = 40
            probabilities[3] = 25
            probabilities[5] = 25
            probabilities[6] = 20
            probabilities[7] = 20
            probabilities[8] = 20
            probabilities[17] = 20
            probabilities[23] = 20
            probabilities[26] = 40
            probabilities[27] = 200
        end
    elseif actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 90, 90, 20 - actor:GetMapHitRadius(TARGET_SELF)) then
        probabilities[21] = 1
    elseif distance >= 10 then
        probabilities[1] = 20
        probabilities[4] = 30
        probabilities[18] = 30
        probabilities[22] = 40
    elseif distance >= 6.5 then
        probabilities[1] = 20
        probabilities[4] = 30
        probabilities[5] = 20
        probabilities[18] = 30
        probabilities[22] = 30
        probabilities[23] = 20
        probabilities[26] = 40
    elseif distance >= 3.5 then
        probabilities[1] = 40
        probabilities[2] = 30
        probabilities[4] = 30
        probabilities[5] = 30
        probabilities[7] = 30
        probabilities[8] = 30
        probabilities[17] = 30
        probabilities[18] = 30
        probabilities[22] = 15
        probabilities[23] = 20
        probabilities[26] = 60
    else
        probabilities[1] = 30
        probabilities[2] = 40
        probabilities[3] = 25
        probabilities[5] = 25
        probabilities[6] = 20
        probabilities[7] = 20
        probabilities[8] = 20
        probabilities[17] = 20
        probabilities[23] = 20
        probabilities[26] = 40
    end
    probabilities[1] = SetCoolTime(actor, goals, 3000, 8, probabilities[1], 1)
    probabilities[2] = SetCoolTime(actor, goals, 3003, 8, probabilities[2], 0)
    probabilities[2] = SetCoolTime(actor, goals, 3015, 8, probabilities[2], 0)
    probabilities[2] = SetCoolTime(actor, goals, 3009, 8, probabilities[7], 0)
    probabilities[3] = SetCoolTime(actor, goals, 3006, 10, probabilities[3], 1)
    probabilities[4] = SetCoolTime(actor, goals, 3008, 20, probabilities[4], 1)
    probabilities[5] = SetCoolTime(actor, goals, 3010, 5, probabilities[5], 0)
    probabilities[6] = SetCoolTime(actor, goals, 1200, 30, probabilities[6], 0)
    probabilities[7] = SetCoolTime(actor, goals, 3009, 5, probabilities[7], 0)
    probabilities[8] = SetCoolTime(actor, goals, 3002, 8, probabilities[8], 1)
    probabilities[17] = SetCoolTime(actor, goals, 3019, 20, probabilities[17], 0)
    probabilities[18] = SetCoolTime(actor, goals, 3020, 70, probabilities[18], 0)
    probabilities[26] = SetCoolTime(actor, goals, 3016, 25, probabilities[26], 0)
    probabilities[27] = SetCoolTime(actor, goals, 3017, 60, probabilities[27], 0)
    actor:HasSpecialEffectId(TARGET_SELF, 10164)
    local f2_local4 = actor:HasSpecialEffectId(TARGET_SELF, 10840)
    local f2_local5 = actor:HasSpecialEffectId(TARGET_SELF, 10850)
    actor:HasSpecialEffectId(TARGET_SELF, 10851)
    if f2_local5 == false then
        probabilities[17] = 0
    end
    if f2_local4 == false then
        probabilities[18] = 0
    elseif actor:GetHpRate(TARGET_SELF) < 0.5 then
        probabilities[18] = probabilities[18] * 1.3
        if actor:GetHpRate(TARGET_SELF) < 0.4 then
            probabilities[18] = probabilities[18] * 1.3
            if actor:GetHpRate(TARGET_SELF) < 0.2 then
                probabilities[18] = probabilities[18] * 1.3
            end
        end
    elseif actor:GetHpRate(TARGET_SELF) > 0.6 then
        probabilities[18] = 0
    end
    if f2_local4 == false then
        probabilities[6] = 0
    end
    if f2_local3 == true then
        probabilities[6] = 0
    end
    if actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 150, 90, 1.8) then
        probabilities[2] = probabilities[2] * 4
        probabilities[5] = probabilities[5] * 4
        probabilities[7] = probabilities[7] * 4
    end
    if actor:IsTargetGuard(TARGET_ENE_0) == true then
        probabilities[2] = probabilities[2] * 2
        probabilities[3] = probabilities[3] * 2
        probabilities[7] = probabilities[7] * 2
        probabilities[17] = probabilities[17] * 3
    end
    if actor:GetHpRate(TARGET_SELF) == 1 and f2_local5 == false then
        probabilities[22] = 0
    end
    if f2_local3 == true and actor:GetNumber(1) ~= 1 then
        probabilities[11] = 0
        probabilities[12] = 0
        probabilities[13] = 0
    end
    if actor:HasSpecialEffectId(TARGET_SELF, 10859) then
        probabilities[11] = 0
        probabilities[12] = 0
        probabilities[13] = 0
    end
    local f2_local6 = 0.5
    actor:SetStringIndexedNumber("ExistMeshOnLine_F", actor:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_F, 25 + f2_local6, f2_local6, 0))
    actor:SetStringIndexedNumber("ExistMeshOnLine_B", actor:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 25 + f2_local6, f2_local6, 0))
    actor:SetStringIndexedNumber("ExistMeshOnLine_L", actor:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_L, 25 + f2_local6, f2_local6, 0))
    actor:SetStringIndexedNumber("ExistMeshOnLine_R", actor:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_R, 25 + f2_local6, f2_local6, 0))
    acts[1] = REGIST_FUNC(actor, goals, LostKnight_SwordShield_301100_Act01)
    acts[2] = REGIST_FUNC(actor, goals, LostKnight_SwordShield_301100_Act02)
    acts[3] = REGIST_FUNC(actor, goals, LostKnight_SwordShield_301100_Act03)
    acts[4] = REGIST_FUNC(actor, goals, LostKnight_SwordShield_301100_Act04)
    acts[5] = REGIST_FUNC(actor, goals, LostKnight_SwordShield_301100_Act05)
    acts[6] = REGIST_FUNC(actor, goals, LostKnight_SwordShield_301100_Act06)
    acts[7] = REGIST_FUNC(actor, goals, LostKnight_SwordShield_301100_Act07)
    acts[8] = REGIST_FUNC(actor, goals, LostKnight_SwordShield_301100_Act08)
    acts[11] = REGIST_FUNC(actor, goals, LostKnight_SwordShield_301100_Act11)
    acts[12] = REGIST_FUNC(actor, goals, LostKnight_SwordShield_301100_Act12)
    acts[13] = REGIST_FUNC(actor, goals, LostKnight_SwordShield_301100_Act13)
    acts[15] = REGIST_FUNC(actor, goals, LostKnight_SwordShield_301100_Act15)
    acts[17] = REGIST_FUNC(actor, goals, LostKnight_SwordShield_301100_Act17)
    acts[18] = REGIST_FUNC(actor, goals, LostKnight_SwordShield_301100_Act18)
    acts[21] = REGIST_FUNC(actor, goals, LostKnight_SwordShield_301100_Act21)
    acts[22] = REGIST_FUNC(actor, goals, LostKnight_SwordShield_301100_Act22)
    acts[23] = REGIST_FUNC(actor, goals, LostKnight_SwordShield_301100_Act23)
    acts[24] = REGIST_FUNC(actor, goals, LostKnight_SwordShield_301100_Act24)
    acts[25] = REGIST_FUNC(actor, goals, LostKnight_SwordShield_301100_Act25)
    acts[26] = REGIST_FUNC(actor, goals, LostKnight_SwordShield_301100_Act26)
    acts[27] = REGIST_FUNC(actor, goals, LostKnight_SwordShield_301100_Act27)
    acts[31] = REGIST_FUNC(actor, goals, LostKnight_SwordShield_301100_Act31)
    acts[45] = REGIST_FUNC(actor, goals, LostKnight_SwordShield_301100_Act45)
    acts[46] = REGIST_FUNC(actor, goals, LostKnight_SwordShield_301100_Act46)
    acts[47] = REGIST_FUNC(actor, goals, LostKnight_SwordShield_301100_Act47)
    Common_Battle_Activate(actor, goals, probabilities, acts, REGIST_FUNC(actor, goals, LostKnight_SwordShield_301100_ActAfter_AdjustSpace), f2_local0)
end

function LostKnight_SwordShield_301100_Act01(actor, goals, _)
    actor:GetRandam_Int(1, 100)
    actor:SetNumber(1, 1)
    local f3_local0 = 4.9 - actor:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = (4.9 - actor:GetMapHitRadius(TARGET_SELF) + 6) * actor:GetStringIndexedNumber("c3010_WalkDist")
    local f3_local2 = 4.9 - actor:GetMapHitRadius(TARGET_SELF) + 6 + actor:GetStringIndexedNumber("c3010_RunDist")
    local f3_local3 = actor:GetStringIndexedNumber("c3010_DashRate")
    local f3_local4 = actor:GetStringIndexedNumber("c3010_GuardRate")
    local f3_local5 = 3 * actor:GetStringIndexedNumber("c3010_WalkLife")
    local f3_local6 = 4
    Approach_Act_Flex(actor, goals, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local action0 = 3000
    local action1 = 3001
    local success_distance0 = 4 - actor:GetMapHitRadius(TARGET_SELF)
    local success_distance1 = 4.7 - actor:GetMapHitRadius(TARGET_SELF)
    local turn_time_before = 0
    local front_decision_angle = 90
    goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, action0, TARGET_ENE_0, success_distance0, turn_time_before, front_decision_angle, 0, 0)
    goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, action1, TARGET_ENE_0, success_distance1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LostKnight_SwordShield_301100_Act02(actor, goals, _)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 10871)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 10873)
    actor:SetNumber(1, 1)
    Approach_Act_Flex(actor, goals, 4.3 - actor:GetMapHitRadius(TARGET_SELF), (4.3 - actor:GetMapHitRadius(TARGET_SELF) + 6) * actor:GetStringIndexedNumber("c3010_WalkDist"), 4.3 - actor:GetMapHitRadius(TARGET_SELF) + 6 + actor:GetStringIndexedNumber("c3010_RunDist"), actor:GetStringIndexedNumber("c3010_DashRate"), actor:GetStringIndexedNumber("c3010_GuardRate"), 3 * actor:GetStringIndexedNumber("c3010_WalkLife"), 4)
    if actor:GetRandam_Int(1, 100) > 70 then
        goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3003, TARGET_ENE_0, 4.6 - actor:GetMapHitRadius(TARGET_SELF), 0, 180, 0, 0)
    else
        local action0 = 3015
        local action1 = 3000
        local success_distance0 = 4.9 - actor:GetMapHitRadius(TARGET_SELF)
        local success_distance1 = 4 - actor:GetMapHitRadius(TARGET_SELF)
        local turn_time_before = 0
        local front_decision_angle = 90
        goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, action0, TARGET_ENE_0, success_distance0, turn_time_before, front_decision_angle, 0, 0)
        goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, action1, TARGET_ENE_0, success_distance1, 0, 0)
        goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3001, TARGET_ENE_0, success_distance1, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LostKnight_SwordShield_301100_Act03(actor, goals, _)
    actor:GetRandam_Int(1, 100)
    actor:SetNumber(1, 1)
    local f5_local0 = 3.6 - actor:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = (3.6 - actor:GetMapHitRadius(TARGET_SELF) + 6) * actor:GetStringIndexedNumber("c3010_WalkDist")
    local f5_local2 = 3.6 - actor:GetMapHitRadius(TARGET_SELF) + 6 + actor:GetStringIndexedNumber("c3010_RunDist")
    local f5_local3 = actor:GetStringIndexedNumber("c3010_DashRate")
    local f5_local4 = actor:GetStringIndexedNumber("c3010_GuardRate")
    local f5_local5 = 3 * actor:GetStringIndexedNumber("c3010_WalkLife")
    local f5_local6 = 4
    Approach_Act_Flex(actor, goals, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local action = 3006
    local f5_local7 = 3007
    local success_distance = 4.8 - actor:GetMapHitRadius(TARGET_SELF)
    local f5_local8 = 3 - actor:GetMapHitRadius(TARGET_SELF)
    local turn_time_before = 0
    local front_decision_angle = 180
    goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    goals:AddSubGoal(GOAL_COMMON_ComboFinal, 5, f5_local7, TARGET_ENE_0, f5_local8, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LostKnight_SwordShield_301100_Act04(actor, goals, _)
    actor:GetRandam_Int(1, 100)
    actor:SetNumber(1, 1)
    local f6_local0 = 11.3 - actor:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = (11.3 - actor:GetMapHitRadius(TARGET_SELF) + 6) * actor:GetStringIndexedNumber("c3010_WalkDist")
    local f6_local2 = 11.3 - actor:GetMapHitRadius(TARGET_SELF) + 6 + actor:GetStringIndexedNumber("c3010_RunDist")
    local f6_local3 = actor:GetStringIndexedNumber("c3010_DashRate")
    local f6_local4 = actor:GetStringIndexedNumber("c3010_GuardRate")
    local f6_local5 = 3 * actor:GetStringIndexedNumber("c3010_WalkLife")
    local f6_local6 = 4
    Approach_Act_Flex(actor, goals, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local action = 3015
    local f6_local7 = 3008
    local success_distance = 11.3 - actor:GetMapHitRadius(TARGET_SELF)
    local f6_local8 = 3 - actor:GetMapHitRadius(TARGET_SELF)
    local turn_time_before = 0
    local front_decision_angle = 180
    goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    goals:AddSubGoal(GOAL_COMMON_ComboFinal, 5, f6_local7, TARGET_ENE_0, f6_local8, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LostKnight_SwordShield_301100_Act05(actor, goals, _)
    actor:GetDist(TARGET_ENE_0)
    actor:GetRandam_Int(1, 100)
    actor:SetNumber(1, 1)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 16479)
    local f7_local0 = 4.1 - actor:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = (4.1 - actor:GetMapHitRadius(TARGET_SELF) + 6) * actor:GetStringIndexedNumber("c3010_WalkDist")
    local f7_local2 = 4.1 - actor:GetMapHitRadius(TARGET_SELF) + 6 + actor:GetStringIndexedNumber("c3010_RunDist")
    local f7_local3 = actor:GetStringIndexedNumber("c3010_DashRate")
    local f7_local4 = actor:GetStringIndexedNumber("c3010_GuardRate")
    local f7_local5 = 3 * actor:GetStringIndexedNumber("c3010_WalkLife")
    local f7_local6 = 4
    Approach_Act_Flex(actor, goals, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3010
    local f7_local8 = 4 - actor:GetMapHitRadius(TARGET_SELF)
    goals:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local7, TARGET_ENE_0, f7_local8, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LostKnight_SwordShield_301100_Act06(actor, goals, _)
    actor:SetNumber(1, 1)
    local distance = actor:GetDist(TARGET_ENE_0)
    actor:GetRandam_Int(1, 100)
    if distance >= 10 then
        goals:AddSubGoal(GOAL_COMMON_ApproachTarget, actor:GetRandam_Int(3.5, 6.5), TARGET_ENE_0, 10, TARGET_ENE_0, true, 9920)
    elseif distance >= 10 / 2 then
        goals:AddSubGoal(GOAL_COMMON_SidewayMove, actor:GetRandam_Int(3.5, 6.5), TARGET_ENE_0, actor:GetRandam_Int(0, 1), actor:GetRandam_Int(30, 45), true, true, 9920)
    else
        goals:AddSubGoal(GOAL_COMMON_LeaveTarget, actor:GetRandam_Int(3.5, 6.5), TARGET_ENE_0, 10, TARGET_ENE_0, true, 9920)
    end
    goals:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 1.5, TARGET_SELF, true, 9920)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LostKnight_SwordShield_301100_Act07(actor, goals, _)
    actor:GetRandam_Int(1, 100)
    actor:GetRandam_Int(1, 100)
    actor:SetNumber(1, 1)
    local f9_local0 = 3.3 - actor:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = (3.3 - actor:GetMapHitRadius(TARGET_SELF) + 6) * actor:GetStringIndexedNumber("c3010_WalkDist")
    local f9_local2 = 3.3 - actor:GetMapHitRadius(TARGET_SELF) + 6 + actor:GetStringIndexedNumber("c3010_RunDist")
    local f9_local3 = actor:GetStringIndexedNumber("c3010_DashRate")
    local f9_local4 = actor:GetStringIndexedNumber("c3010_GuardRate")
    local f9_local5 = 3 * actor:GetStringIndexedNumber("c3010_WalkLife")
    local f9_local6 = 4
    Approach_Act_Flex(actor, goals, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local action = 3009
    local turn_time_before = 0
    local front_decision_angle = 180
    goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, action, TARGET_ENE_0, DIST_None, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LostKnight_SwordShield_301100_Act08(actor, goals, _)
    actor:GetRandam_Int(1, 100)
    actor:SetNumber(1, 1)
    local distance = 4.7 - actor:GetMapHitRadius(TARGET_SELF)
    local is_walking = true
    actor:GetRandam_Int(1, 100)
    local action0 = 9910
    if distance <= actor:GetDist(TARGET_ENE_0) then
        goals:AddSubGoal(GOAL_COMMON_ApproachTarget, actor:GetRandam_Float(2, 3), TARGET_ENE_0, distance, TARGET_ENE_0, is_walking, action0)
    else
        action0 = 9910
        if sirType == true then
            action0 = 9920
        end
        goals:AddSubGoal(GOAL_COMMON_SidewayMove, actor:GetRandam_Float(2, 3), TARGET_ENE_0, actor:GetRandam_Int(0, 1), actor:GetRandam_Int(30, 45), true, true, action0)
    end
    local action1 = 3002
    local success_distance = 4.7 - actor:GetMapHitRadius(TARGET_SELF)
    local turn_time_before = 0
    local front_decision_angle = 90
    goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, action1, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LostKnight_SwordShield_301100_Act11(actor, goals, _)
    actor:GetRandam_Int(1, 100)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 10875)
    actor:SetNumber(1, 1)
    actor:SetNumber(15, 1)
    goals:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LostKnight_SwordShield_301100_Act12(actor, goals, _)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 10875)
    actor:SetNumber(1, 1)
    if actor:GetRandam_Int(1, 100) > 50 then
        actor:SetNumber(15, 3)
        goals:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 2)
    else
        actor:SetNumber(15, 4)
        goals:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 2)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LostKnight_SwordShield_301100_Act13(actor, goals, _)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 10875)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 10876)
    actor:SetNumber(1, 1)
    actor:GetRandam_Int(1, 100)
    actor:GetRandam_Int(1, 100)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 10875)
    actor:SetNumber(1, 1)
    actor:SetNumber(15, 2)
    goals:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LostKnight_SwordShield_301100_Act15(arg0, goals, _)
    local f14_local0 = 3015
    arg0:SetNumber(1, 1)
    goals:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f14_local0, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LostKnight_SwordShield_301100_Act17(arg0, goals, _)
    local f15_local0 = 3019
    local f15_local1 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local2 = 3
    local f15_local3 = 90
    goals:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f15_local0, TARGET_ENE_0, f15_local1, f15_local2, f15_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LostKnight_SwordShield_301100_Act18(arg0, goals, _)
    local f16_local0 = 3020
    local f16_local1 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local2 = 0
    local f16_local3 = 180
    goals:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f16_local0, TARGET_SELF, f16_local1, f16_local2, f16_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LostKnight_SwordShield_301100_Act21(_, goals, _)
    goals:AddSubGoal(GOAL_COMMON_Turn, 1.5, TARGET_ENE_0, 90, 9910, GUARD_GOAL_DESIRE_RET_Continue, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LostKnight_SwordShield_301100_Act22(actor, goals, _)
    local random = actor:GetRandam_Int(1, 100)
    actor:HasSpecialEffectId(TARGET_SELF, 10840)
    actor:HasSpecialEffectId(TARGET_SELF, 10850)
    Approach_Act_Flex(actor, goals, 3, 0, 999, 100, 0, 0, 4)
    if random > 60 then
        local action = 3000
        local success_distance = 4 - actor:GetMapHitRadius(TARGET_SELF)
        local turn_time_before = 0
        local front_decision_angle = 90
        goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, action, TARGET_ENE_0, success_distance, turn_time_before, front_decision_angle, 0, 0)
        goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3001, TARGET_ENE_0, 4.7 - actor:GetMapHitRadius(TARGET_SELF), 0, 0)
    elseif random > 30 then
        goals:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 4 - actor:GetMapHitRadius(TARGET_SELF), 0, 90)
    else
        goals:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 4 - actor:GetMapHitRadius(TARGET_SELF), 0, 90)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LostKnight_SwordShield_301100_Act23(actor, goals, _)
    actor:GetRandam_Int(1, 100)
    actor:HasSpecialEffectId(TARGET_SELF, 10840)
    if actor:GetDist(TARGET_ENE_0) <= 4.1 - actor:GetMapHitRadius(TARGET_SELF) or actor:GetHpRate(TARGET_SELF) <= 0.4 or actor:GetTargetSARate(TARGET_SELF) <= 0.5 then
    end
    local distance = 4.9 - actor:GetMapHitRadius(TARGET_SELF)
    local is_walking = true
    actor:GetRandam_Int(1, 100)
    local f19_local0 = actor:HasSpecialEffectId(TARGET_SELF, 10840)
    local action = 9910
    if distance <= actor:GetDist(TARGET_ENE_0) then
        goals:AddSubGoal(GOAL_COMMON_ApproachTarget, actor:GetRandam_Float(2, 3), TARGET_ENE_0, distance, TARGET_ENE_0, is_walking, action)
    else
        local f19_local1 = 9910
        if f19_local0 == true then
            f19_local1 = 9920
        end
        goals:AddSubGoal(GOAL_COMMON_SidewayMove, actor:GetRandam_Float(2, 3), TARGET_ENE_0, actor:GetRandam_Int(0, 1), actor:GetRandam_Int(30, 45), true, true, f19_local1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LostKnight_SwordShield_301100_Act24(actor, goals, _)
    local distance = actor:GetDist(TARGET_ENE_0)
    if actor:GetRandam_Int(1, 100) <= 0 then
    end
    if distance >= 8 then
        goals:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, actor:GetRandam_Float(6, 7.5), TARGET_ENE_0, true, 9910)
    elseif distance <= 4 then
        goals:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 6, TARGET_ENE_0, true, 9910)
    else
        goals:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, actor:GetRandam_Int(30, 45), true, true, 9910)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LostKnight_SwordShield_301100_Act25(arg0, goals, _)
    arg0:SetNumber(4, 1)
    if arg0:GetRandam_Int(1, 100) > 50 then
        goals:AddSubGoal(GOAL_COMMON_ApproachAround, arg0:GetRandam_Int(1, 4), TARGET_ENE_0, 0, TARGET_SELF, true, 9910, AI_DIR_TYPE_ToL, arg0:GetRandam_Int(2, 4))
    else
        goals:AddSubGoal(GOAL_COMMON_ApproachAround, arg0:GetRandam_Int(1, 4), TARGET_ENE_0, 0, TARGET_SELF, true, 9910, AI_DIR_TYPE_ToR, arg0:GetRandam_Int(2, 4))
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LostKnight_SwordShield_301100_Act26(actor, goals, _)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 10871)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 10873)
    actor:SetNumber(1, 1)
    Approach_Act_Flex(actor, goals, 4.3 - actor:GetMapHitRadius(TARGET_SELF), (4.3 - actor:GetMapHitRadius(TARGET_SELF) + 6) * actor:GetStringIndexedNumber("c3010_WalkDist"), 4.3 - actor:GetMapHitRadius(TARGET_SELF) + 6 + actor:GetStringIndexedNumber("c3010_RunDist"), actor:GetStringIndexedNumber("c3010_DashRate"), actor:GetStringIndexedNumber("c3010_GuardRate"), 3 * actor:GetStringIndexedNumber("c3010_WalkLife"), 4)
    local action0 = 3016
    local action1 = 3004
    local action2 = 3005
    local success_distance0 = 999 - actor:GetMapHitRadius(TARGET_SELF)
    local success_distance1 = 999 - actor:GetMapHitRadius(TARGET_SELF)
    local turn_time_before = 0
    local front_decision_angle = 90
    goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, action0, TARGET_ENE_0, success_distance0, turn_time_before, front_decision_angle, 0, 0)
    goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, action1, TARGET_ENE_0, success_distance1, 0, 0)
    goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, action2, TARGET_ENE_0, success_distance1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LostKnight_SwordShield_301100_Act27(actor, goals, _)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 10871)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 10873)
    actor:SetNumber(1, 1)
    local action0 = 3017
    local success_distance0 = 4.9 - actor:GetMapHitRadius(TARGET_SELF)
    local success_distance1 = 4 - actor:GetMapHitRadius(TARGET_SELF)
    local turn_time_before = 0
    local front_decision_angle = 90
    goals:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, action0, TARGET_ENE_0, success_distance0, turn_time_before, front_decision_angle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LostKnight_SwordShield_301100_Act31(_, goals, _)
    goals:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LostKnight_SwordShield_301100_ActCP3(_, goals, _)
    goals:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LostKnight_SwordShield_301100_Act45(_, goals, _)
    goals:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LostKnight_SwordShield_301100_Act46(_, goals, _)
    goals:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LostKnight_SwordShield_301100_Act47(actor, goals, _)
    actor:GetDist(TARGET_ENE_0)
    local distance = 1
    local action = -1
    if actor:GetRandam_Int(1, 100) <= 100 then
        action = 9920
    end
    goals:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, distance, TARGET_ENE_0, true, action)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LostKnight_SwordShield_301100_ActAfter_AdjustSpace(_, goals, _)
    goals:AddSubGoal(GOAL_LostKnight_SwordShield_301100_AfterAttackAct, 10)
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (_, _, _)
end

Goal.Interrupt = function (_, actor, goals)
    local distance = actor:GetDist(TARGET_ENE_0)
    actor:GetDist(TARGET_FRI_0)
    local random0 = actor:GetRandam_Int(1, 100)
    actor:HasSpecialEffectId(TARGET_ENE_0, 90)
    actor:HasSpecialEffectId(TARGET_SELF, 10164)
    actor:HasSpecialEffectId(TARGET_SELF, 10840)
    actor:HasSpecialEffectId(TARGET_SELF, 10850)
    actor:HasSpecialEffectId(TARGET_SELF, 10851)
    local f30_local0 = actor:HasSpecialEffectId(TARGET_SELF, 10880)
    actor:AddObserveSpecialEffectAttribute(TARGET_SELF, 10874)
    actor:GetPrevTargetState()
    actor:AddObserveSpecialEffectAttribute(TARGET_ENE_0, PLAN_SP_EFFECT_FALL_FROM_HORSE)
    if actor:IsLadderAct(TARGET_SELF) then
        return false
    end
    local f30_local1 = 5
    local f30_local2 = 180
    local f30_local3 = 6.5
    local f30_local4 = 180
    if Parry_Act(actor, goals, f30_local1, f30_local2, f30_local3, f30_local4) then
        return true
    elseif actor:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if actor:GetSpecialEffectActivateInterruptId(5027) then
            if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 150) and distance >= 1.8 and distance <= 4.5 then
                if actor:GetRandam_Int(1, 100) > 40 then
                    goals:ClearSubGoal()
                    goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3005, TARGET_ENE_0, 4, 0, 90)
                    return true
                else
                    goals:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3002, TARGET_ENE_0, DIST_None, 0, 0)
                    return true
                end
            elseif actor:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 90, 4.7 - actor:GetMapHitRadius(TARGET_SELF) + 1) then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3002, TARGET_ENE_0, DIST_None, 0, 0)
                return true
            end
        end
        if actor:GetSpecialEffectActivateInterruptId(5030) then
            local random1 = actor:GetRandam_Int(1, 100)
            goals:ClearSubGoal()
            if random1 > 60 then
                if distance <= 3.5 then
                    if random1 > 70 and actor:HasSpecialEffectId(TARGET_SELF, 10896) == false then
                        LostKnight_SwordShield_301100_Act05(actor, goals)
                    elseif random1 > 35 and actor:HasSpecialEffectId(TARGET_SELF, 10897) == false then
                        LostKnight_SwordShield_301100_Act02(actor, goals)
                    else
                        LostKnight_SwordShield_301100_Act07(actor, goals)
                    end
                elseif distance <= 5 then
                    goals:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 4.7 - actor:GetMapHitRadius(TARGET_SELF) + 2, 0, 0)
                end
                return true
            end
        end
    end
    if actor:IsInterupt(INTERUPT_Shoot) then
        goals:ClearSubGoal()
        actor:SetStringIndexedNumber("c3010_DashRate", 100)
        if f30_local0 == true then
            if random0 > 90 then
                goals:ClearSubGoal()
                LostKnight_SwordShield_301100_Act11(actor, goals)
                return true
            end
        elseif distance >= 4 then
            goals:ClearSubGoal()
            LostKnight_SwordShield_301100_Act22(actor, goals)
            return true
        end
    end
    if actor:HasSpecialEffectId(TARGET_SELF, 30000006) then
        local random1 = actor:GetDist(TARGET_ENE_0)
        local random2 = actor:GetRandam_Int(1, 100)
        goals:ClearSubGoal()
        if random2 >= 50 then
            LostKnight_SwordShield_301100_Act26(actor, goals)
        else
            LostKnight_SwordShield_301100_Act15(actor, goals)
        end
    end
    if actor:HasSpecialEffectId(TARGET_SELF, 16479) then
        local random1 = actor:GetDist(TARGET_ENE_0)
        local random2 = actor:GetRandam_Int(1, 100)
        if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 150) and random1 >= 1.8 and random1 <= 4.5 and random2 > 70 then
            goals:ClearSubGoal()
            goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3005, TARGET_ENE_0, 4, 0, 90)
            return true
        end
    end
    if actor:HasSpecialEffectId(TARGET_SELF, 10871) then
        local random1 = actor:GetDist(TARGET_ENE_0)
        local random2 = actor:GetRandam_Int(1, 100)
        if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 150) and random1 >= 3 and random1 <= 12 and random2 > 35 then
            goals:ClearSubGoal()
            goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3008, TARGET_ENE_0, 4, 0, 90)
            return true
        end
    end
    if actor:HasSpecialEffectId(TARGET_SELF, 10875) then
        local random1 = actor:GetDist(TARGET_ENE_0)
        local random2 = actor:GetRandam_Int(1, 100)
        if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 150) and random1 <= 4 then
            if random2 > 60 then
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3025, TARGET_ENE_0, 4, 0, 90)
                return true
            else
                goals:ClearSubGoal()
                goals:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3026, TARGET_ENE_0, 4, 0, 90)
                return true
            end
        end
    end
    if actor:HasSpecialEffectId(TARGET_SELF, 10876) then
        local random1 = actor:GetDist(TARGET_ENE_0)
        actor:GetRandam_Int(1, 100)
        if actor:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 200) and random1 >= 4 then
            local random3 = actor:GetRandam_Int(0, 100)
            if random3 > 50 then
                goals:ClearSubGoal()
                LostKnight_SwordShield_301100_Act12(actor, goals)
            elseif random3 > 20 then
                LostKnight_SwordShield_301100_Act24(actor, goals)
            else
                goals:ClearSubGoal()
                LostKnight_SwordShield_301100_Act11(actor, goals)
            end
        end
    end
    if actor:HasSpecialEffectId(TARGET_SELF, 5029) == true and actor:HasSpecialEffectId(TARGET_ENE_0, 10859) == false then
        actor:GetDist(TARGET_ENE_0)
        actor:GetRandam_Int(1, 100)
        selectFate_ToB = 1
        selectFate_ToBL = 1
        selectFate_ToBR = 1
        selectFate_ToL = 1
        selectFate_ToR = 1
        warpDist_x = actor:GetRandam_Int(3, 5)
        if actor:GetNumber(15) == 1 then
            selectFate_ToBL = 0
            selectFate_ToBR = 0
            selectFate_ToL = 0
            selectFate_ToR = 0
        elseif actor:GetNumber(15) == 2 then
        elseif actor:GetNumber(15) == 3 then
            selectFate_ToB = 0
            selectFate_ToBR = 0
            selectFate_ToR = 0
        elseif actor:GetNumber(15) == 4 then
            selectFate_ToB = 0
            selectFate_ToBL = 0
            selectFate_ToL = 0
        end
        local f30_local5 = actor:GetMapHitRadius(TARGET_SELF)
        actor:GetDist(TARGET_ENE_0)
        actor:GetRelativeAngleFromTarget(TARGET_ENE_0)
        if actor:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToB, warpDist_x + f30_local5, f30_local5, 0) <= warpDist_x then
            selectFate_ToB = 0
        end
        if actor:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBL, warpDist_x + f30_local5, f30_local5, 0) <= warpDist_x then
            selectFate_ToBL = 0
        end
        if actor:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBR, warpDist_x + f30_local5, f30_local5, 0) <= warpDist_x then
            selectFate_ToBR = 0
        end
        if actor:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToL, warpDist_x + f30_local5, f30_local5, 0) <= warpDist_x then
            selectFate_ToL = 0
        end
        if actor:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToR, warpDist_x + f30_local5, f30_local5, 0) <= warpDist_x then
            selectFate_ToR = 0
        end
        local random4 = actor:GetRandam_Int(0, selectFate_ToB + selectFate_ToBL + selectFate_ToBR + selectFate_ToL + selectFate_ToR)
        local f30_local6 = AI_DIR_TYPE_ToB
        local f30_local7 = 0
        local f30_local8 = TARGET_ENE_0
        if 0 == selectFate_ToB + selectFate_ToBL + selectFate_ToBR + selectFate_ToL + selectFate_ToR then
            actor:SetNumber(15, 5)
        elseif 0 ~= AI_DIR_TYPE_ToB and random4 <= selectFate_ToB then
            f30_local6 = AI_DIR_TYPE_ToB
            f30_local7 = warpDist_x
            f30_local8 = TARGET_ENE_0
        elseif 0 ~= selectFate_2 and random4 <= selectFate_ToB + selectFate_ToBL then
            f30_local6 = AI_DIR_TYPE_ToBL
            f30_local7 = warpDist_x
            f30_local8 = TARGET_ENE_0
        elseif 0 ~= selectFate_3 and random4 <= selectFate_ToB + selectFate_ToBL + selectFate_ToBR then
            f30_local6 = AI_DIR_TYPE_ToBR
            f30_local7 = warpDist_x
            f30_local8 = TARGET_ENE_0
        elseif 0 ~= selectFate_4 and random4 <= selectFate_ToB + selectFate_ToBL + selectFate_ToBR + selectFate_ToL then
            f30_local6 = AI_DIR_TYPE_ToL
            f30_local7 = warpDist_x
            f30_local8 = TARGET_ENE_0
        elseif 0 ~= selectFate_4 and random4 <= selectFate_ToB + selectFate_ToBL + selectFate_ToBR + selectFate_ToL + selectFate_ToR then
            f30_local6 = AI_DIR_TYPE_ToR
            f30_local7 = warpDist_x
            f30_local8 = TARGET_ENE_0
        end
        if actor:GetNumber(15) == 2 then
            actor:SetNumber(15, 0)
            goals:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_SELF, AI_DIR_TYPE_B, f30_local7, f30_local8, actor:GetRandam_Int(5, 7), -2)
            actor:AddTopGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
        elseif actor:GetNumber(15) == 5 then
            actor:SetNumber(15, 0)
            goals:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, f30_local6, f30_local7, f30_local8, 5, -2)
            actor:AddTopGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
        else
            actor:SetNumber(15, 0)
            goals:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, f30_local6, f30_local7, f30_local8, 5, -2)
            actor:AddTopGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
        end
    end
    if actor:HasSpecialEffectId(TARGET_SELF, 10874) then
        local random1 = actor:GetDist(TARGET_ENE_0)
        local random2 = actor:GetRandam_Int(1, 100)
        actor:SetNumber(10, actor:GetNumber(10) + 1)
        if actor:GetNumber(10) == 1 then
            actor:GetRandam_Int(0, 100)
        elseif actor:GetNumber(10) == 2 then
            actor:GetRandam_Int(30, 100)
        elseif actor:GetNumber(10) >= 3 then
            actor:GetRandam_Int(60, 100)
        end
        if random2 > 80 then
            if random1 <= 3 then
                actor:SetNumber(10, 0)
                if f30_local0 == true then
                    local random3 = actor:GetRandam_Int(0, 100)
                    if random3 > 50 then
                        goals:ClearSubGoal()
                        LostKnight_SwordShield_301100_Act12(actor, goals)
                    elseif random3 > 20 then
                        goals:ClearSubGoal()
                        LostKnight_SwordShield_301100_Act13(actor, goals)
                    else
                        LostKnight_SwordShield_301100_Act02(actor, goals)
                    end
                else
                    LostKnight_SwordShield_301100_Act02(actor, goals)
                end
            elseif random1 <= 5 then
                if f30_local0 == true then
                    local random3 = actor:GetRandam_Int(0, 100)
                    if random3 > 50 then
                        goals:ClearSubGoal()
                        LostKnight_SwordShield_301100_Act12(actor, goals)
                    elseif random3 > 20 then
                        goals:ClearSubGoal()
                        LostKnight_SwordShield_301100_Act13(actor, goals)
                    else
                        LostKnight_SwordShield_301100_Act02(actor, goals)
                    end
                elseif random2 > 30 then
                    actor:SetNumber(10, 0)
                    LostKnight_SwordShield_301100_Act02(actor, goals)
                else
                    actor:SetNumber(10, 0)
                    LostKnight_SwordShield_301100_Act04(actor, goals)
                end
            end
        end
    end
    if actor:IsInterupt(INTERUPT_Damaged) then
        actor:GetRandam_Int(1, 100)
        if actor:GetDist(TARGET_ENE_0) >= 5 then
            LostKnight_SwordShield_301100_Act22(actor, goals)
        end
    end
    return false
end

RegisterTableGoal(GOAL_LostKnight_SwordShield_301100_AfterAttackAct, "LostKnight_SwordShield_301100_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_LostKnight_SwordShield_301100_AfterAttackAct, true)

Goal.Activate = function (_, _, _)
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end
