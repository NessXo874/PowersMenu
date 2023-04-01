
-- 

Player = PlayerPedId()
explm = false
sj = false
SuS = false
SuSM = 1.49
explb = false
force = 'att'
sst = false
hvc = nil
rHV = 255
gHV = 255
bHV = 255
fly = false
isSkyfall = false
skyfall = false
FollowCamMode = false
FlyS = 5
FlyMode = 'land'
Pcap = 5
permCL = false

-- Menu

lib.registerContext({
    -- Main
    id = 'pw',
    title = 'Powers Menu',
    options = {
        {
            title = 'Self',
            menu = 'self',
            description = 'Powers that affect yourself'
        },
		{
            title = 'Weapons',
            menu = 'w',
            description = 'Powers that affect your weapons'
        },
		{
            title = 'Settings',
            menu = 's',
            description = 'Menu settings'
        }
    },
    -- Self
    {
        id = 'self',
        title = 'Self options',
        menu = 'pw',
        options = {
            {
                title = 'Invinsible',
                description = 'Set yourself invincible',
                arrow = false,
				icon = 'heart',
                event = 'PowersMenu:SetInvincible'
            },
            {
                title = 'No ragdoll',
                description = 'Disable the ragdoll possibility',
                arrow = false,
				icon = 'universal-access',
                event = 'PowersMenu:SetNR'
            },
			{
				title = 'Forces',
				menu = 'fo',
				icon = 'hand',
				description = 'Forces'
			},
			{
                title = 'Super strength',
                description = 'Enable super strength',
				menu = 'ss',
				icon = 'hand'
            },
			{
                title = 'Explosive melee',
                description = 'Enable explosive melee',
				arrow = false,
				disabled = false,
				icon = 'hand',
				event = 'PowersMenu:ExplM'
            },
			{
                title = 'Super jump',
                description = 'Enable super jump',
				arrow = false,
				icon = 'universal-access',
				event = 'PowersMenu:SJ'
            },
			{
                title = 'Super speed',
                description = 'Enable super speed',
				arrow = false,
				icon = 'universal-access',
				event = 'PowersMenu:SuS'
            },
			{
				title = 'Page 2',
				description = 'Go to page 2',
				menu = 'self2'
			}
        },
    },
	-- Super strenght
	{
        id = 'ss',
        title = 'Super strenght',
        menu = 'self',
        options = {
            {
                title = 'Default',
                description = 'Back to default strenght',
                arrow = false,
                event = 'PowersMenu:SuperKickD'
            },
			{
                title = 'X 10',
                description = 'Multiply your strenght',
                arrow = false,
                event = 'PowersMenu:SuperKick10'
            },
			{
                title = 'X 50',
                description = 'Multiply your strenght',
                arrow = false,
                event = 'PowersMenu:SuperKick50'
            },
			{
                title = 'X 100',
                description = 'Multiply your strenght',
                arrow = false,
                event = 'PowersMenu:SuperKick100'
            },
			{
                title = 'X 500',
                description = 'Multiply your strenght',
                arrow = false,
                event = 'PowersMenu:SuperKick500'
            },
			{
                title = 'X 800',
                description = 'Multiply your strenght',
                arrow = false,
                event = 'PowersMenu:SuperKick800'
			},
			{
                title = 'X 1000',
                description = 'Multiply your strenght',
                arrow = false,
                event = 'PowersMenu:SuperKick1000'
			}
        },
    },
	{
		id = 'w',
    	title = 'Weapons',
		menu = 'pw',
    	options = {
        	{
                title = 'Explosive bullets',
                description = 'Set your bullets explosive',
                arrow = false,
                event = 'PowersMenu:ExplB'
			}
    	},
	},
	{
		id = 's',
    	title = 'Settings',
		menu = 'pw',
    	options = {
        	{
                title = 'Explosive bullets',
                description = 'Set your bullets explosive',
                arrow = false,
                event = 'PowersMenu:ExplB'
			}
    	},
	},
	{
		id = 'fo',
    	title = 'Forces',
		menu = 'self',
    	options = {
        	{
                title = 'Force',
                description = 'Enable jedi force',
                arrow = false,
				icon = 'hand',
                event = 'PowersMenu:StartForce'
            },
			{
                title = 'Force field',
                description = 'Enable force field',
                arrow = false,
				icon = 'hand',
                event = 'PowersMenu:StartForcef'
            },
			{
                title = 'Magnet mode',
                description = 'Enable magnet',
                arrow = false,
				icon = 'hand',
                event = 'PowersMenu:StartForce2'
            }
    	},
	},
	{
		id = 'hv',
    	title = 'Heat vision',
		menu = 'self2',
    	options = {
        	{
				title = 'Heat vision',
				description = 'Enable heat vision',
				icon = 'eye',
				event = 'PowersMenu:HVT'
			},
			{
				title = 'Heat vision color',
				description = 'Choose heat vision color',
				icon = 'eye',
				menu = 'hvc'
			}
    	},
	},
	{
		id = 'self2',
    	title = 'Self',
		menu = 'self',
    	options = {
        	{
				title = 'Heat vision',
				description = 'Enable heat vision',
				menu = 'hv',
				icon = 'eye'
			},
			{
				title = 'Opacity',
				description = 'Change your player opacity',
				menu = 'op',
				icon = 'user'
			},
			{
				title = 'Fly',
				description = 'Enable the fly ability',
				event = 'PowersMenu:FLY',
				icon = 'plane'
			}
    	},
	},
	{
		id = 'hvc',
    	title = 'Heat vision',
		menu = 'hv',
    	options = {
			{
				title = 'Reset',
				description = 'back to default',
				icon = 'eye',
				event = 'PowersMenu:HVD'
			},
        	{
				title = 'Red',
				description = 'red',
				icon = 'eye',
				event = 'PowersMenu:HVR'
			},
			{
				title = 'Green',
				description = 'green',
				icon = 'eye',
				event = 'PowersMenu:HVG'
			},
			{
				title = 'Blue',
				description = 'blue',
				icon = 'eye',
				event = 'PowersMenu:HVB'
			},
			{
				title = 'White',
				description = 'white',
				icon = 'eye',
				event = 'PowersMenu:HVW'
			},
			{
				title = 'Black',
				description = 'Black',
				icon = 'eye',
				event = 'PowersMenu:HVBL'
			}
    	},
	},
	{
		id = 'op',
    	title = 'Opacity',
		menu = 'self2',
    	options = {
        	{
				title = '100 %',
				description = 'Set the default opacity',
				icon = 'user',
				event = 'PowersMenu:OP100',
				args = { percent = 100 }
			},
			{
				title = '80 %',
				description = 'Set the default opacity',
				icon = 'user',
				event = 'PowersMenu:OP80',
				args = { percent = 80 }
			},
			{
				title = '60 %',
				description = 'Set the default opacity',
				icon = 'user',
				event = 'PowersMenu:OP60',
				args = { percent = 60 }
			},
			{
				title = '40 %',
				description = 'Set the default opacity',
				icon = 'user',
				event = 'PowersMenu:OP40',
				args = { percent = 40 }
			},
			{
				title = '20 %',
				description = 'Set the default opacity',
				icon = 'user',
				event = 'PowersMenu:OP20',
				args = { percent = 20 }
			},
			{
				title = '0 %',
				description = 'Set the default opacity',
				icon = 'user',
				event = 'PowersMenu:OP',
				args = { percent = 0 }
			}
    	},
	}
})

