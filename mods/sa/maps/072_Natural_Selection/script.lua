BotDelay =
{
	easy = 15,
	normal = 6,
	hard = 3
}

WorldLoaded = function()
	Camera.Position = Actor161.CenterPosition
	Ants = Player.GetPlayer("Ants")
	Wasps = Player.GetPlayer("Wasps")
	Trigger.AfterDelay(DateTime.Seconds(BotDelay[Map.LobbyOption("difficulty")]), function()
		Ants.GrantCondition("enable-ants-ai")
		Wasps.GrantCondition("enable-wasps-ai")
	end)
end
