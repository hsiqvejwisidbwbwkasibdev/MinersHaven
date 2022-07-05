print('newvertime2')
--[[
function stringtocolor(str)
    return Color3.fromRGB(table.unpack(str:gsub(" ",""):split(",")))
end

settingsNameT = "theme.Slender"

DefaultSettingsT = {
    ThisIs = "JSON",
	Background = "24, 24, 24", 
	Glow = "255, 255, 254", 
	Accent = "10, 10, 10", 
	LightContrast = "20, 20, 20", 
	DarkContrast = "14, 14, 14",  
	TextColor = "254, 255, 255",
    key = ""
}

SettingsT = nil

if not pcall(function() readfile(settingsNameT) end) then writefile(settingsNameT, game:service'HttpService':JSONEncode(DefaultSettingsT)) end

SettingsT = game:service'HttpService':JSONDecode(readfile(settingsNameT))

function SaveT()
writefile(settingsNameT,game:service'HttpService':JSONEncode(SettingsT))
end
plrName = game.Players.LocalPlayer.Name
myBase = nil;
baseNum = nil;
for i,v in pairs(game.Workspace.Tycoons:GetChildren()) do
    if v.Owner.Value == plrName then
        baseNum = v.Name
        myBase = v
    end
end

]]
--endinit--


-- Gui to Lua
-- Version: 3.2

-- Instances:
local timecruncher_2 = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local topbar = Instance.new("ImageLabel")
local TextLabelTB = Instance.new("TextLabel")
local timeglow = Instance.new("ImageLabel")
local Frame = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local ImageButton = Instance.new("ImageButton")
local UICorner_3 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local UICorner_4 = Instance.new("UICorner")
local TextLabel_2 = Instance.new("TextLabel")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local UICorner_5 = Instance.new("UICorner")
local Frame_2 = Instance.new("Frame")
local UICorner_6 = Instance.new("UICorner")
local ImageButton_2 = Instance.new("ImageButton")
local UICorner_7 = Instance.new("UICorner")
local TextLabel_3 = Instance.new("TextLabel")
local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")
local UICorner_8 = Instance.new("UICorner")
local TextLabel_4 = Instance.new("TextLabel")
local UITextSizeConstraint_4 = Instance.new("UITextSizeConstraint")
local UICorner_9 = Instance.new("UICorner")
local oretime = Instance.new("TextButton")
local UICorner_10 = Instance.new("UICorner")
local UITextSizeConstraint_5 = Instance.new("UITextSizeConstraint")
local backtimeore = Instance.new("TextButton")
local UICorner_11 = Instance.new("UICorner")

--Properties:
--[[local screngui = Instance.new('ScreenGui')
screngui.Parent = game:service'CoreGui'
screngui.Name = 'lol'--]]

timecruncher_2.Name = "timecruncher"
timecruncher_2.Parent = screenGuimiss
--timecruncher_2.Parent = screngui
timecruncher_2.BackgroundColor3 = stringtocolor(SettingsT.Background)
timecruncher_2.BorderSizePixel = 0
timecruncher_2.Position = UDim2.new(0.113950178, 0, 0.274072081, 0)
timecruncher_2.Size = UDim2.new(0, 671, 0, 415)
timecruncher_2.Active = true
timecruncher_2.Visible = false

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = timecruncher_2

topbar.Name = "topbar"
topbar.Parent = timecruncher_2
topbar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
topbar.BackgroundTransparency = 1.000
topbar.Size = UDim2.new(1, 0, 0, 38)
topbar.Image = "rbxassetid://4595286933"
topbar.ImageColor3 = stringtocolor(SettingsT.DarkContrast)
topbar.ScaleType = Enum.ScaleType.Slice
topbar.SliceCenter = Rect.new(4, 4, 296, 296)

TextLabelTB.Parent = topbar
TextLabelTB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabelTB.BackgroundTransparency = 1.000
TextLabelTB.Size = UDim2.new(0, 671, 0, 38)
TextLabelTB.Font = Enum.Font.Jura
TextLabelTB.Text = "Ore Time Cruncher"
TextLabelTB.TextColor3 = stringtocolor(SettingsT.TextColor)
TextLabelTB.TextSize = 18.000