RegisterCommand('unfreeze', function(source, args)
	FreezeEntityPosition(PlayerPedId(), false)
end)

-- function

function LoadAnim(dict)
	while not HasAnimDictLoaded(dict) do
	  RequestAnimDict(dict)
	  Wait(10)
	end
end

function TaskCancel(time)
	Citizen.Wait(time)
	ClearPedTasksImmediately(Player)
end

-- Events

RegisterNetEvent('PowersMenu:SetInvincible')
AddEventHandler('PowersMenu:SetInvincible', function()
    if GetEntityCanBeDamaged(Player) then
        SetEntityCanBeDamaged(Player, false)
		SetEntityProofs(Player, true, true, true, true, true, true, 1, true)
        lib.notify({
            title = 'Invincibility activated',
            description = 'success',
            type = 'success'
        })
    else
        SetEntityCanBeDamaged(Player, true)
		SetEntityProofs(Player, false, false, false, false, false, false, 1, false)
        lib.notify({
            title = 'Invincibility disabled',
            description = 'success',
            type = 'error'
        })
    end
end)

RegisterNetEvent('PowersMenu:SetNR')
AddEventHandler('PowersMenu:SetNR', function()
    if CanPedRagdoll(Player) then
        SetPedCanRagdoll(Player, false)
        lib.notify({
            title = 'no ragdoll activated',
            description = 'success',
            type = 'success'
        })
    else
        SetPedCanRagdoll(Player, true)
        lib.notify({
            title = 'no ragdoll disabled',
            description = 'success',
            type = 'error'
        })
    end
end)

RegisterNetEvent('PowersMenu:StartForce')
AddEventHandler('PowersMenu:StartForce', function()
    ForceMod()
end)

RegisterNetEvent('PowersMenu:StartForcef')
AddEventHandler('PowersMenu:StartForcef', function()
    ForceField()
	force = 'el'
	Citizen.Wait(1000)
	ForceField()
end)

RegisterNetEvent('PowersMenu:StartForce2')
AddEventHandler('PowersMenu:StartForce2', function()
    ForceField()
	force = 'att'
	Citizen.Wait(1000)
	ForceField()
end)

RegisterNetEvent('OpenMenu:Ness')
AddEventHandler('OpenMenu:Ness', function()
    lib.showContext('pw')
end)

AddEventHandler('onResourceStart', function(resourceName)
	ExecuteCommand('powersCheck')
end)  

RegisterNetEvent('PowersMenu:checkCL')
AddEventHandler('PowersMenu:checkCL', function(perm)
    if perm then
		permCL = true
	else
		permCL = false
	end
end)

RegisterCommand("powers2", function(source, args, rawCommand)
	ExecuteCommand("powers")
end)

