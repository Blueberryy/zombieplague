ZPClass.Name = "ZombieJumperClassName"
ZPClass.Description = "ZombieJumperClassDescription"
ZPClass.MaxHealth = 150
ZPClass.PModel = "models/player/zombie_classic.mdl"
ZPClass.Speed = 240
ZPClass.RunSpeed = 260
ZPClass.CrouchSpeed = 0.5
ZPClass.Gravity = 1
ZPClass.Breath = 50
ZPClass.AbilityRecharge = 30
function ZPClass:Ability(ply)
	local OldJumpPower = ply:GetJumpPower()
	ply:SetJumpPower(400)
	
	timer.Create("JumpPower" .. ply:SteamID64(), 10, 1, function()
		if IsValid(ply) then
			ply:SetJumpPower(OldJumpPower)
		end
	end)
end

if(ZPClass:ShouldBeEnabled()) then
	ClassManager:AddZPClass("JumperZombie", ZPClass, TEAM_ZOMBIES)
end