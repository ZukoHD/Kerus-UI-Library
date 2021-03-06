local library = {}

function library:CreateWindow(TitleText)
	local Wistful_UI = Instance.new("ScreenGui")
	local Main = Instance.new("Frame")
	local Outerframe1 = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local Outerframe2 = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local UIGradient = Instance.new("UIGradient")
	local Outerframe3 = Instance.new("Frame")
	local UICorner_3 = Instance.new("UICorner")
	local UIGradient_2 = Instance.new("UIGradient")
	local Outerframe4 = Instance.new("Frame")
	local UICorner_4 = Instance.new("UICorner")
	local UICorner_5 = Instance.new("UICorner")
	local Title = Instance.new("TextLabel")
	local Container = Instance.new("Frame")
	local UIGridLayout = Instance.new("UIGridLayout")
	local Close = Instance.new("TextButton")
	local Credit = Instance.new("TextLabel")

	Wistful_UI.Name = "Wistful_UI"
	Wistful_UI.Parent = game.CoreGui
	Wistful_UI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	Wistful_UI.ResetOnSpawn = false

	Main.Name = "Main"
	Main.Parent = Wistful_UI
	Main.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
	Main.BorderSizePixel = 0
	Main.Position = UDim2.new(-0.233, 0,0.859, 0)
	Main.Size = UDim2.new(0, 829, 0, 466)
	local UserInputService = game:GetService("UserInputService")
	local gui = Main
	local dragging
	local dragInput
	local dragStart
	local startPos
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)

	Outerframe1.Name = "Outerframe 1"
	Outerframe1.Parent = Main
	Outerframe1.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	Outerframe1.BorderSizePixel = 0
	Outerframe1.Size = UDim2.new(0, 12, 0, 466)

	UICorner.CornerRadius = UDim.new(0, 16)
	UICorner.Parent = Outerframe1

	Outerframe2.Name = "Outerframe 2"
	Outerframe2.Parent = Main
	Outerframe2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Outerframe2.BorderSizePixel = 0
	Outerframe2.Position = UDim2.new(0, 0, 0.976394832, 0)
	Outerframe2.Size = UDim2.new(0, 829, 0, 11)

	UICorner_2.CornerRadius = UDim.new(0, 16)
	UICorner_2.Parent = Outerframe2

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 4)), ColorSequenceKeypoint.new(0.24, Color3.fromRGB(243, 255, 0)), ColorSequenceKeypoint.new(0.42, Color3.fromRGB(4, 246, 0)), ColorSequenceKeypoint.new(0.65, Color3.fromRGB(0, 221, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 209))}
	UIGradient.Parent = Outerframe2

	Outerframe3.Name = "Outerframe 3"
	Outerframe3.Parent = Main
	Outerframe3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Outerframe3.BorderSizePixel = 0
	Outerframe3.Size = UDim2.new(0, 829, 0, 11)

	UICorner_3.CornerRadius = UDim.new(0, 16)
	UICorner_3.Parent = Outerframe3

	UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 4)), ColorSequenceKeypoint.new(0.24, Color3.fromRGB(243, 255, 0)), ColorSequenceKeypoint.new(0.42, Color3.fromRGB(4, 246, 0)), ColorSequenceKeypoint.new(0.65, Color3.fromRGB(0, 221, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 209))}
	UIGradient_2.Parent = Outerframe3

	Outerframe4.Name = "Outerframe 4"
	Outerframe4.Parent = Main
	Outerframe4.BackgroundColor3 = Color3.fromRGB(255, 0, 209)
	Outerframe4.BorderSizePixel = 0
	Outerframe4.Position = UDim2.new(0.985524774, 0, 0, 0)
	Outerframe4.Size = UDim2.new(0, 12, 0, 466)

	UICorner_4.CornerRadius = UDim.new(0, 16)
	UICorner_4.Parent = Outerframe4

	UICorner_5.CornerRadius = UDim.new(0, 16)
	UICorner_5.Parent = Main

	Title.Name = "Title"
	Title.Parent = Main
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.Position = UDim2.new(0.0144752711, 0, 0.0364806876, 0)
	Title.Size = UDim2.new(0, 805, 0, 12)
	Title.Font = Enum.Font.Gotham
	Title.Text = TitleText
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextSize = 14.000

	Container.Name = "Container"
	Container.Parent = Main
	Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Container.BackgroundTransparency = 1.000
	Container.ClipsDescendants = true
	Container.Position = UDim2.new(0.0217129067, 0, 0.0751072988, 0)
	Container.Size = UDim2.new(0, 793,0, 396)

	UIGridLayout.Parent = Container
	UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIGridLayout.CellSize = UDim2.new(0, 191, 0, 42)

	Close.Name = "Close"
	Close.Parent = Main
	Close.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
	Close.BorderSizePixel = 0
    Close.BackgroundTransparency = 1.000
	Close.Position = UDim2.new(0.94323647, 0, 0.0300429184, 0)
	Close.Size = UDim2.new(0, 35, 0, 21)
	Close.Font = Enum.Font.Gotham
	Close.Text = "X"
	Close.TextColor3 = Color3.fromRGB(217, 217, 217)
	Close.TextSize = 13.000
	Close.TextWrapped = true
	Close.MouseButton1Click:Connect(function()
		Wistful_UI:Destroy()
	end)

	Credit.Name = "Credit"
	Credit.Parent = Main
	Credit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Credit.BackgroundTransparency = 1.000
	Credit.Position = UDim2.new(0.0144752711, 0, 0.937768221, 0)
	Credit.Size = UDim2.new(0, 260,0, 12)
	Credit.Font = Enum.Font.Gotham
	Credit.Text = "Kerus UI Library - Made by dori#4040"
	Credit.TextColor3 = Color3.fromRGB(255, 255, 255)
	Credit.TextSize = 14.000

	local libwinw = {}

	function libwinw:CreateButton(text, callback)
		local libwinb = {}

		local callback = callback or function() end
		local Aimbot = Instance.new("TextButton")

		Aimbot.Name = text
		Aimbot.Parent = game.CoreGui.Wistful_UI.Main.Container
		Aimbot.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
		Aimbot.BorderSizePixel = 0
		Aimbot.Position = UDim2.new(-0.276305169, 0, 0.427260637, 0)
		Aimbot.Size = UDim2.new(0, 191, 0, 42)
		Aimbot.Font = Enum.Font.Gotham
		Aimbot.Text = text
		Aimbot.TextColor3 = Color3.fromRGB(217, 217, 217)
		Aimbot.TextSize = 22.000
		Aimbot.TextWrapped = true
		Aimbot.MouseButton1Click:Connect(function()
			pcall(callback)
		end)
		function libwinb:Delete()
			Aimbot:Destroy()
		end
		function libwinb:Edit(etext)
			Aimbot.Name = etext
			Aimbot.Text = etext
		end
		return libwinb
	end

	function libwinw:Delete()
		Wistful_UI:Destroy()
	end

    function libwinw:Edit(titlename)
        Title.Text = titlename
    end
	return libwinw