RegisterCommand("pwFLY", function(source, args)
	ExecuteCommand('powersCheck')
	if permCL then
		TriggerEvent('PowersMenu:FLY')
	end
end)

RegisterCommand("pwFf", function(source, args)
	ExecuteCommand('powersCheck')
	if permCL then
		TriggerEvent('PowersMenu:StartForcef')
	end
end)

RegisterCommand("pwFff", function(source, args)
	ExecuteCommand('powersCheck')
	if permCL then
		TriggerEvent('PowersMenu:StartForce2')
	end
end)

RegisterKeyMapping('powers2', 'Powers Menu', 'keyboard', 'DELETE')
RegisterKeyMapping('pwFLY', 'PW : Fly', 'keyboard', 'K')
RegisterKeyMapping('pwFff', 'PW : Magnet', 'keyboard', 'O')
RegisterKeyMapping('pwFf', 'PW : Force field', 'keyboard', 'I')

RegisterNetEvent("PowersMenu:SuperKickD")
AddEventHandler("PowersMenu:SuperKickD", function()
	N_0x4757f00bc6323cfe(GetHashKey("WEAPON_UNARMED"), 1.49) 
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_HAMMER"), 1.49) 
	lib.notify({
        title = 'super strenght disabled',
        description = 'success',
        type = 'error'
    })
end)

RegisterNetEvent("PowersMenu:SuperKick800")
AddEventHandler("PowersMenu:SuperKick800", function()
	N_0x4757f00bc6323cfe(GetHashKey("WEAPON_UNARMED"), 950.9) 
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_HAMMER"), 1200.9) 
	lib.notify({
        title = 'super strenght activated',
        description = 'success',
        type = 'success'
    })
end)

RegisterNetEvent("PowersMenu:SuperKick10")
AddEventHandler("PowersMenu:SuperKick10", function()
	N_0x4757f00bc6323cfe(GetHashKey("WEAPON_UNARMED"), 14.5) 
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_HAMMER"), 14.9) 
	lib.notify({
        title = 'super strenght activated',
        description = 'success',
        type = 'success'
    })
end)

RegisterNetEvent("PowersMenu:SuperKick50")
AddEventHandler("PowersMenu:SuperKick50", function()
	N_0x4757f00bc6323cfe(GetHashKey("WEAPON_UNARMED"), 70.5) 
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_HAMMER"), 74.5) 
	lib.notify({
        title = 'super strenght activated',
        description = 'success',
        type = 'success'
    })
end)

RegisterNetEvent("PowersMenu:SuperKick100")
AddEventHandler("PowersMenu:SuperKick100", function()
	N_0x4757f00bc6323cfe(GetHashKey("WEAPON_UNARMED"), 145.5) 
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_HAMMER"), 149.5) 
	lib.notify({
        title = 'super strenght activated',
        description = 'success',
        type = 'success'
    })
end)

RegisterNetEvent("PowersMenu:SuperKick500")
AddEventHandler("PowersMenu:SuperKick500", function()
	N_0x4757f00bc6323cfe(GetHashKey("WEAPON_UNARMED"), 740.5) 
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_HAMMER"), 745.5) 
	lib.notify({
        title = 'super strenght activated',
        description = 'success',
        type = 'success'
    })
end)

RegisterNetEvent("PowersMenu:SuperKick1000")
AddEventHandler("PowersMenu:SuperKick1000", function()
	N_0x4757f00bc6323cfe(GetHashKey("WEAPON_UNARMED"), 1497.5) 
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_HAMMER"), 1500.5) 
	lib.notify({
        title = 'super strenght activated',
        description = 'success',
        type = 'success'
    })
end)

RegisterNetEvent("PowersMenu:ExplM")
AddEventHandler("PowersMenu:ExplM", function()
	if explm then
		lib.notify({
			title = 'Explosive melee disabled',
			description = 'success',
			type = 'error'
			})
			explm = false
	else
		lib.notify({
        title = 'Explosive melee activated',
        description = 'success',
        type = 'success'
    	})
		explm = true
	end
end)

RegisterNetEvent("PowersMenu:ExplB")
AddEventHandler("PowersMenu:ExplB", function()
	if explb then
		lib.notify({
			title = 'Explosive bullets disabled',
			description = 'success',
			type = 'error'
			})
			explb = false
	else
		lib.notify({
        title = 'Explosive bullets activated',
        description = 'success',
        type = 'success'
    	})
		explb = true
	end
end)

RegisterNetEvent("PowersMenu:SuS")
AddEventHandler("PowersMenu:SuS", function()

	if SuS then
		SuS = false
		TriggerEvent("PowersMenu:SuSd")
	else
		SuS = true
	lib.notify({
        title = 'super speed activated',
        description = 'success',
        type = 'success'
    	})
	end
	
	end)

RegisterNetEvent("PowersMenu:SuSd")
AddEventHandler("PowersMenu:SuSd", function()
	SetPedMoveRateOverride(PlayerId(),1.0)
	SetRunSprintMultiplierForPlayer(PlayerId(),1.0)
		lib.notify({
			title = 'super speed disabled',
			description = 'success',
			type = 'error'
			})
	
end)

