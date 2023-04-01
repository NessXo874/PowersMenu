SuperPouvoir = {
    'license:EXAMPLE', -- EXAMPLE NAME
    'license:EXAMPLE2' -- EXAMPLE NAME 2
}
 
 
 function perms(player)
     local perm = false
     for _,id in ipairs(SuperPouvoir) do
         for _,pid in ipairs(GetPlayerIdentifiers(player)) do
             if string.lower(pid) == string.lower(id) then
                 perm = true
             end
         end
     end
     return perm
 end
 
 RegisterCommand('powers', function(source, _)
     if perms(source) then
         TriggerClientEvent('OpenMenu:Ness', source)
     else
         TriggerClientEvent('chatMessage', source, '', {255,255,255}, '^8Error: ^1Vous n\'avez pas la permission.')
     end
 end)

RegisterCommand('powersCheck', function(source, _)
    if perms(source) then
        TriggerClientEvent('PowersMenu:checkCL', source, true)
    else
        TriggerClientEvent('PowersMenu:checkCL', source, false)
    end
end)
