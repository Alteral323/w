local list = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://raw.githubusercontent.com/Alteral323/w/main/list.json", true))
local sha = loadstring(game:HttpGet("https://raw.githubusercontent.com/Alteral323/w/main/sha.lua"))()
local cache = {}
local find = function(tab, obj)
    for _, v in pairs(tab) do
        if v == obj or type(v) == "table" and table.find(v, obj) then
            return v
        end
    end
    return nil
end
local create = function(str)
    return sha.sha512(tostring(str) .. "VC")
end
local hash = function(str)
    str = tostring(str)
    if cache[str] == nil then
        cache[str] = create(str)
    end
    return cache[str] or ""
end
return {
    check = function(plr)
        return find(list, hash(plr.UserId))
    end,
    make = create
}