RegisterNetEvent("PowersMenu:SJ")
AddEventHandler("PowersMenu:SJ", function()
	if sj then
		lib.notify({
			title = 'super jump disabled',
			description = 'success',
			type = 'error'
			})
			sj = false
	else
		lib.notify({
        title = 'super jump activated',
        description = 'success',
        type = 'success'
    	})
		sj = true
	end
end)

RegisterNetEvent("PowersMenu:HVT")
AddEventHandler("PowersMenu:HVT", function()
	if sst then
		SetSeethrough(false)
		sst = false
	elseif sst == false then
		SetSeethrough(true)
		sst = true
	end
end)

RegisterNetEvent("PowersMenu:HVD")
AddEventHandler("PowersMenu:HVD", function()
	SeethroughReset()
end)

RegisterNetEvent("PowersMenu:HVR")
AddEventHandler("PowersMenu:HVR", function()
	SeethroughSetColorNear(255, 0, 0)
end)

RegisterNetEvent("PowersMenu:HVG")
AddEventHandler("PowersMenu:HVG", function()
	SeethroughSetColorNear(0, 255, 0)
end)

RegisterNetEvent("PowersMenu:HVB")
AddEventHandler("PowersMenu:HVB", function()
	SeethroughSetColorNear(0, 0, 255)
end)

RegisterNetEvent("PowersMenu:HVW")
AddEventHandler("PowersMenu:HVW", function()
	SeethroughSetColorNear(255, 255, 255)
end)

RegisterNetEvent("PowersMenu:HVBL")
AddEventHandler("PowersMenu:HVBL", function()
	SeethroughSetColorNear(0, 0, 0)
end)

RegisterNetEvent('PowersMenu:FLY')
AddEventHandler('PowersMenu:FLY', function()
	if fly then
		fly = false
		lib.hideTextUI()
		RemoveWeaponFromPed(Player, 'gadget_parachute')
		SetEntityCoords(Player, GetEntityCoords(Player), 0.0, 0.0, 0.0, false)
		FreezeEntityPosition(Player, false)
		DisableControlAction(0, 32, true)
		TaskCancel(0)
	elseif fly == false then
		fly = true
		SetEntityCoords(Player, GetEntityCoords(Player).x, GetEntityCoords(Player).y, GetEntityCoords(Player).z + 1.0, 0.0, 0.0, 0.0, false)
		TaskStartScenarioInPlace(Player, 'WORLD_HUMAN_COP_IDLES', 0, false)
	end
end)

RegisterNetEvent('PowersMenu:OP')
AddEventHandler('PowersMenu:OP', function()
	SetEntityAlpha(Player, 0, true)
	print('e')
end)

RegisterNetEvent('PowersMenu:OP20')
AddEventHandler('PowersMenu:OP', function()
	SetEntityAlpha(Player, 51, true)
end)

RegisterNetEvent('PowersMenu:OP40')
AddEventHandler('PowersMenu:OP', function()
	SetEntityAlpha(Player, 102, true)
end)

RegisterNetEvent('PowersMenu:OP60')
AddEventHandler('PowersMenu:OP', function()
	SetEntityAlpha(Player, 153, true)
end)

RegisterNetEvent('PowersMenu:OP80')
AddEventHandler('PowersMenu:OP', function()
	SetEntityAlpha(Player, 204, true)
end)

RegisterNetEvent('PowersMenu:OP100')
AddEventHandler('PowersMenu:OP', function()
	ResetEntityAlpha(Player)
end)

function StartParticle(dict, particle, bone, xOff, yOff, zOff, xRot, yRot, zRot)
	-- Request the particle dictionary.
	RequestNamedPtfxAsset(dict)
	-- Wait for the particle dictionary to load.
	while not HasNamedPtfxAssetLoaded(dict) do
		Citizen.Wait(0)
	end
	-- Tell the game that we want to use a specific dictionary for the next particle native.
	UseParticleFxAssetNextCall(dict)
	-- Create a new non-looped particle effect, we don't need to store the particle handle because it will
	-- automatically get destroyed once the particle has finished it's animation (it's non-looped).
	return StartParticleFxLoopedOnEntityBone(particle, Player, xOff, yOff, zOff, xRot, yRot, zRot, bone, 3.0, false, false, false)
end

-- Threads

