local Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57, 
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177, 
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70, 
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,["UP"] = 27,
	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

local notcalled = true

local t = {}

local ropes = {}

objects = {}

local noflag = false

local cig = {}

local cigfx = {}

local objectcount = 0

local powercalled = false

local ssranks = 0.1

local tyx = true

myfx = {}


stopped = {}

local x
local y
local z

local wwvoid = false

RegisterNetEvent('dshot')
AddEventHandler('dshot',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('rhino')
AddEventHandler('rhino',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('mv')
AddEventHandler('mv',function()
wwvoid = true
powercalled = false
end)

RegisterNetEvent('dp')
AddEventHandler('dp',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('ds')
AddEventHandler('ds',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('fla')
AddEventHandler('fla',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('gb')
AddEventHandler('gb',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('jg')
AddEventHandler('jg',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('jk')
AddEventHandler('jk',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('mag')
AddEventHandler('mag',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('hq')
AddEventHandler('hq',function()
wwvoid = true
powercalled = false
end)

RegisterNetEvent('ww')
AddEventHandler('ww',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('rfla')
AddEventHandler('rfla',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('hulk')
AddEventHandler('hulk',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('loki')
AddEventHandler('loki',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('supergirl')
AddEventHandler('supergirl',function()
	wwvoid = true
	powercalled = false
end)


RegisterNetEvent('ddMeleeClient')
AddEventHandler('ddMeleeClient',function(thisx, thisy, campitch, isplayer, session, playerID)
	if isplayer == true then
		for i=1,10 do
			thisapply = ApplyForceToEntity(GetPlayerPed(session), 1, thisx * 50.0,thisy * 50.0,campitch,0,0,0, 0, false, false, false, false, false);
		end
		-- ApplyDamageToPed(GetPlayerPed(session),50)
	else
		local pos = GetEntityCoords(GetPlayerPed(playerID))
		local entityWorld = GetOffsetFromEntityInWorldCoords(GetPlayerPed(playerID), 0.0, 20.0, 0.0)
		local rayHandle = CastRayPointToPoint(pos.x, pos.y, pos.z, entityWorld.x, entityWorld.y, entityWorld.z, 10, GetPlayerPed(playerID), 0)
		local a, b, c, d, youfly = GetRaycastResult(rayHandle)
		SetEntityHasGravity(youfly, true)
		for i=1,10 do
			thisapply = ApplyForceToEntity(youfly, 1, thisx * 50.0,thisy * 50.0,campitch,0,0,0, 0, false, false, false, false, false);
		end
		-- ApplyDamageToPed(youfly,50)
	end
end)

RegisterNetEvent('dd')
AddEventHandler('dd',function(skin)


	--<<CheckVoid
	wwvoid = false
	if powercalled == true then
		return void
	end
	
	nightvision = not nightvision
		SetNightvision(nightvision)
	
	powercalled = true
	--CheckVoid>>
			
	--<<LoadModel
	Wait(1)
	if tostring(skin) == "" then
		skin = "classicdd"
	end
	local model = GetHashKey(skin)
    RequestModel(model)
    while not HasModelLoaded(model) do
		RequestModel(model)
		Citizen.Wait(0)
    end
    SetPlayerModel(PlayerId(-1), model)
    SetModelAsNoLongerNeeded(model)
	--LoadModel>>
	
	--<<SetAttribs
	local playerPed = GetPlayerPed(-1)
--	SetPoliceIgnorePlayer(PlayerId(-1),true)
	SetPedDiesWhenInjured(playerPed,false)
	SetPedCombatMovement(playerPed,100)
	Wait(1000)
	SetPedRelationshipGroupHash(playerPed, GetHashKey("hero"))
	SetPedAccuracy(playerPed, 1000)
	SetPedCombatRange(playerPed, 10)
	cbr = GetPedCombatRange(playerPed)
	SetPedMaxHealth(playerPed,250)
	SetEntityHealth(playerPed,250)	
	
	Citizen.CreateThread(function()
		
		local bulletproof
		local fireproof
		local explosionproof
		local meleeproof
		local drownproof
		
		while true do
		Wait(1000)
		chance = GetRandomIntInRange(1,101)
		if chance > 50 then
			bulletproof = false
			else
			bulletproof = true
		end
		chance = GetRandomIntInRange(1,101)
		if chance > 0 then
			fireproof = false
			else
			fireproof = true
		end
		chance = GetRandomIntInRange(1,101)
		if chance > 50 then
			explosionproof = false
			else
			explosionproof = true
		end
		chance = GetRandomIntInRange(1,101)
		if chance > 50 then
			collisionproof = false
			else
			collisionproof = true
		end
		chance = GetRandomIntInRange(1,101)
		if chance > 0 then
			meleeproof = false
			else
			meleeproof = true
		end
		chance = GetRandomIntInRange(1,101)
		if chance > 0 then
			drownproof = false
			else
			drownproof = true
		end
		SetEntityProofs(playerPed, bulletproof, fireproof, explosionproof, collisionproof, meleeproof, false, false, drownproof)
		end
		end)
	--SetAttribs>>
	
		--<<Regen Health and Armor
	Citizen.CreateThread(function()
		while true do
			x, y, z = table.unpack(GetEntityCoords(playerPed, true))
			Wait(250)
			if GetEntityHealth(playerPed) > 0 then
				if GetEntityHealth(playerPed) > 999 then  --Standard change this.
				else
					if IsPedStopped(playerPed) == 1 then
						SetEntityHealth(playerPed,GetEntityHealth(playerPed)+1)
					end
				end
			end
		end
	end)
 	
	Citizen.CreateThread(function()
		while true do
			Wait(100)
			if GetPedArmour(playerPed) < 500 then
				SetPedArmour(playerPed, GetPedArmour(playerPed)+1)
			end
		end
	end)
	--Regen Health and Armor>>
	
	GiveWeaponToPed(playerPed, GetHashKey("WEAPON_CROWBAR"), 1000, 0, 1)
	--[[x, y, z = table.unpack(GetEntityCoords(playerPed))
	
	RequestModel("w_me_crowbar")
        while not HasModelLoaded("w_me_crowbar") do
           Wait(1)
        end
	 local staff = CreateObject("w_me_crowbar", x, y, z, true, true, true)
        PlaceObjectOnGroundProperly(staff)
		-- Wait(10000)
		 AttachEntityToEntity(staff, playerPed, GetPedBoneIndex(playerPed,57005), 0.1, 0.0, 0.0, 0.0,90.0, 90.0, false, false, false, true, 2, true)
	--]]

	while true do --##PRIMARY LOOP##--
		if wwvoid == true then
		nightvision = not nightvision
		SetNightvision(nightvision)
			powercalled = false
			return void
		end

		if IsEntityDead(playerPed) == 1 then
		nightvision = not nightvision
		SetNightvision(nightvision)
			powercalled = false
			wwvoid = true
			return void
		end
		
		--<<Melee Events
		local thisx
		local thisy
		thisy = GetEntityForwardY(playerPed)
		thisx = GetEntityForwardX(playerPed)
		Wait(0)
		for i=1,10 do
			local pos = GetEntityCoords(playerPed)
			local entityWorld = GetOffsetFromEntityInWorldCoords(playerPed, 0.0, 20.0, 0.0)
			local rayHandle = CastRayPointToPoint(pos.x, pos.y, pos.z, entityWorld.x, entityWorld.y, entityWorld.z, 10, playerPed, 0)
			local a, b, c, d, youfly = GetRaycastResult(rayHandle)
			SetEntityHasGravity(youfly, true)
			if GetVehiclePedIsIn(youfly, false) == 0 then --Standard change this.
			else
				comeere = GetVehiclePedIsIn(youfly)
				youfly = GetVehiclePedIsIn(youfly)
				-- SetVehicleEngineOn(youfly,false)
				SetEntityHasGravity(youfly, true)
			end
			
			if youfly == 0 then  --Standard change this.
			else
				if IsPedInMeleeCombat(playerPed) == 1 then
					if HasEntityBeenDamagedByEntity(youfly,playerPed,true) then
						if IsEntityAPed(youfly) == 1 then
							--Citizen.Trace(tostring(PlayerId()) .. " - " .. tostring(youfly) .. " - " .. tostring(GetPlayerPed(PlayerId())))
							-- thisapply = ApplyForceToEntity(youfly, 1, thisx * 500.0,thisy * 500.0,(tonumber(GetGameplayCamRelativePitch())/ 5),0,0,0, 0, false, false, false, false, false);
							isplayer = false
							session = 0
							for i=0,32 do
								if youfly == GetPlayerPed(i) then
									session = i
									isplayer = true
								end
							end
							campitch = tonumber(GetGameplayCamRelativePitch()/5)
					--		TriggerServerEvent('ddMeleeServer',PlayerId(-1), thisx, thisy, campitch, isplayer, session)
							Wait(150)
							
							  youflyrel = GetPedRelationshipGroupHash(youfly)
							if IsEntityDead(youfly) then
								v = false
								if youflyrel == GetHashKey("CIVMALE") then
								v = true
								tc = "civmale"
								end
								if youflyrel == GetHashKey("CIVFEMALE") then
								tc = "civfemale"
								v = true 
								end
								if youflyrel == GetHashKey("COP") then
								tc = "cop"
								v = true 
								end
								
								AddRelationshipGroup("villains")
								if v == true then
								if GetPedRelationshipGroupHash(playerPed) ~= GetHashKey("villains") then
								--	SetPlayerWantedLevel(PlayerId(),5)
	SetPedRelationshipGroupHash(playerPed,GetHashKey("villains"))
--	SetPoliceIgnorePlayer(PlayerId(-1),false)
	PrintChatMessage("Flagged as villain for three minutes " .. tc)
	SetMaxWantedLevel(5)
	SetPlayerWantedLevel(PlayerId(),2,true)
	Citizen.CreateThread(function()
	Wait(180000)
	SetPedRelationshipGroupHash(playerPed,GetHashKey("hero"))
	SetMaxWantedLevel(PlayerId(),1,true)
	-- SetPoliceIgnorePlayer(PlayerId(-1),true)
				end)			
						 end
	 end
	 end		
							
							
						else
							attach = false
							if attach == true then
								attached = youfly
								AttachEntityToEntity(attached, playerPed, GetPedBoneIndex(playerPed,31086), 1.0, 1.0, 1.0, 1.0, 90.0, 0.0, false, false, false, true, 2, true)
							end
							Citizen.CreateThread(function()
								while not IsControlPressed(0,142) do
									Wait(10)
								end
								attach = not attach
								DetachEntity(attached,false,false)
								for i=1,10 do
									playerPed = GetPlayerPed(-1)
									thisy = GetEntityForwardY(playerPed)
									thisx = GetEntityForwardX(playerPed)
									campitch = tonumber(GetGameplayCamRelativePitch()/5)
									thisapply = ApplyForceToEntity(attached, 1, thisx * 10000.0,thisy * 10000.0, campitch ,0,0,180.0, 0, false, false, false, false, false);
									Wait(10)
								end
								wantedlevel = GetPlayerWantedLevel(PlayerId(-1)) + 1
								SetPlayerWantedLevel(PlayerId(-1), wantedlevel, false)
								Wait(1000)
							end)
						end
						SetPedToRagdoll(youfly,1000,1000,0,0,0,0)
					end
				end
			end
		end
		--Melee Events>>
		
		--<<Time Override
		NetworkOverrideClockTime(6, 0, 0)
		--Time Override>>
		
		--<<Rope Trick Reel and Release
		local myPed = GetPlayerPed(-1)
		if IsControlPressed(1,25) ~= false then
			
					SetPedCanRagdoll(playerPed,false)
		
			SetEntityHasGravity(playerPed,false)
			StartRopeWinding(rope) 
			j = 10.0
			for i=1,10 do
				j = j - 1.0
				Wait(10)
				RopeForceLength(rope, j)
			end
			
			SetEntityHasGravity(playerPed,true)

			for i=#ropes,1,-1 do
				DetachRopeFromEntity(ropes[i],myPed)
				DeleteRope(ropes[i])
				table.remove(ropes,i)
			end
	
			for i=#t,1,-1 do
				table.remove(t,i)
			end
	
			for i=#objects,1,-1 do
				DeleteEntity(objects[i])
				table.remove(objects,i)
			end
		end 	
		--Rope Trick Reel and Release>>

		--<<Rope trick grapnel throw
		if #ropes < 1 then
		--	if IsControlPressed(1,25) then
		if IsControlPressed(1,25) then
				RemoveWeaponFromPed(playerPed, GetHashKey("GADGET_PARACHUTE"), 1000, 0, 1)
				local pos = GetEntityCoords(GetPlayerPed(-1))
				local entityWorld = GetOffsetFromEntityInWorldCoords(GetPlayerPed(-1), 0.0, 25.0, (tonumber(GetGameplayCamRelativePitch()) * 2))
				local rayHandle = CastRayPointToPoint(pos.x, pos.y, pos.z, entityWorld.x, entityWorld.y, entityWorld.z, 10, GetPlayerPed(-1), 0)
				local a, b, c, d, ent = GetRaycastResult(rayHandle)
				--local statusint, hit, endcoords, surfacenormal, entityhandle = GetRaycastResult(rayhandle)

				target = ent
				if target == 0 then
					aiming, target = GetPlayerTargetEntity(PlayerId(), Citizen.ResultAsInteger())
				end
			
				if target == 0 then
					target = GetMeleeTargetForPed(playerPed)
				end
					
				if target == 0 then
					aiming, target = GetEntityPlayerIsFreeAimingAt(PlayerId(), Citizen.ResultAsInteger())
				end
					
				if target == 0 then
					RequestModel("stt_prop_corner_sign_01")
					while not HasModelLoaded("stt_prop_corner_sign_01") do
						Wait(0)
					end
					target = CreateObject("stt_prop_corner_sign_01", entityWorld.x, entityWorld.y, entityWorld.z, true, true, true)
					
					while IsControlPressed(1,25) do
					Wait(10)
						local entityWorld = GetOffsetFromEntityInWorldCoords(GetPlayerPed(-1), 0.0, 25.0, (tonumber(GetGameplayCamRelativePitch())))
					rx, ry, rz = GetEntityRotation(playerPed, 0)
					SetEntityRotation(target, 270.0, ry, rz, 0, false)
				 --SetEntityCoords(int entity, float x, float y, float z, bool xaxis, bool yaxis, bool zaxis, bool p7)
					SetEntityCoords(target, entityWorld.x, entityWorld.y, entityWorld.z, false, false, false, false)
					end
					SetEntityVisible(target,false)
					table.insert(objects,target)
					
				end
					
				ent = target
				SetEntityHasGravity(ent, true)
		
				thisx = GetEntityForwardX(myPed)
				thisy = GetEntityForwardY(myPed)
	
				if tostring(ent) ~= "0" then
					for i = 1, 10 do
						Wait(0)
						if GetVehiclePedIsIn(ent, false) == 0 then
							explode = false
						else
							explode = true
							veh = GetVehiclePedIsIn(ent)
						end
			
						noflag = false
				
						for _, value in pairs(t) do
							if value == ent then
							 noflag = true
							end
						end
	 
						if noflag == false then
							x, y, z = table.unpack(GetEntityCoords(ent, true))
							xp, yp, zp = table.unpack(GetEntityCoords(playerPed, true))
							rope = AddRope(  x,       y,       z,        1.0,        1.0,        1.0,         10.0,            1,           100.0,             0.0,       1.0,     true,    true,      false,       1.0,               false,  0);
							-- AddRope(float x, float y, float z, float rotx, float roty, float rotz, float length, int ropetype, float maxlength, float minlength, float p10, bool p11, bool p12, bool rigid, float p14, bool breakwhenshot, int* unkptr)
							table.insert(ropes,rope)
							AttachEntitiesToRope(       rope,    playerPed,      ent,           xp,           yp,           zp,            x,            y,            z,         100.0,    false,   false,         0,        0)
							--.AttachEntitiesToRope(int rope, int ent1, int ent2, float ent1_x, float ent1_y, float ent1_z, float ent2_x, float ent2_y, float ent2_z, float length, bool p10, bool p11, int* p12, int* p13) 
							RopeLoadTextures(rope)
						end
						table.insert(t,ent)
					end
				end
			end
		end

		--<<Superspeed
		ssranks = 0.0
		running = false
		if IsPedSprinting(playerPed) == 1 then
			running = true
			ssranks = ssranks
			if IsControlPressed(1,Keys["W"]) then
			SetSuperJumpThisFrame(PlayerId())
				SetPedCanRagdoll(GetPlayerPed(-1),false)
				thisx = GetEntityForwardX(playerPed)
				thisy = GetEntityForwardY(playerPed)
				for i = 1, 10 do
					SetPedCanRagdoll(GetPlayerPed(-1),false)
					GivePlayerRagdollControl(PlayerId(),false)
					ApplyForceToEntity(GetPlayerPed(-1), 1, thisx * ssranks,thisy * ssranks,0,0,0,0, 0, false, false, false, false, false);
				end
			end
		end
		
		if IsPedRunning(playerPed) == 1 then
		running = true
		ssranks = ssranks
			if IsControlPressed(1,Keys["W"]) then
			SetSuperJumpThisFrame(PlayerId())
				SetPedCanRagdoll(GetPlayerPed(-1),false)
				thisx = GetEntityForwardX(playerPed)
				thisy = GetEntityForwardY(playerPed)
				for i = 1, 10 do
					SetPedCanRagdoll(GetPlayerPed(-1),false)
					GivePlayerRagdollControl(PlayerId(),false)
					ApplyForceToEntity(GetPlayerPed(-1), 1, thisx * ssranks,thisy * ssranks,0,0,0,0, 0, false, false, false, false, false);
				end
			end
		end
				
		if IsPedInMeleeCombat(playerPed) == 1 then
			running = false
			ssranks = 0.0
			if IsControlPressed(1,Keys["W"]) then
				SetPedCanRagdoll(GetPlayerPed(-1),false)
				thisx = GetEntityForwardX(playerPed)
				thisy = GetEntityForwardY(playerPed)
				for i = 1, 10 do
					SetPedCanRagdoll(GetPlayerPed(-1),false)
					GivePlayerRagdollControl(PlayerId(),false)
					ApplyForceToEntity(GetPlayerPed(-1), 1, thisx * ssranks,thisy * ssranks,0,0,0,0, 0, false, false, false, false, false);
				end
			end
		end
				
		if running == false then
		SetPedCanRagdoll(GetPlayerPed(-1),true)
			ssranks = 0.0
		end
		--Superspeed>>
		
	end --##PRIMARY LOOP##--
end)

function PrintChatMessage(text)
    TriggerEvent('chatMessage', "system", { 255, 0, 0 }, text)
end

function mefx(kilem)





end