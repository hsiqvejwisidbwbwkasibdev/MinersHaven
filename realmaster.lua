local RunService = game:GetService('RunService')
local HttpService = game:GetService('HttpService')
function updateSessionTracker()
    if _G.cansend then
        local masterinfo = getMasterInfo(sessionid, starttime, JSstartTime, startTick, startBoxes, startRP, startShards, startLives, startCrystals) 
        if masterinfo == nil then
            print('sitedown2')
            return
        end
        print('gotmaster')
        local HttpService = game:GetService("HttpService")
        local webhookLink = domainName .. "api/update"
        local data = masterinfo
        local headers = {
            ["Content-type"] = "application/json"
        }
        local request_body_encoded = HttpService:JSONEncode(data)
        local request_payload = {Url=webhookLink, Body=request_body_encoded, Method="POST", Headers=headers}
        local dailyres = request(request_payload)
        print('done')
    end
end

print('new2')
local allitemsIndexed = {}
local alltiersIndexed = {}
local waitForIndex = 0
local inventory = game:GetService("ReplicatedStorage").FetchInventory:InvokeServer()
for id,item in pairs(inventory) do
    if item['Quantity'] == nil then
        item['Quantity'] = 0
    end
    for i,v in pairs(myBase:GetChildren()) do
        if v:IsA("Model") and v:FindFirstChild("ItemId") then
            if v.ItemId.Value == id then
                item['Quantity'] = item['Quantity'] + 1
            end
        end
    end
end

for i,v in pairs(game.ReplicatedStorage.Items:GetChildren()) do
    coroutine.wrap(function()
        local rarity = 'N/A'
        if v:FindFirstChild('RebornChance') then
            rarity = v.RebornChance.Value
        end
        local amt = inventory[v.ItemId.Value]['Quantity']
        local tier = getTier(v.Tier.Value)
        local subtable = {}
        subtable['itemname'] = v.Name
        subtable['tier'] = tier
        subtable['rarity'] = rarity
        subtable['amountOwned'] = amt
        subtable['itemid'] = v.ItemId.Value
        subtable['thumbnail'] = v.ThumbnailId.Value
        subtable['tiernum'] = v.Tier.Value

        allitemsIndexed[v.Name] = subtable
        if alltiersIndexed[tier] ~= nil then
            alltiersIndexed[tier] = alltiersIndexed[tier] + amt
        else
            alltiersIndexed[tier] = amt
        end
        waitForIndex = waitForIndex + 1
    end)()