Citizen.CreateThread(function()
	while true do
		if fly then
			lib.showTextUI('Mode : '..FlyMode)
			DisableAllControlActions()
            EnableControlAction(0, 1, true)
            EnableControlAction(0, 2, true)
			local CamRot = GetGameplayCamRot(2)
			local Fx = -( math.sin(math.rad(CamRot.z)) * FlyS*10 )
			local Fy = ( math.cos(math.rad(CamRot.z)) * FlyS*10 )
			local Fz = FlyS * (CamRot.x*0.2)
			LoadAnim('missminuteman_1ig_2')
			-- movement
			if IsDisabledControlJustPressed(0, 21) then
				if FlyMode == 'land' then
					FlyMode = 'fast'
				elseif FlyMode == 'fast' then
					FlyMode = 'land'
				end
			end
			if FlyMode == 'land' then
				SetEntityRotation(Player, GetGameplayCamRot(2).x, GetGameplayCamRot(2).y, GetGameplayCamRot(2).z, 0, false)
				FlyS = 5
			elseif FlyMode == 'fast' then
				SetEntityRotation(Player, GetGameplayCamRot(2).x, GetGameplayCamRot(2).y, GetGameplayCamRot(2).z, 0, false)
				FlyS = 20
			end
			FreezeEntityPosition(Player, true)
			-- front
			if IsDisabledControlPressed(0, 32) then
				FreezeEntityPosition(Player, false)
				ApplyForceToEntity(Player, 3, Fx, Fy, Fz, 0.0, 0.0, 0.0, 0, false, true, true, false, true)
				if FlyMode == 'fast' then
					--AUDIO::PLAY_SOUND_FRONTEND(-1, "Grab_Parachute", "BASEJUMPS_SOUNDS", 1)
					PlaySoundFromEntity(-1, "Falling_Crates", Player, "EXILE_1", true, 0)
					SetEntityRotation(Player, GetGameplayCamRot(2).x - 90, GetGameplayCamRot(2).y, GetGameplayCamRot(2).z, 0, false)
					TaskPlayAnim(Player, 'missminuteman_1ig_2', 'handsup_base', 2.0, 2.0, -1, 1, 0, false, false, false)
					StartParticle('core', 'ped_parachute_trail', 28422, 0.45, 0.0, 0.2, 0.0, 0.0, 0.0)
					StartParticle('core', 'ped_parachute_trail', 28422, -0.45, 0.0, 0.2, 0.0, 0.0, 0.0)
					StartParticle('core', 'ped_parachute_trail', 28422, -0.17, 0.0, -0.95, 0.0, 0.0, 0.0)
					StartParticle('core', 'ped_parachute_trail', 28422, 0.25, 0.0, -0.95, 0.0, 0.0, 0.0)
				end
			end
			if IsDisabledControlJustReleased(0, 32) then
				FreezeEntityPosition(Player, true)
				TaskCancel(0)
				StopSound(-1)
				RemoveParticleFxFromEntity(Player)
				TaskStartScenarioInPlace(Player, 'WORLD_HUMAN_COP_IDLES', 0, false)
			end
			--back
			if IsDisabledControlPressed(0, 33) then
				FreezeEntityPosition(Player, false)
				ApplyForceToEntity(Player, 3, -Fx, -Fy, -Fz, 0.0, 0.0, 0.0, 0, false, true, true, false, true)
				if FlyMode == 'fast' then
					SetEntityRotation(Player, GetGameplayCamRot(2).x - 90, GetGameplayCamRot(2).y, GetGameplayCamRot(2).z, 0, false)
					TaskPlayAnim(Player, 'missminuteman_1ig_2', 'handsup_base', 2.0, 2.0, -1, 1, 0, false, false, false)
					StartParticle('core', 'ped_parachute_trail', 28422, 0.45, 0.0, 0.2, 0.0, 0.0, 0.0)
					StartParticle('core', 'ped_parachute_trail', 28422, -0.45, 0.0, 0.2, 0.0, 0.0, 0.0)
					StartParticle('core', 'ped_parachute_trail', 28422, -0.17, 0.0, -0.95, 0.0, 0.0, 0.0)
					StartParticle('core', 'ped_parachute_trail', 28422, 0.25, 0.0, -0.95, 0.0, 0.0, 0.0)
				end
			end
			if IsDisabledControlJustReleased(0, 33) then
				FreezeEntityPosition(Player, true)
				TaskCancel(0)
				RemoveParticleFxFromEntity(Player)
				TaskStartScenarioInPlace(Player, 'WORLD_HUMAN_COP_IDLES', 0, false)
			end
			-- col
			if HasEntityCollidedWithAnything(Player) then
				fly = false
				FreezeEntityPosition(Player, false)
				SetEntityCoords(Player, GetEntityCoords(Player) - 0.5, 0.0, 0.0, 0.0, false)
				lib.hideTextUI()
				RemoveParticleFxFromEntity(Player)
				TaskCancel(0)
				PlaySoundFromEntity(-1, "1st_Person_Transition", Player, "PLAYER_SWITCH_CUSTOM_SOUNDSET", true, 0)
				TaskStartScenarioInPlace(Player, 'CODE_HUMAN_MEDIC_TEND_TO_DEAD', 0, false)
				TaskCancel(1000)
			end
		end
		Citizen.Wait(0)
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if explm then
			if GetSelectedPedWeapon(Player) == GetHashKey('WEAPON_UNARMED') then
				local HasShoot, ImpactLoc = GetPedLastWeaponImpactCoord(PlayerPedId())
                if HasShoot then
                    AddExplosion(ImpactLoc.x, ImpactLoc.y, ImpactLoc.z, 2, 100000.0, true, false, 0)
                end
			else

			end
		else
		end
		if sj then
			SetSuperJumpThisFrame(PlayerId())
		end
		if SuS then
		SetPedMoveRateOverride(PlayerId(),10.0)
		SetRunSprintMultiplierForPlayer(PlayerId(), 1.49)
		else
		end
		if explb then
			if GetSelectedPedWeapon(Player) == GetHashKey('weapon_pistol') or 
			GetHashKey('weapon_pistol_mk2') or GetHashKey('weapon_combatpistol') or 
			GetHashKey('weapon_appistol') or GetHashKey('weapon_pistol50') or 
			GetHashKey('weapon_snspistol') or GetHashKey('weapon_snspistol_mk2') or 
			GetHashKey('weapon_heavypistol') or GetHashKey('weapon_vintagepistol') or 
			GetHashKey('weapon_marksmanpistol') or GetHashKey('weapon_revolver') or 
			GetHashKey('weapon_revolver_mk2') or GetHashKey('weapon_doubleaction') or 
			GetHashKey('weapon_ceramicpistol') or GetHashKey('weapon_navyrevolver') or 
			GetHashKey('weapon_gadgetpistol') or GetHashKey('weapon_microsmg') or
			GetHashKey('weapon_smg') or GetHashKey('weapon_smg_mk2') or 
			GetHashKey('weapon_assaultsmg') or GetHashKey('weapon_combatpdw') or 
			GetHashKey('weapon_machinepistol') or GetHashKey('weapon_minismg') or 
			GetHashKey('weapon_raycarbine') or GetHashKey('weapon_pumpshotgun') or 
			GetHashKey('weapon_pumpshotgun_mk2') or GetHashKey('weapon_sawnoffshotgun') or 
			GetHashKey('weapon_assaultshotgun') or GetHashKey('weapon_bullpupshotgun') or 
			GetHashKey('weapon_musket') or GetHashKey('weapon_heavyshotgun') or 
			GetHashKey('weapon_dbshotgun') or GetHashKey('weapon_autoshotgun') or
			GetHashKey('weapon_combatshotgun') or GetHashKey('weapon_assaultrifle') or 
			GetHashKey('weapon_assaultrifle_mk2') or GetHashKey('weapon_carbinerifle') or 
			GetHashKey('weapon_carbinerifle_mk2') or GetHashKey('weapon_advancedrifle') or 
			GetHashKey('weapon_specialcarbine') or GetHashKey('weapon_specialcarbine_mk2') or 
			GetHashKey('weapon_bullpuprifle') or GetHashKey('weapon_bullpuprifle_mk2') or 
			GetHashKey('weapon_compactrifle') or GetHashKey('weapon_militaryrifle') or 
			GetHashKey('weapon_heavyrifle') or GetHashKey('weapon_tacticalrifle') or 
			GetHashKey('weapon_mg') or GetHashKey('weapon_combatmg') or
			GetHashKey('weapon_combatmg_mk2') or GetHashKey('weapon_gusenberg') or 
			GetHashKey('weapon_sniperrifle') or GetHashKey('weapon_heavysniper') or 
			GetHashKey('weapon_heavysniper_mk2') or GetHashKey('weapon_marksmanrifle') or 
			GetHashKey('weapon_marksmanrifle_mk2') or GetHashKey('weapon_precisionrifle') or 
			GetHashKey('weapon_minigun') or GetHashKey('weapon_rayminigun') then
				local GPLW, GPLWIC = GetPedLastWeaponImpactCoord(PlayerPedId())
                if GPLW then
                    AddExplosion(GPLWIC.x, GPLWIC.y, GPLWIC.z, 2, 100000.0, true, false, 0)
                end
			else
			end
		else
		end
	end
end)

