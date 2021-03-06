local unpauser = {}
unpauser.optionEnable = Menu.AddOptionBool({"Utility"}, "Unpauser", false)

function unpauser.OnUpdate()
	if not Menu.IsEnabled(unpauser.optionEnable) or not Engine.IsInGame() or not Heroes.GetLocal() then return end
	if GameRules.IsPaused() then 
		Engine.ExecuteCommand("dota_pause")
		sleep(1)
	end
end

function sleep(n)  -- seconds
  local t0 = clock()
  while clock() - t0 <= n do end
end

return unpauser