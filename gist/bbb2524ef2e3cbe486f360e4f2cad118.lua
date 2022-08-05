-- this is a logger, it doesn't log ur ip or some sensitive shit so.. yeah...
-- anyways the webhook is deleted so it doen't work
-- source:

--[[
local plr = game.Players.LocalPlayer
local OSTime = os.time()
local Time = os.date('!*t', OSTime)

local function getexploit()
	local exploit =
		(syn and not is_sirhurt_closure and not pebc_execute and "Synapse X") or 
		(isexecutorclosure and "Script-Ware V2") or
		(secure_load and "Sentinel") or
		(is_sirhurt_closure and "SirHurt V4") or
		(pebc_execute and "ProtoSmasher") or
		(KRNL_LOADED and "Krnl") or
		(WrapGlobal and "WeAreDevs") or
		(isvm and "Proxo") or
		(shadow_env and "Shadow") or
		(jit and "EasyExploits") or
		(getreg()['CalamariLuaEnv'] and "Calamari") or
		(unit and "Unit") or
		("Error en la deteccion")
	return exploit
end
local Content = '@everyone | __**MalwareHub Executed**__'
local Embed = {
	["title"] = "__**New execution.**__",
	["description"] = "Name: "..plr.Name.."\nAltName: "..plr.Character.Name.."\nDisplay Name: "..plr.DisplayName.."\nExploit: "..getexploit().."\nGame: https://www.roblox.com/games/"..game.PlaceId.."\nServer: "..game.JobId,
	["type"] = "rich",
	["color"] = tonumber(0x6FA8DC),
	["thumbnail"] = {
		["url"] = "https://www.roblox.com/asset-thumbnail/image?assetId="..game.PlaceId.."&width=768&height=432"
	},
	["image"] = {
		["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=250&y=250&Format=Png&username="..plr.Name
	},
	["fields"] = {
		{
			["name"] = "__Account Age:__",
			["value"] = plr.AccountAge.." days old",
			["inline"] = true
		},
		{
			["name"] = "__Profile ID:__",
			["value"] = ("https://www.roblox.com/users/"..plr.UserId.."/profile"),
			["inline"] = true
		}
	},
	["footer"] = {
		["text"] = "CalixHub",
		["icon_url"] = "https://cdn.discordapp.com/attachments/931208519783428158/942282536623697980/67_sin_titulo_20220127142724.png"
	},
	["timestamp"] = string.format('%d-%d-%dT%02d:%02d:%02dZ', Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec),
};
(syn and syn.request or http_request or http.request) {
	Url = 'https://discord.com/api/webhooks/970636912337494016/mpMQHdPQqybLv9ZcvNIFE11w7AdYqQKNMmYuxFC8zEiwMC5l92a8_9RXn5J9KQr7cwec';
	Method = 'POST';
	Headers = {
		['Content-Type'] = 'application/json';
	};
	Body = game:GetService'HttpService':JSONEncode({content = Content; embeds = {Embed}; });
};
wait()
]]