AddEventHandler('onClientResourceStart', function()
    Citizen.CreateThread(function()
        Citizen.Wait(3000)

        SendNUIMessage({ 
            action = "setPosition",
            data = {
                position = Config.placement or "top-right",
            }
        })
    end)
end)

function addNotification(type, duration, title, msg)
    payload = {
        title = title or "Notification",
        description = msg or "",
        duration = tonumber(duration) or 5000,
        type = type or "default"
    }
    
    SendNUIMessage({
        type = "addNotification",
        data = payload
    })
end

exports("addNotification", addNotification)

RegisterNetEvent("li_notification:addNotification", function(type, duration, title, msg)
    addNotification(type, duration, title, msg)
end)

if (Config.enableCommand) then
    RegisterCommand("showNotification", function()
        Citizen.CreateThread(function()
            addNotification("success", 5000, "Success Notification", "This is a success notification!")
            Citizen.Wait(50)
            addNotification("error", 5000, "Error Notification", "This is a error notification!")
            Citizen.Wait(50)
            addNotification("warning", 5000, "Warning Notification", "This is a warning notification!")
            Citizen.Wait(50)
            addNotification("info", 5000, "Info Notification", "This is a info notification!")
            Citizen.Wait(50)
            addNotification("default", 5000, "Default Notification", "This is a default notification!")
        end)
    end)
end