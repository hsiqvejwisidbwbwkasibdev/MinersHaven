FocusLib = require(game.Players.LocalPlayer.PlayerGui.GUI.Focus)

if SettingsC.sideicon == nil then
    SettingsC.sideicon = true
    SaveC()
end

local playergui = game.Players.LocalPlayer.PlayerGui.GUI
local websiteReleaseButton = playergui.HUDLeft.Buttons.RobuxShop:Clone()
websiteReleaseButton.Parent = playergui.HUDLeft.Buttons
websiteReleaseButton.Name = 'Website'
websiteReleaseButton.PcKey.Hotkey.Text = 'mh.slender.dev'
websiteReleaseButton.RobuxIcon.Image = 'rbxassetid://9855825598'
websiteReleaseButton.Exclaim.Visible = true
websiteReleaseButton.Visible = SettingsC.sideicon

websiteReleaseButton.MouseEnter:Connect(function()
    websiteReleaseButton.PcKey.Visible = true
end)

websiteReleaseButton.MouseLeave:Connect(function()
    websiteReleaseButton.PcKey.Visible = false
end)

websiteReleaseButton.MouseButton1Click:Connect(function()
    FocusLib.change(playergui.website)
end)

local websiteRelease = playergui.NewPlayer:Clone()
websiteRelease.Name = 'website'
websiteRelease.Parent = playergui
websiteRelease.Header.Text = 'Thanks For Using\nSlender Hub!'
websiteRelease.Header.Lower.Text = 'The New Website is Now Released! Visit it To Track Your Stats and Much More!'
websiteRelease.Scrolling.Top.Text = 'Website URL: https://mh.slender.dev'
websiteRelease.Scrolling.Top.Name = 'header'
websiteRelease.Scrolling['1'].Top.Text = 'View your stats!'
websiteRelease.Scrolling['1'].Lower.Text = 'Custom built dashboard for you to view every stat imaginable when using the script. Will not show stats obtained while using other scripts.'
websiteRelease.Scrolling['2'].Top.Text = 'View Leaderboards!'
websiteRelease.Scrolling['2'].Lower.Text = 'View three important leaderboards from anywhere, this feature is accessible even to people who don\'t exploit.'
websiteRelease.Scrolling['3'].Top.Text = 'View Features!'
websiteRelease.Scrolling['3'].Lower.Text = 'Read descriptions of every feature within the GUI, and what functionalities they have.'
websiteRelease.Scrolling.Top.Text = 'WARNING: Do not blatantly ore boost onto the daily leaderboards, mods can check your bases, and there\'s a high chance you will get banned.'
websiteRelease.Begin.Position = UDim2.new(0.75,0,1,-10)
websiteRelease.Begin.Text = 'Continue'
websiteRelease.Begin.BackgroundColor3 = Color3.fromRGB(144, 238, 144)

websiteRelease.Begin.MouseButton1Click:Connect(function()
    FocusLib.close()
end)    

local copybutton = websiteRelease.Begin:Clone()
copybutton.Name = 'Copy'
copybutton.Parent = websiteRelease
copybutton.Position = UDim2.new(0.25,0,1,-10)
copybutton.Text = 'Copy Url'

copybutton.MouseButton1Click:Connect(function()
    setclipboard('https://mh.slender.dev')
    copybutton.Text = 'Copied!'
end)

websiteRelease.BG.Visible = false

if SettingsC.firstExec == nil then
FocusLib.change(playergui.website)
end

