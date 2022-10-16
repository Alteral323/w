```lua
local wl = loadstring(game:HttpGet("https://raw.githubusercontent.com/Alteral323/w/main/fetch.lua"))()

-- is player in whitelist
if wl.check(player) then
    -- whitelisted
end

-- make whitelist of userid
wl.make(string)
```
