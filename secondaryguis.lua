if guiversion ~= 'v1.6.8' and game.PlaceId ~= 4780479031 and game.PlaceId ~= 4464946645 then
    game.Players.LocalPlayer:Kick("You Are Using an Outdated Version Of The Script. To Get The Newer Version Join The Discord Server: https://discord.gg/MDDrqpRJtV")
    while true do end
end

screenGuimiss = Instance.new("ScreenGui")
screenGuimiss.Name = "secondary"
screenGuimiss.IgnoreGuiInset = true
screenGuimiss.Parent = playerGui

missgui = Instance.new("ImageLabel")
missgui.Name = "missing"
missgui.AnchorPoint = Vector2.new(0.5,0.5)
missgui.Image = "rbxassetid://4641149554"
missgui.Size = UDim2.new(0, 671.5, 0, 415)
missgui.Position = UDim2.new(0.5,0,0.5,0)
missgui.ImageColor3 = stringtocolor(SettingsT.Background)
missgui.BackgroundTransparency = 1
missgui.Parent = screenGuimiss
missgui.ScaleType = "Slice"
missgui.SliceCenter = Rect.new(4,4,296,296)
missgui.SliceScale = 1
missgui.Visible = false

glowmiss = Instance.new("ImageLabel")
glowmiss.Name = "Glow"
glowmiss.BackgroundTransparency = 1
glowmiss.Position = UDim2.new(0, -15, 0, -15)
glowmiss.Size = UDim2.new(1, 30, 1, 30)
glowmiss.ZIndex = 0
glowmiss.Image = "rbxassetid://5028857084"
glowmiss.ImageTransparency = 0
glowmiss.ImageColor3 = stringtocolor(SettingsT.Glow)
glowmiss.ScaleType = Enum.ScaleType.Slice
glowmiss.SliceCenter = Rect.new(24, 24, 276, 276)
glowmiss.Parent = missgui
glowmiss.ZIndex = 1

backmiss = Instance.new("TextButton")
backmiss.Parent = missgui
backmiss.Text = "Back"
backmiss.TextSize = 14
backmiss.TextColor3 = stringtocolor(SettingsT.TextColor)
backmiss.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
backmiss.BackgroundTransparency = 0
backmiss.TextTransparency = 0
backmiss.AutoButtonColor = false
backmiss.Position = UDim2.new(0.022,0,0.918,0)
backmiss.Size = UDim2.new(0,60,0,26)
backmiss.Font = Enum.Font.Jura

backcorner = Instance.new("UICorner")
backcorner.Parent = backmiss
backcorner.CornerRadius = UDim.new(0,8)

refreshmiss = Instance.new("TextButton")
refreshmiss.Parent = missgui
refreshmiss.Text = "Refresh"
refreshmiss.Name = "refresh"
refreshmiss.TextSize = 14
refreshmiss.TextColor3 = stringtocolor(SettingsT.TextColor)
refreshmiss.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
refreshmiss.BackgroundTransparency = 0
refreshmiss.TextTransparency = 0
refreshmiss.AutoButtonColor = false
refreshmiss.Position = UDim2.new(0.022,375,0.918,0)
refreshmiss.Size = UDim2.new(0,60,0,26)
refreshmiss.Font = Enum.Font.Jura

refreshcorner = Instance.new("UICorner")
refreshcorner.Parent = refreshmiss
refreshcorner.CornerRadius = UDim.new(0,8)

craftsmiss = Instance.new("TextButton")
craftsmiss.Parent = missgui
craftsmiss.Text = "Craftsman"
craftsmiss.Name = "crafts"
craftsmiss.TextSize = 14
craftsmiss.AnchorPoint = Vector2.new(0.5,0)
craftsmiss.TextColor3 = stringtocolor(SettingsT.TextColor)
craftsmiss.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
craftsmiss.BackgroundTransparency = 0
craftsmiss.TextTransparency = 0
craftsmiss.AutoButtonColor = false
craftsmiss.Position = UDim2.new(0.5,0,0.918,0)
craftsmiss.Size = UDim2.new(0,90,0,26)
craftsmiss.Font = Enum.Font.Jura