end

function library:Notify(NotifText)
    local libwinn = {}

	local Notification = Instance.new("Frame")
	local Outerframe3 = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local UIGradient = Instance.new("UIGradient")
	local Outerframe2 = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local UIGradient_2 = Instance.new("UIGradient")
	local Outerframe1 = Instance.new("Frame")
	local UICorner_3 = Instance.new("UICorner")
	local UICorner_4 = Instance.new("UICorner")
	local Outerframe4 = Instance.new("Frame")
	local UICorner_5 = Instance.new("UICorner")
	local Title = Instance.new("TextLabel")
	local Text = Instance.new("TextLabel")

	Notification.Name = "Notification"
	Notification.Parent = game.CoreGui.Wistful_UI
	Notification.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
	Notification.BorderSizePixel = 0
	Notification.Position = UDim2.new(-0.233, 0,0.859, 0)
	Notification.Size = UDim2.new(0, 300, 0, 81)
	Notification.Visible = false

	Outerframe3.Name = "Outerframe 3"
	Outerframe3.Parent = Notification
	Outerframe3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Outerframe3.BorderSizePixel = 0
	Outerframe3.Position = UDim2.new(0, 0, 0.896106839, 0)
	Outerframe3.Size = UDim2.new(0, 307, 0, 8)

	UICorner.CornerRadius = UDim.new(0, 16)
	UICorner.Parent = Outerframe3

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 4)), ColorSequenceKeypoint.new(0.24, Color3.fromRGB(243, 255, 0)), ColorSequenceKeypoint.new(0.42, Color3.fromRGB(4, 246, 0)), ColorSequenceKeypoint.new(0.65, Color3.fromRGB(0, 221, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 209))}
	UIGradient.Parent = Outerframe3

	Outerframe2.Name = "Outerframe 2"
	Outerframe2.Parent = Notification
	Outerframe2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Outerframe2.BorderSizePixel = 0
	Outerframe2.Size = UDim2.new(0, 307, 0, 8)

	UICorner_2.CornerRadius = UDim.new(0, 16)
	UICorner_2.Parent = Outerframe2

	UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 4)), ColorSequenceKeypoint.new(0.24, Color3.fromRGB(243, 255, 0)), ColorSequenceKeypoint.new(0.42, Color3.fromRGB(4, 246, 0)), ColorSequenceKeypoint.new(0.65, Color3.fromRGB(0, 221, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 209))}
	UIGradient_2.Parent = Outerframe2

	Outerframe1.Name = "Outerframe 1"
	Outerframe1.Parent = Notification
	Outerframe1.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	Outerframe1.BorderSizePixel = 0
	Outerframe1.Size = UDim2.new(0, 7, 0, 81)

	UICorner_3.CornerRadius = UDim.new(0, 16)
	UICorner_3.Parent = Outerframe1

	UICorner_4.CornerRadius = UDim.new(0, 16)
	UICorner_4.Parent = Notification

	Outerframe4.Name = "Outerframe 4"
	Outerframe4.Parent = Notification
	Outerframe4.BackgroundColor3 = Color3.fromRGB(255, 0, 209)
	Outerframe4.BorderSizePixel = 0
	Outerframe4.Position = UDim2.new(1, 0, 0, 0)
	Outerframe4.Size = UDim2.new(0, 7, 0, 81)

	UICorner_5.CornerRadius = UDim.new(0, 16)
	UICorner_5.Parent = Outerframe4

	Title.Name = "Title"
	Title.Parent = Notification
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.Position = UDim2.new(0.0378086343, 0, 0.246357486, 0)
	Title.Size = UDim2.new(0, 103, 0, 12)
	Title.Font = Enum.Font.GothamBold
	Title.Text = "Notification,"
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextSize = 14.000

	Text.Name = NotifText
	Text.Parent = Notification
	Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Text.BackgroundTransparency = 1.000
	Text.Position = UDim2.new(0.0711419657, 0, 0.46857971, 0)
	Text.Size = UDim2.new(0, 265, 0, 28)
	Text.Font = Enum.Font.Gotham
	Text.Text = NotifText
	Text.TextColor3 = Color3.fromRGB(255, 255, 255)
	Text.TextSize = 14.000
	Text.TextWrapped = true
	Text.TextXAlignment = Enum.TextXAlignment.Left
	Text.TextYAlignment = Enum.TextYAlignment.Top

    function libwinn:Delete()
        Notification:Destroy()
    end
    function libwinn:Edit(daedit)
        Text.Name = daedit
	    Text.Text = daedit
    end
	wait(0.5)
	Notification.Visible = true
	wait(0.5)
	Notification:TweenPosition(UDim2.new(0.011, 0,0.853, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.2)
    return libwinn
end

return library
