RegisterCommand('coords', function(source, args, rawCommand)
    
    local name = args[1]
    if name == nil then name = "Location" end
    TriggerClientEvent("SaveCoords", -1, name )
end)



RegisterServerEvent("WriteCoords")
AddEventHandler("WriteCoords", function( name, x , y , z )
 file = io.open("MyCoords.txt", "a")
    if file then
        file:write( name .. " = { " .. x .. " , " .. y .. " , " .. z .. " }, \n")
    end
    file:close()
end)