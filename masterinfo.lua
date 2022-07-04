function indexItems(allitemsIndexed, alltiersIndexed)
    local waitForIndex = 0
    for i,v in pairs(game.ReplicatedStorage.Items:GetChildren()) do
        coroutine.wrap(function()
            local rarity = 'N/A'
            if v:FindFirstChild('RebornChance') then
                rarity = v.RebornChance.Value
            end
            local amt = itemhas(v.ItemId.Value)
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
    repeat wait() until waitForIndex == #game.ReplicatedStorage.Items:GetChildren()
end