-- test

RegisterCommand("giveweapon", function(source, args, rawCommand)
    local weaponHash = GetHashKey(args[1])
    GiveWeaponToPed(Player, weaponHash, 9999, false, true)
end)

-- force 
local ForceTog = false

local Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178, ["INSERT"] = 121,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118,
	["MOUSE1"] = 24
  }

function ForceMod()
	ForceTog = not ForceTog

	if ForceTog then

	Citizen.CreateThread(function()
	lib.notify({
            title = 'force activée',
            description = 'press E for use',
            type = 'success'
        })

	local ForceKey = Keys["E"]
	local Force = 0.5
	local KeyPressed = false
	local KeyTimer = 0
	local KeyDelay = 15
	local ForceEnabled = false
	local StartPush = false

	function forcetick()

	if (KeyPressed) then
		KeyTimer = KeyTimer + 1
		if(KeyTimer >= KeyDelay) then
			KeyTimer = 0
			KeyPressed = false
		end
	end



	if IsControlPressed(0, ForceKey) and not KeyPressed and not ForceEnabled then
		KeyPressed = true
		ForceEnabled = true
	end

	if (StartPush) then

		StartPush = false
		local pid = PlayerPedId()
		local CamRot = GetGameplayCamRot(2)

		local force = 5

		local Fx = -( math.sin(math.rad(CamRot.z)) * force*10 )
		local Fy = ( math.cos(math.rad(CamRot.z)) * force*10 )
		local Fz = force * (CamRot.x*0.2)

		local PlayerVeh = GetVehiclePedIsIn(pid, false)

		for k in EnumerateVehicles() do
			SetEntityInvincible(k, false)
			if IsEntityOnScreen(k) and k ~= PlayerVeh then
				ApplyForceToEntity(k, 1, Fx, Fy,Fz, 0,0,0, true, false, true, true, true, true)
			end
		end

		for k in EnumeratePeds() do
			if IsEntityOnScreen(k) and k ~= pid then
				ApplyForceToEntity(k, 1, Fx, Fy,Fz, 0,0,0, true, false, true, true, true, true)
			end
		end

	end


	if IsControlPressed(0, ForceKey) and not KeyPressed and ForceEnabled then
		KeyPressed = true
		StartPush = true
		ForceEnabled = false
	end

	if (ForceEnabled) then
		local pid = PlayerPedId()
		local PlayerVeh = GetVehiclePedIsIn(pid, false)

		Markerloc = GetGameplayCamCoord() + (RotationToDirection(GetGameplayCamRot(2)) * 20)

		DrawMarker(28, Markerloc, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, 180, 0, 0, 35, false, true, 2, nil, nil, false)

		for k in EnumerateVehicles() do
			SetEntityInvincible(k, true)
			if IsEntityOnScreen(k) and (k ~= PlayerVeh) then
				RequestControlOnce(k)
				FreezeEntityPosition(k, false)
				Oscillate(k, Markerloc, 0.5, 0.3)
			end
		end

		for k in EnumeratePeds() do
			if IsEntityOnScreen(k) and k ~= PlayerPedId() then
				RequestControlOnce(k)
				SetPedToRagdoll(k, 4000, 5000, 0, true, true, true)
				FreezeEntityPosition(k, false)
				Oscillate(k, Markerloc, 0.5, 0.3)
			end
		end

	end

	end

	while ForceTog do forcetick() Wait(0) end
end)
else lib.notify({
    title = 'force désactivée',
    description = 'success',
    type = 'error'
}) end