timeglow = Instance.new("ImageLabel")
timeglow.Name = "Glow"
timeglow.BackgroundTransparency = 1
timeglow.Position = UDim2.new(0, -15, 0, -15)
timeglow.Size = UDim2.new(1, 30, 1, 30)
timeglow.ZIndex = 0
timeglow.Image = "rbxassetid://5028857084"
timeglow.ImageColor3 = stringtocolor(SettingsT.Glow)
timeglow.ScaleType = Enum.ScaleType.Slice
timeglow.SliceCenter = Rect.new(24, 24, 276, 276)
timeglow.Parent = timecruncher_2

Frame.Parent = timecruncher_2
Frame.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
Frame.Position = UDim2.new(0.0625931472, 0, 0.265060246, 0)
Frame.Size = UDim2.new(0, 275, 0, 275)

UICorner_2.CornerRadius = UDim.new(0, 5)
UICorner_2.Parent = Frame

ImageButton.Parent = Frame
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BackgroundTransparency = 1.000
ImageButton.Position = UDim2.new(0.0363636352, 0, 0.0363636352, 0)
ImageButton.Size = UDim2.new(0, 255, 0, 255)
ImageButton.Image = ""


UICorner_3.CornerRadius = UDim.new(0, 5)
UICorner_3.Parent = ImageButton

TextLabel.Parent = ImageButton
TextLabel.BackgroundColor3 = stringtocolor(SettingsT.Background)
TextLabel.BackgroundTransparency = 0.400
TextLabel.Size = UDim2.new(0, 255, 0, 255)
TextLabel.Font = Enum.Font.Nunito
TextLabel.Text = 'Click Here To Select'
TextLabel.TextColor3 = stringtocolor(SettingsT.TextColor)
TextLabel.TextScaled = true
TextLabel.TextSize = 1.000
TextLabel.TextWrapped = true

UITextSizeConstraint.Parent = TextLabel
UITextSizeConstraint.MaxTextSize = 30

UICorner_4.CornerRadius = UDim.new(0, 5)
UICorner_4.Parent = TextLabel

TextLabel_2.Parent = ImageButton
TextLabel_2.BackgroundColor3 = stringtocolor(SettingsT.Background)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Size = UDim2.new(0, 255, 0, 32)
TextLabel_2.Font = Enum.Font.Nunito
TextLabel_2.Text = "1st Item (Click To Select)"
TextLabel_2.TextColor3 = stringtocolor(SettingsT.TextColor)
TextLabel_2.TextSize = 15.000
TextLabel_2.TextWrapped = true
TextLabel_2.Visible = false

UITextSizeConstraint_2.Parent = TextLabel_2
UITextSizeConstraint_2.MaxTextSize = 30

UICorner_5.CornerRadius = UDim.new(0, 5)
UICorner_5.Parent = TextLabel_2

Frame_2.Parent = timecruncher_2
Frame_2.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
Frame_2.Position = UDim2.new(0.527570844, 0, 0.265060246, 0)
Frame_2.Size = UDim2.new(0, 275, 0, 275)

UICorner_6.CornerRadius = UDim.new(0, 5)
UICorner_6.Parent = Frame_2

ImageButton_2.Parent = Frame_2
ImageButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton_2.BackgroundTransparency = 1.000
ImageButton_2.Position = UDim2.new(0.0363636352, 0, 0.0363636352, 0)
ImageButton_2.Size = UDim2.new(0, 255, 0, 255)
ImageButton_2.Image = ""

UICorner_7.CornerRadius = UDim.new(0, 5)
UICorner_7.Parent = ImageButton_2

TextLabel_3.Parent = ImageButton_2
TextLabel_3.BackgroundColor3 = stringtocolor(SettingsT.Background)
TextLabel_3.BackgroundTransparency = 0.400
TextLabel_3.Size = UDim2.new(0, 255, 0, 255)
TextLabel_3.Font = Enum.Font.Nunito
TextLabel_3.Text = "Click Here To Select"
TextLabel_3.TextColor3 = stringtocolor(SettingsT.TextColor)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 1.000
TextLabel_3.TextWrapped = true

UITextSizeConstraint_3.Parent = TextLabel_3
UITextSizeConstraint_3.MaxTextSize = 30

UICorner_8.CornerRadius = UDim.new(0, 5)
UICorner_8.Parent = TextLabel_3

