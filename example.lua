local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/ZukoHD/Kerus-UI-Library/main/library.lua",true))()

Window = lib:CreateWindow('Example Hub')
button = Window:CreateButton('Example', function()
	notif = lib:Notify('Example works!')
    wait(4)
    notif:Delete()
end)