end

function ShowInfo(text)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(text)
	DrawNotification(true, false)
end

function RotationToDirection(rotation)
	local retz = math.rad(rotation.z)
	local retx = math.rad(rotation.x)
	local absx = math.abs(math.cos(retx))
	return vector3(-math.sin(retz) * absx, math.cos(retz) * absx, math.sin(retx))
end

function EnumerateVehicles()
	return EnumerateEntities(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
end

function EnumeratePeds()
	return EnumerateEntities(FindFirstPed, FindNextPed, EndFindPed)
end

function EnumerateObjects()
	return EnumerateEntities(FindFirstObject, FindNextObject, EndFindObject)
end

function EnumeratePickup()
	return EnumerateEntities(FindFirstPickup, FindNextPickup, EndFindPickup)
end

function EnumerateEntities(initFunc, moveFunc, disposeFunc)
	return coroutine.wrap(function()
	  local iter, id = initFunc()
	  if not id or id == 0 then
		disposeFunc(iter)
		return
	  end
  
	  local enum = {handle = iter, destructor = disposeFunc}
	  setmetatable(enum, entityEnumerator)
	  local distance = GetDistanceBetweenCoords(GetEntityCoords(Player), GetEntityCoords(id).x, GetEntityCoords(id).y, GetEntityCoords(id).z, false)
  
	  local next = true
	  repeat
		coroutine.yield(id)
		next, id = moveFunc(iter)
	  until not next or distance < 20.0
  
	  enum.destructor, enum.handle = nil, nil
	  disposeFunc(iter)
	end)
end

function RequestControlOnce(entity)
	if not NetworkIsInSession or NetworkHasControlOfEntity(entity) then
		return true
	end
	SetNetworkIdCanMigrate(NetworkGetNetworkIdFromEntity(entity), true)
	return NetworkRequestControlOfEntity(entity)
end

function Oscillate(entity, position, angleFreq, dampRatio)
	local pos1 = ScaleVector(SubVectors(position, GetEntityCoords(entity)), (angleFreq*angleFreq))
	local pos2 = AddVectors(ScaleVector(GetEntityVelocity(entity), (2.0 * angleFreq * dampRatio)), vector3(0.0, 0.0, 0.1))
	local targetPos = SubVectors(pos1, pos2)

	ApplyForce(entity, targetPos)
end

function ApplyForce(entity, direction)
	ApplyForceToEntity(entity, 3, direction, 0, 0, 0, false, false, true, true, false, true)
end

function SubVectors(vect1, vect2)
	return vector3(vect1.x - vect2.x, vect1.y - vect2.y, vect1.z - vect2.z)
end

function ScaleVector(vect, mult)
	return vector3(vect.x*mult, vect.y*mult, vect.z*mult)
end

function AddVectors(vect1, vect2)
	return vector3(vect1.x + vect2.x, vect1.y + vect2.y, vect1.z + vect2.z)
end


-- force field

function ForceField()
	ForceTogg = not ForceTogg

	if ForceTogg then

	Citizen.CreateThread(function()
	lib.notify({
            title = 'force field activated',
            description = 'press E for use',
            type = 'success'
        })

	local ForceKeyy = Keys["E"]
	local Forcee = 0.5
	local KeyPressedd = false
	local KeyTimerr = 0
	local KeyDelayy = 15
	local ForceEnabledd = false
	local StartPushh = false

	function forcetickk()

	if (KeyPressedd) then
		KeyTimerr = KeyTimerr + 1
		if(KeyTimerr >= KeyDelayy) then
			KeyTimerr = 0
			KeyPressedd = false
		end
	end



	if IsControlPressed(0, ForceKeyy) and not KeyPressedd and not ForceEnabledd then
		KeyPressedd = true
		ForceEnabledd = true
	end

	if (StartPushh) then

		StartPushh = false
		local pidd = PlayerPedId()
		local CamRott = GetGameplayCamRot(2)

		local forcee = 5

		local Fxx = -( math.sin(math.rad(CamRott.z)) * forcee*10 )
		local Fyy = ( math.cos(math.rad(CamRott.z)) * forcee*10 )
		local Fzz = forcee * (CamRott.x*0.2)

		local PlayerVehh = GetVehiclePedIsIn(pidd, false)

		--[[for k in EnumerateVehicles() do
			SetEntityInvincible(k, false)
			if IsEntityOnScreen(k) and k ~= PlayerVehh then
				ApplyForceToEntity(k, 1, Fxx, Fyy,Fzz, 0,0,0, true, false, true, true, true, true)
			end
		end

		for k in EnumeratePeds() do
			if IsEntityOnScreen(k) and k ~= pidd then
				ApplyForceToEntity(k, 1, Fxx, Fxy,Fzz, 0,0,0, true, false, true, true, true, true)
			end
		end]]

	end


	if IsControlPressed(0, ForceKeyy) and not KeyPressedd and ForceEnabledd then
		KeyPressedd = true
		StartPushh = true
		ForceEnabledd = false
	end

	ForceEnabledd = true

	if (ForceEnabledd) then
		local pidd = PlayerPedId()
		local PlayerVehh = GetVehiclePedIsIn(pidd, false)

		Markerlocc = GetGameplayCamCoord() + (RotationToDirection(GetGameplayCamRot(2)) * 20)

	--	DrawMarker(28, Markerloc, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, 180, 0, 0, 35, false, true, 2, nil, nil, false)

		for k in EnumerateVehicles() do
			SetEntityInvincible(k, true)
			if IsEntityOnScreen(k) and (k ~= PlayerVeh) then
				RequestControlOnce(k)
				FreezeEntityPosition(k, false)
				if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), GetEntityCoords(k), true) > 20.0 then
				else
					Oscillate2(k, GetEntityCoords(pidd), 0.5, 0.3, force)
				end
			end
		end

		for k in EnumeratePeds() do
			if IsEntityOnScreen(k) and k ~= PlayerPedId() then
				RequestControlOnce(k)
				SetPedToRagdoll(k, 4000, 5000, 0, true, true, true)
				FreezeEntityPosition(k, false)
				if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), GetEntityCoords(k), true) > 20.0 then
				else
					Oscillate2(k, GetEntityCoords(pidd), 0.3, 0.1, force)
				end
			end
		end

		for k in EnumerateObjects() do
			if IsEntityOnScreen(k) and k ~= PlayerPedId() then
				RequestControlOnce(k)
				SetPedToRagdoll(k, 4000, 5000, 0, true, true, true)
				FreezeEntityPosition(k, false)
				if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), GetEntityCoords(k), true) > 20.0 then
				else
					Oscillate2(k, GetEntityCoords(pidd), 0.3, 0.1, force)
				end
			end
		end