TextLabel_4.Parent = ImageButton_2
TextLabel_4.BackgroundColor3 = stringtocolor(SettingsT.Background)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.Size = UDim2.new(0, 255, 0, 32)
TextLabel_4.Font = Enum.Font.Nunito
TextLabel_4.Text = "2nd Item (Click To Select)"
TextLabel_4.TextColor3 = stringtocolor(SettingsT.TextColor)
TextLabel_4.TextSize = 15.000
TextLabel_4.TextWrapped = true
TextLabel_4.Visible = false

UITextSizeConstraint_4.Parent = TextLabel_4
UITextSizeConstraint_4.MaxTextSize = 30

UICorner_9.CornerRadius = UDim.new(0, 5)
UICorner_9.Parent = TextLabel_4

oretime.Name = "oretime"
oretime.Parent = timecruncher_2
oretime.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
oretime.Position = UDim2.new(0.165424734, 0, 0.122891568, 0)
oretime.Size = UDim2.new(0, 518, 0, 45)
oretime.Font = Enum.Font.Jura
oretime.Text = "Please Select Both Items"
oretime.TextColor3 = stringtocolor(SettingsT.TextColor)
oretime.TextScaled = true
oretime.TextSize = 14.000
oretime.TextWrapped = true
oretime.AutoButtonColor = false

UICorner_10.CornerRadius = UDim.new(0, 5)
UICorner_10.Parent = oretime

UITextSizeConstraint_5.Parent = oretime
UITextSizeConstraint_5.MaxTextSize = 20

backtimeore.Name = "backtimeore"
backtimeore.Parent = timecruncher_2
backtimeore.BackgroundColor3 = stringtocolor(SettingsT.DarkContrast)
backtimeore.Position = UDim2.new(0.0625931472, 0, 0.122891568, 0)
backtimeore.Size = UDim2.new(0, 57, 0, 45)
backtimeore.AutoButtonColor = false
backtimeore.Font = Enum.Font.Jura
backtimeore.Text = "Back"
backtimeore.TextColor3 = stringtocolor(SettingsT.TextColor)
backtimeore.TextSize = 14.000

backtimeore.MouseEnter:Connect(function()
    local tweentrans = TweenService:Create(backtimeore, TweenInfo.new(0.5), {BackgroundTransparency = 0.3, TextTransparency = 0.3})
    tweentrans:Play()
end)

backtimeore.MouseLeave:Connect(function()
    local tweentrans = TweenService:Create(backtimeore, TweenInfo.new(0.5), {BackgroundTransparency = 0, TextTransparency = 0})
    tweentrans:Play()
end)

oretime.MouseEnter:Connect(function()
    local tweentrans = TweenService:Create(oretime, TweenInfo.new(0.5), {BackgroundTransparency = 0.3, TextTransparency = 0.3})
    tweentrans:Play()
end)

oretime.MouseLeave:Connect(function()
    local tweentrans = TweenService:Create(oretime, TweenInfo.new(0.5), {BackgroundTransparency = 0, TextTransparency = 0})
    tweentrans:Play()
end)


UICorner_11.CornerRadius = UDim.new(0, 5)
UICorner_11.Parent = backtimeore

