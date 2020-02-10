Commands = {CommandList = {}}

function Commands:AddCommand(Command, Description, Function, Help, Private)
	if (type(Command) != "table") then Command = {Command} end
	for k, Com in pairs(Command) do
		if !Commands.CommandList[Com] then
			Commands.CommandList[Com] = {Description = Description, Function = Function, Help = (Help and Help or ""), Private = Private}
		end
	end
end
Commands:AddCommand("commands", "Print the server's commands.", function(ply, args)
	SendColorMessage(ply, "Server's command list has been printed!", Color(255, 255, 0))
	local StringCommands = "--------------------------Commands--------------------------\n"
	for k, v in pairs(Commands.CommandList) do
		if v.Private then
			if ply:IsSuperAdmin() then
				StringCommands = StringCommands .. k .. " - Description: " .. v.Description .. " - Sintax: /" .. k .. " " .. v.Help .. "\n"
			end
		else
			StringCommands = StringCommands .. k .. " - Description: " .. v.Description .. " - Sintax: /" .. k .. " " .. v.Help .. "\n"
		end
	end
	SendConsoleMessage(ply, StringCommands .. "------------------------------------------------------------")
end)
if DEBUG_MODE then
	Commands:AddCommand("bot", "Print the server's commands.", function(ply, args)
		RunConsoleCommand("bot")
		RunConsoleCommand("bot")
		RunConsoleCommand("bot")
		RunConsoleCommand("bot")
		RunConsoleCommand("bot")
		RunConsoleCommand("bot")
		RunConsoleCommand("bot")
		RunConsoleCommand("bot")
		RunConsoleCommand("bot")
		RunConsoleCommand("bot_zombie", "1")

		timer.Create("bot", 1, 1, function()
			for k, Bot in pairs(player.GetBots()) do
				RoundManager:AddPlayerToPlay(Bot)
			end
		end)
	end)
end
hook.Add("PlayerSay", "Commands", function(ply, txt)
	local args = string.Explode(" ", string.lower(txt))
	if string.sub(args[1], 1, 1) == "/" || string.sub(args[1], 1, 1) == "!" then
		local Command = Commands.CommandList[string.sub(args[1], 2, string.len(args[1]))]
		table.remove(args, 1)
		if Command then
			if args[1] == "help" || args[1] == "ajuda" then
				SendColorMessage(ply, "Help:\n" .. Command.Help, Color(255, 255, 0))
			else
				Command.Function(ply, args)
			end
			if Command.Private then
				return ""
			end
		end
	end
end)