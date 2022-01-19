# Information
Kerus UI Library is a clean and simple UI library made to help you make exploit scripts!
# How to use
If you would like to implement Kerus UI Library into your script, do so by adding this into your script:
```
local <string> = loadstring(game:HttpGet("https://raw.githubusercontent.com/ZukoHD/Kerus-UI-Library/main/library.lua",true))()
```
You now have Kerus UI Library in your script! But to fully add Kerus UI into your script and use it, You must learn the functions of it below.
# Functions And About them/ Documentation
```
local <string> = lib:CreateWindow(<string>)
```
The CreateWindow function has 1 parameter and that paremeter is the title, It is a required parameter. This function's use is to create a window.
```
local notif = lib:Notify(<string>)
```
The Notify function has 1 parameter and that paremeter is the text, It is a required parameter. This function's use is to create a notification.
```
<Window>:Edit(<string>)
```
The Edit function has 1 parameter and that paremeter is the text, It is a required parameter. This function's use is to edit almost anything.
```
local <string> = Window:CreateButton(<string>, function()
    -- Script Here
end)
```
The CreateButton function has 2 parameters and those paremeters are the text and then the function as shown above, All are required parameters. This function's use is to create a button.
# Example
Below will be an example of everything above and will change as more feature are added.
```
-- Get the actual library
local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/ZukoHD/Kerus-UI-Library/main/library.lua",true))()

-- Create a window and buttons
local Window = lib:CreateWindow('Showcase Hub')
local button1 = Window:CreateButton('Notification', function()
    -- Define function
	notif = lib:Notify('Notification from Kerus!')
    wait(4)
    notif:Delete()
end)

-- Same above for the rest
local button2 = Window:CreateButton('Change Name', function()
	Window:Edit('Name Changed!')
    wait(4)
    Window:Edit('Showcase Hub')
end)
local button3 = Window:CreateButton('Change Button Name', function()
	button3:Edit('Name Changed!')
    wait(4)
    button3:Edit('Change Button Name')
end)


```