end
repeat wait(0.1) print('waiting') until waitForIndex == #game.ReplicatedStorage.Items:GetChildren()
function getMasterInfo(sessionid, starttime, JSstartTime, startTick, startBoxes, startRP, startShards, startLives, startCrystals) 
    if guiversion ~= 'v1.6.8' and game.PlaceId ~= 4780479031 and game.PlaceId ~= 4464946645 then
        game.Players.LocalPlayer:Kick("You Are Using an Outdated Version Of The Script. To Get The Newer Version Join The Discord Server: https://discord.gg/MDDrqpRJtV")
        while true do end
    end
    _G.cansend = false
    local masterinfo = {}
    masterinfo['sessionid'] = sessionid
    masterinfo['user'] = {
        ['username'] = game.Players.LocalPlayer.Name,
        ['userid'] = game.Players.LocalPlayer.UserId,
        ['displayname'] = game.Players.LocalPlayer.DisplayName
    }
    masterinfo['startTime'] = starttime
    masterinfo['JSstartTime'] = JSstartTime
    masterinfo['elapsedTime'] = toHMS(os.time() - startTick)
    masterinfo['crates'] = {
        ['amount'] = comma_value(game.Players.LocalPlayer.Crates.Value),
        ['changePercent'] = math.round((((game.Players.LocalPlayer.Crates.Value/startBoxes))-1)*10000) / 100
    }
    masterinfo['rp'] = {
        ['amount'] = comma_value(game.Players.LocalPlayer.Points.Value),
        ['changePercent'] = math.round((((game.Players.LocalPlayer.Points.Value/startRP))-1)*10000) / 100
    }
    masterinfo['shards'] = {
        ['amount'] = comma_value(game.Players.LocalPlayer.Shards.Value),
        ['changePercent'] = math.round((((game.Players.LocalPlayer.Shards.Value/startShards))-1)*10000) / 100
    }
    masterinfo['uC'] = {
        ['amount'] = comma_value(game.Players.LocalPlayer.Crystals.Value),
        ['changePercent'] = math.round((((game.Players.LocalPlayer.Crystals.Value/startCrystals))-1)*10000) / 100
    }

    local GMT = os.date("!*t", os.time()) 
    local firstLifeToday = game.Players.LocalPlayer.Rebirths.Value
    local dayres = game:HttpGet(domainName .. 'api/dailyInfo/' .. sessionid)
    if dayres == '' then
        print('sitedown')
        _G.cansend = true
        return
    end
    local daystuff = HttpService:JSONDecode(dayres)
    if daystuff.date ~= 'failed' then
        if daystuff.date.year == GMT.year and daystuff.date.month == GMT.month and daystuff.date.day == GMT.day then
            firstLifeToday = daystuff.datelife
        end
    end
    
    masterinfo['daily'] = {
        ['date'] = GMT,
        ['datelife'] = firstLifeToday
    }

    local pastweek = {}
    local weekres = game:HttpGet(domainName .. 'api/weekInfo/' .. sessionid)
    if weekres == '' then
        print('sitedown')
        _G.cansend = true
        return
    end
    local weekstuff = HttpService:JSONDecode(weekres)
    local foundday = false
    if weekstuff.date ~= 'failed' then
        for i,v in pairs(weekstuff) do
            if v.date.year == GMT.year and v.date.month == GMT.month and v.date.day == GMT.day then
                table.insert(pastweek, {
                    ['date'] = GMT,
                    ['lives'] = (game.Players.LocalPlayer.Rebirths.Value - firstLifeToday)
                })
                foundday = true
            else
                table.insert(pastweek, v)
            end
        end
        while #pastweek > 7 do
            table.remove(pastweek, 1)
        end
        if not foundday then
            print('should be here')
            table.insert(pastweek, {
                ['date'] = GMT,
                ['lives'] = (game.Players.LocalPlayer.Rebirths.Value - firstLifeToday)
            })
        end
    else
        table.insert(pastweek, {
            ['date'] = GMT,
            ['lives'] = game.Players.LocalPlayer.Rebirths.Value - firstLifeToday
        })
    end

    masterinfo['pastweek'] = pastweek
    masterinfo['latesttick'] = os.time()
    local sacstring = ""
    if game.Players.LocalPlayer:FindFirstChild("SecondSacrifice") then
        sacstring = "S+"
    elseif game.Players.LocalPlayer:FindFirstChild("Sacrificed") then
        sacstring = "s-"
    end
    masterinfo['lives'] = {
        ['totalAmount'] = sacstring .. comma_value(game.Players.LocalPlayer.Rebirths.Value),
        ['dailyAmount'] = comma_value(game.Players.LocalPlayer.Rebirths.Value - firstLifeToday),
        ['changePercent'] = math.round((((game.Players.LocalPlayer.Rebirths.Value/firstLifeToday))-1)*10000) / 100,
        ['leaderboardTOP'] = leaderboardTOP,
        ['leaderboardDaily'] = leaderboardDaily
    }
    masterinfo['rebirths'] = sessionRebirths
    masterinfo['items'] = sessionItems
    alltiersIndexed = {}
    local waitForIndex = 0
    local waitForQuantity = 0
    local startindextime = tick()
    local inventory = game:GetService("ReplicatedStorage").FetchInventory:InvokeServer()
    for i,v in pairs(game.ReplicatedStorage.Items:GetChildren()) do
        RunService.Heartbeat:Wait()
        local amt = inventory[v.ItemId.Value]['Quantity']
        if amt == nil then
            amt = 0
        end
        for o,r in pairs(myBase:GetChildren()) do
            if v:IsA("Model") and r.Name == v.Name then
                amt = amt + 1
            end
        end
        local tier = getTier(v.Tier.Value)
        local subtable = allitemsIndexed[v.Name]
        if amt ~= 0 then
            subtable['amountOwned'] = amt
        end
        allitemsIndexed[v.Name] = subtable
        if alltiersIndexed[tier] ~= nil then
            alltiersIndexed[tier] = alltiersIndexed[tier] + amt
        else
            alltiersIndexed[tier] = amt
        end
    end
    print(tick() - startindextime .. " seconds to index items")
    masterinfo['alltiers'] = alltiersIndexed
    masterinfo['allitems'] = allitemsIndexed
    masterinfo['amountsOfItems'] = {
        ['Reborns'] = sessionRebornItems,
        ['Decimals'] = sessionDecimals,
        ['Advanced'] = sessionAdvReb,
        ['Shinies'] = sessionShinies
    }
    masterinfo['shinies'] = shiniesTable
    masterinfo['starttick'] = startTick
    masterinfo['executor'] = identifyexecutor()
    masterinfo['lastshiny'] = lastShinyLife
    _G.cansend = true
    print('realsent')
    return masterinfo
end
print('UPDATED8')
