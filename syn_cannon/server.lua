local VorpCore = {}

TriggerEvent("getCore",function(core)
    VorpCore = core
end)

VorpInv = exports.vorp_inventory:vorp_inventoryApi()


RegisterCommand("rotatecannon", function(source, args) --- example /rotate 20 (rotation number from 0 to 360)
  if args ~= nil then
    local _source = source
    local Character = VorpCore.getUser(_source).getUsedCharacter
    local rotation =  args[1]
    local job = "army"
    local job2 = Character.job
    if job == job2 then
      TriggerClientEvent('syn_cannon:rotate', rotation)
    else return false end
  end
end)



RegisterCommand("cannon1",function()
  local _source = source
    local Character = VorpCore.getUser(_source).getUsedCharacter
    local rotation =  args[1]
    local job = "army"
    local job2 = Character.job
    local type = 1 
    if job == job2 then
      TriggerClientEvent('syn_cannon:spawncannon', type)
    else return false end


end)

RegisterCommand("cannon2",function()
  local _source = source
    local Character = VorpCore.getUser(_source).getUsedCharacter
    local rotation =  args[1]
    local job = "army"
    local job2 = Character.job
    local type = 2 
    if job == job2 then
      TriggerClientEvent('syn_cannon:spawncannon', type)
    else return false end

end)
