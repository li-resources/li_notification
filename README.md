# LI Notification 🔔
A clean and lightweight notification system for FiveM.  
Built to be simple, stylish, and easy to use right out of the box.  

## Features ✨
- Standalone (works with any framework)  
- Minimal and modern UI  
- Easy to configure  
- Actively maintained & supported  

## Installation ⚙️
1. Download or clone this repository  
2. Place the resource in your `resources` folder  
3. Add `ensure li_notification` to your `server.cfg`

## Default Notification
**ESX Legacy**
> Find the `ESX.ShowNotification` function and change it to this:
```
function ESX.ShowNotification(message, notifyType, length)
    return exports.li_notification:addNotification(notifyType, length, nil, message)
end
```

## Credits ⭐
Created and maintained by **LI Resources**.  
Need help? We provide active support — just reach out in our discord (find it in our github readme)!
Thanks for using and supporting our work! ❤️
