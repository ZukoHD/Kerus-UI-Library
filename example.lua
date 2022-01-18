local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/ZukoHD/Kerus-UI-Library/main/library.lua",true))()

button = lib:CreateWindow('Example - ???')
button:CreateButton('Example', function()
	print('example button works')
end)