craftscorner = Instance.new("UICorner")
craftscorner.Parent = craftsmiss
craftscorner.CornerRadius = UDim.new(0,8)

topbarmiss = Instance.new("ImageLabel")
topbarmiss.Image = "rbxassetid://4595286933"
topbarmiss.ScaleType = "Slice"
topbarmiss.SliceCenter = Rect.new(4,4,296,296)
topbarmiss.ImageColor3 = stringtocolor(SettingsT.DarkContrast)
topbarmiss.Parent = missgui
topbarmiss.Size = UDim2.new(0,456,0,45)
topbarmiss.Position = UDim2.new(0,0,0,0)
topbarmiss.ImageTransparency = 0
topbarmiss.BackgroundTransparency = 1
topbarmiss.BorderSizePixel = 0

tbmtext = Instance.new("TextLabel")
tbmtext.Text = "Missing Items for "
tbmtext.BackgroundTransparency = 1
tbmtext.TextScaled = true
tbmtext.TextTransparency = 0
tbmtext.TextColor3 = stringtocolor(SettingsT.TextColor)
tbmtext.Font = Enum.Font.Jura
tbmtext.Size = UDim2.new(0,346,0,41)
tbmtext.Position = UDim2.new(0.119,0,0,1)
tbmtext.Parent = topbarmiss

sfmiss = Instance.new("ScrollingFrame")
sfmiss.BorderSizePixel = 0
sfmiss.BackgroundTransparency = 1
sfmiss.Position = UDim2.new(0.119,0,0.11,5)
sfmiss.Size = UDim2.new(0,393,0,321)
sfmiss.ScrollBarImageColor3 = stringtocolor(SettingsT.DarkContrast)
sfmiss.ScrollBarThickness = 3
sfmiss.ScrollBarImageTransparency = 0
sfmiss.CanvasSize = UDim2.new(0,0,0,0)
sfmiss.Parent = missgui

listlayoutmiss = Instance.new("UIListLayout")
listlayoutmiss.Padding = UDim.new(0,15)
listlayoutmiss.Parent = sfmiss
---------------------------CRATES GUI STARTS HERE------------------------------------------
cratesgui = Instance.new("ImageLabel")
cratesgui.Name = "crates"
cratesgui.AnchorPoint = Vector2.new(0.5,0.5)
cratesgui.Image = "rbxassetid://4641149554"
cratesgui.Size = UDim2.new(0, 671.5, 0, 415)
cratesgui.Position = UDim2.new(0.5,0,0.5,0)
cratesgui.ImageColor3 = stringtocolor(SettingsT.Background)
cratesgui.BackgroundTransparency = 1
cratesgui.Parent = screenGuimiss
cratesgui.ScaleType = "Slice"
cratesgui.SliceCenter = Rect.new(4,4,296,296)
cratesgui.SliceScale = 1
cratesgui.Visible = false

glowcrates = Instance.new("ImageLabel")
glowcrates.Name = "Glow"
glowcrates.BackgroundTransparency = 1
glowcrates.Position = UDim2.new(0, -15, 0, -15)
glowcrates.Size = UDim2.new(1, 30, 1, 30)
glowcrates.ZIndex = 0
glowcrates.Image = "rbxassetid://5028857084"
glowcrates.ImageTransparency = 0
glowcrates.ImageColor3 = stringtocolor(SettingsT.Glow)
glowcrates.ScaleType = Enum.ScaleType.Slice
glowcrates.SliceCenter = Rect.new(24, 24, 276, 276)
glowcrates.Parent = cratesgui
glowcrates.ZIndex = 1