--[[		for k in EnumeratePickup() do
			if IsEntityOnScreen(k) and k ~= PlayerPedId() then
				RequestControlOnce(k)
				SetPedToRagdoll(k, 4000, 5000, 0, true, true, true)
				FreezeEntityPosition(k, false)
				if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), GetEntityCoords(k), true) > 20.0 then
				else
					Oscillate2(k, GetEntityCoords(pidd), 0.3, 0.1)
				end
			end
		end]]

	end

	end

	while ForceTogg do forcetickk() Wait(0) end
end)
else lib.notify({
    title = 'force field disabled',
    description = 'success',
    type = 'error'
}) end

end

function ApplyForce2(entity, direction)
	ApplyForceToEntity(entity, 3, direction, 0, 0, 0, false, false, true, true, false, true)
end

function Oscillate2(entity, position, angleFreq, dampRatio, forcem)
	local pos1 = ScaleVector(SubVectors(position, GetEntityCoords(entity)), (angleFreq*angleFreq))
	local pos2 = AddVectors(ScaleVector(GetEntityVelocity(entity), (1.5 * angleFreq * dampRatio)), vector3(0.0, 0.0, 0.1))
	targetPos = SubVectors(pos2, pos1)
	if forcem == 'el' then
		targetPos = SubVectors(pos2, pos1)
	elseif forcem == 'att' then
		targetPos = SubVectors(pos1, pos2)
	end

	ApplyForce2(entity, targetPos)
end
