if _G.ThunderVersion == "V2" then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ThunderZ-05/HUB/main/Loader"))()
elseif _G.ThunderVersion == "V1" then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ThunderZ-05/HUB/main/ThunderV1"))()
else
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ThunderZ-05/HUB/main/Loader"))()
end