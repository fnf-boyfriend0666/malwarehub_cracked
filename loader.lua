-- hooks httpget so if the script tries to get scripts from the
-- owner's gists then it redirects to my repository
oldget = hookfunction(game.HttpGet, function(self, url, ...)
	if (typeof(url) == 'string') then -- just in case
		if (url:find('https://gist.githubusercontent.com/H20CalibreYT/')) then
			local hash_shit = string.split(url, '/')[5];
			url = 'https://raw.githubusercontent.com/fnf-boyfriend0666/malwarehub_cracked/main/gist/'.. hash_shit ..'.lua';
		elseif (url == 'https://pastebin.com/raw/MefgwKZL') then
			url = 'https://raw.githubusercontent.com/fnf-boyfriend0666/malwarehub_cracked/main/pastebin/MefgwKZL.lua';
		end
	end
	return oldget(self, url, ...)
end)

-- print('hook set')

-- crack (the whitelist is shit)
local players = game:GetService("Players");
local localPlayer = players.LocalPlayer;

function setTShirt(character)
    if (not localPlayer:HasAppearanceLoaded()) then
        localPlayer.CharacterAppearanceLoaded:Wait()
    end
    local tShirt = character:FindFirstChild("ShirtGraphic");
    if (not tShirt) then
        tShirt = Instance.new("ShirtGraphic", character)
    end
    tShirt.Graphic = "http://www.roblox.com/asset/?id=8699953297"
    return true
end

setTShirt(localPlayer.Character or localPlayer.CharacterAdded:Wait())

localPlayer.CharacterAdded:Connect(setTShirt)

-- print('added t-shirt bullshit')

-- loads the main guis
loadstring(game:HttpGet('https://raw.githubusercontent.com/fnf-boyfriend0666/malwarehub_cracked/main/guis/kohls_vip.lua'))()
loadstring(game:HttpGet('https://raw.githubusercontent.com/fnf-boyfriend0666/malwarehub_cracked/main/guis/ragdoll_engine.lua'))()

-- print('loaded the shit guis')
