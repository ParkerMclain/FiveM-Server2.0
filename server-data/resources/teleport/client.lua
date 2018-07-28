-- Shows a notification on the player's screen 
function ShowNotification( text )
        SetNotificationTextEntry("STRING")
        AddTextComponentSubstringPlayerName(text)
        DrawNotification(false, false)
    end
    
    RegisterCommand('tp', function(source, args, rawCommand)


        local playerPed = GetPlayerPed(-1)
	local WaypointHandle = GetFirstBlipInfoId(8)
	if DoesBlipExist(WaypointHandle) then
		local coord = Citizen.InvokeNative(0xFA7C7F0AADF25D09, WaypointHandle, Citizen.ResultAsVector())
		SetEntityCoords(playerPed, coord.x, coord.y, coord.z+50)
	end


    end)