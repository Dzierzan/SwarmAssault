Tick = function()

end

WorldLoaded = function()

	Camera.Position = Actor263.CenterPosition

	Wasps = Player.GetPlayer("Wasps")
	Trigger.AfterDelay(DateTime.Seconds(6), function()
		Wasps.GrantCondition("enable-wasps-ai")

	end)

end