topbarcrates = Instance.new("ImageLabel")
topbarcrates.Image = "rbxassetid://4595286933"
topbarcrates.ScaleType = "Slice"
topbarcrates.SliceCenter = Rect.new(4,4,296,296)
topbarcrates.ImageColor3 = stringtocolor(SettingsT.DarkContrast)
topbarcrates.Parent = cratesgui
topbarcrates.Size = UDim2.new(0,671.5,0,41)
topbarcrates.Position = UDim2.new(0,0,0,0)
topbarcrates.ImageTransparency = 0
topbarcrates.BackgroundTransparency = 1
topbarcrates.BorderSizePixel = 0

tbctext = Instance.new("TextLabel")
tbctext.Text = "Select Boxes To Open"
tbctext.BackgroundTransparency = 1
tbctext.TextScaled = true
tbctext.TextTransparency = 0
tbctext.TextColor3 = stringtocolor(SettingsT.TextColor)
tbctext.Font = Enum.Font.Jura
tbctext.Size = UDim2.new(0,346,0,28)
tbctext.Position = UDim2.new(0.241,0,0.146,0)
tbctext.Parent = topbarcrates

backcrates = Instance.new("TextButton")
backcrates.Parent = cratesgui
backcrates.Text = "Back"
backcrates.TextSize = 14
backcrates.TextColor3 = stringtocolor(SettingsT.TextColor)
backcrates.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
backcrates.BackgroundTransparency = 0
backcrates.TextTransparency = 0
backcrates.AutoButtonColor = false
backcrates.Position = UDim2.new(0.001,10,0.836,0)
backcrates.Size = UDim2.new(0,60,0,26)
backcrates.Font = Enum.Font.Jura

backcorner1 = Instance.new("UICorner")
backcorner1.Parent = backcrates
backcorner1.CornerRadius = UDim.new(0,8)

cratesamt = Instance.new("TextLabel")
cratesamt.Parent = cratesgui
cratesamt.Text = "Total Boxes: " .. game.Players.LocalPlayer.Crates.Value
cratesamt.TextSize = 22
cratesamt.Font = Enum.Font.Jura
cratesamt.BackgroundTransparency = 0
cratesamt.TextTransparency = 0
cratesamt.TextColor3 = stringtocolor(SettingsT.TextColor)
cratesamt.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
cratesamt.Size = UDim2.new(0,315,0,33)
cratesamt.BorderSizePixel = 0
cratesamt.Position = UDim2.new(0.264,0,0.778,0)

cratescorner = Instance.new("UICorner")
cratescorner.Parent = cratesamt
cratescorner.CornerRadius = UDim.new(0,8)

sfcrates = Instance.new("ScrollingFrame")
sfcrates.BorderSizePixel = 0
sfcrates.AnchorPoint = Vector2.new(0,0.5)
sfcrates.BackgroundTransparency = 1
sfcrates.Position = UDim2.new(0.01,0,0.483,0)
sfcrates.Size = UDim2.new(0,658,0,99)
sfcrates.ScrollBarImageColor3 = stringtocolor(SettingsT.DarkContrast)
sfcrates.ScrollBarThickness = 3
sfcrates.ScrollBarImageTransparency = 0
sfcrates.CanvasSize = UDim2.new(0,0,0,0)
sfcrates.Parent = cratesgui

listlayoutcrates = Instance.new("UIListLayout")
listlayoutcrates.Padding = UDim.new(0,10)
listlayoutcrates.Parent = sfcrates
listlayoutcrates.FillDirection = "Horizontal"
listlayoutcrates.VerticalAlignment = "Top"
listlayoutcrates.SortOrder = "LayoutOrder"

cloverbutton = Instance.new("ImageButton")
cloverbutton.Parent = cratesgui
cloverbutton.BackgroundTransparency = 1
cloverbutton.BorderSizePixel = 0
cloverbutton.ImageTransparency = 0.65
cloverbutton.Size = UDim2.new(0,57,0,57)
cloverbutton.Position = UDim2.new(0.915,0,0.722,0)
cloverbutton.Image = "rbxassetid://8572515396"
