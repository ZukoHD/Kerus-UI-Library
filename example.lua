-- Get the actual library
local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/ZukoHD/Kerus-UI-Library/main/library.lua",true))()

-- Create a window and buttons
Window = lib:CreateWindow('Showcase Hub')
button1 = Window:CreateButton('Notification', function()
    -- Define function
	notif = lib:Notify('Notification from Kerus!')
    wait(4)
    notif:Delete()
end)

-- Same above for the rest
button2 = Window:CreateButton('Change Name', function()
	Window:Edit('Name Changed!')
    wait(4)
    Window:Edit('Showcase Hub')
end)
button3 = Window:CreateButton('Change Button Name', function()
	button3:Edit('Name Changed!')
    wait(4)
    button3:Edit('Change Button Name')
end)