local Mouse = game.Players.LocalPlayer:GetMouse()
local AllItems = game.ReplicatedStorage.Items
local SelectingFirst = false
local SelectingSecond = false
local FirstItem;
local SecondItem;
_G.overArching = Mouse.Button1Down:Connect(function()
    local target = Mouse.Target
    if target.Name == 'Internal' then
        target = target.Parent.Parent.Hitbox
    end
    if target.Name == 'Hitbox' and (target.Parent == FirstItem or target.Parent == SecondItem) then
        if target.Parent:FindFirstChild('highlight') then
            target.Parent:FindFirstChild('highlight'):Destroy()
            if target.Parent == FirstItem then
                ImageButton.Image = ''
                TextLabel.Text = 'Click Here To Select'
                FirstItem = nil
            end
            if target.Parent == SecondItem then
                ImageButton_2.Image = ''
                TextLabel_3.Text = 'Click Here To Select'
                SecondItem = nil
            end            
        end
    end
    if target.Name == 'Hitbox' or target.Name == 'Internal' then
        if target.Name == 'Internal' then
            target = target.Parent.Parent.Hitbox
        end
        local model = target.Parent.Model
        if model:FindFirstChild('EvalTeleporter') == nil and model:FindFirstChild('Upgrade') == nil and model:FindFirstChild('Lava') == nil and model:FindFirstChild('Lava1') == nil and model:FindFirstChild('Cannon') == nil and model:FindFirstChild('Scan') == nil and model:FindFirstChild('Upgrader') == nil then
            return
        end
        if SelectingFirst == true then
            SelectingFirst = false
            local highlight = target:Clone()
            highlight.Name = 'highlight'
            highlight.Parent = target.Parent
            highlight.Transparency = 0.75
            ImageButton.Image = 'rbxassetid://' .. AllItems[target.Parent.Name].ThumbnailId.Value
            TextLabel.Text = target.Parent.Name
            if FirstItem ~= nil then
                FirstItem:FindFirstChild('highlight'):Destroy()
            end
            FirstItem = target.Parent
        elseif SelectingSecond == true then
            SelectingSecond = false
            local highlight = target:Clone()
            highlight.Name = 'highlight'
            highlight.Parent = target.Parent
            highlight.Transparency = 0.75
            ImageButton_2.Image = 'rbxassetid://' .. AllItems[target.Parent.Name].ThumbnailId.Value
            TextLabel_3.Text = target.Parent.Name
            if SecondItem ~= nil then
                SecondItem:FindFirstChild('highlight'):Destroy()
            end
            SecondItem = target.Parent
        end
    end
end)

_G.removeditemTime = myBase.ChildRemoved:Connect(function(child)
    local target = child

    if target == FirstItem or target == SecondItem then
        if target == FirstItem then
            ImageButton.Image = ''
            TextLabel.Text = 'Click Here To Select'
            FirstItem = nil
        end
        if target == SecondItem then
            ImageButton_2.Image = ''
            TextLabel_3.Text = 'Click Here To Select'
            SecondItem = nil
        end
    end
end)
local all_times = {}
_G.neworeTime = workspace.DroppedParts[baseNum].ChildAdded:Connect(function(ore)
    if FirstItem ~= nil and SecondItem ~= nil then
        local starttick;
        ore.Touched:Connect(function(upgrader)
            if upgrader.Name == 'EvalTeleporter' or upgrader.Name == 'Upgrade' or upgrader.Name == 'Lava' or upgrader.Name == 'Lava1' or upgrader.Name == 'Cannon' or upgrader.Name == 'Scan' or upgrader.Name == 'Upgrader' then
                if upgrader.Parent.Parent == FirstItem then
                    starttick = tick()
                elseif upgrader.Parent.Parent == SecondItem then
                    if starttick == nil then
                        oretime.Text = 'Time In Between: Hit Second Item First (' .. ore.Name .. ')'
                    else
                        local time = tick() - starttick
                        time = time * 10000
                        time = math.round(time)
                        time = time / 10000
                        table.insert(all_times, time)
                        local timesum = 0
                        for _, time in pairs(all_times) do
                            timesum = timesum + time
                        end
                        local avgtime = timesum / #all_times
                        avgtime = avgtime * 10000
                        avgtime = math.round(avgtime)
                        avgtime = avgtime / 10000
                        if #all_times == 0 then
                            avgtime = 'N/A'
                        end
                        oretime.Text = 'Time In Between: ' .. time .. ' Seconds (Avg: ' .. avgtime .. ')'
                    end
                end
            end
        end)
    else 
        oretime.Text = 'Please Select Both Items'
    end
end)

oretime.MouseButton1Click:Connect(function()
    all_times = {}
end)

ImageButton.MouseButton1Click:Connect(function()
    if SelectingSecond == true then
        mh:Notify('Error!', 'Finish Selecting The Other Item First')
        return
    end
    TextLabel.Text = 'Click Any Upgrader Or Furnace On Your Base'
    SelectingFirst = true
end)

ImageButton_2.MouseButton1Click:Connect(function()
    if SelectingFirst == true then
        mh:Notify('Error!', 'Finish Selecting The Other Item First')
        return
    end
    TextLabel_3.Text = 'Click Any Upgrader Or Furnace On Your Base'
    SelectingSecond = true
end)
