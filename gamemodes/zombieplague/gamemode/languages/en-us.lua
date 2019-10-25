local Language = {ID = "English",
	Values = 
	{
		Server = {
			ZombiesWin = "The zombies has taken the world!",
			HumansWin = "Humans defeated the plague!",
			RoundDraw = "No one has won!",
			RoundSimple = "The infection has spread!",
			RoundSwarm = "Swarm mode!",
			RoundPlague = "Plague mode!",
			NoticeFirstZombie = "%s is the first zombie !!",
			NoticeInfect = "%s's brains has been eaten by %s...",
			NoticeSelfInfect = "%s has used an T-Virus!",
			NoticeAntidote = "%s has used an antidote...",
			NoticeGetCured = "%s has been cured by %s...",
			NoticeNemesis = "%s is a Nemesis !!!",
			NoticeSurvivor = "%s is a Survivor !!!",
			NoticeSwarm = "Swarm Mode !!!",
			NoticeMulti = "MultiInfectionMode !!!",
			NoticePlague = "Plague Mode!",
			NoticeVotemapEnded = "Votemap has ended! %s will be the next map!",
			NoticeNotAllowed = "You're not allowed to do this right now!",
			NoticeHasHability = "Your class has an special ability! Type: zp_ability in console to use!",
			LastZombieLeft = "The last zombie has left, %s is the new zombie",
			LastHumanLeft = "The last human has left, %s is the new human.",
			ExtraItemCantBuy = "You can't buy this extra item right now!",
			ExtraItemEnought = "You don't have enought ammo packs to buy this!",
			ExtraItemChoose = "You need to choose a valid extra item!", -- Maybe this will never be called
			ExtraItemCantOpen = "You can't open this menu right now",
			ExtraItemBought = "You bought: '%s'.",
			AmmoPackWithdraw = "You withdrew %d ammo packs, there's %d ammo packs left in your account.",
			AmmoPackDeposit = "You deposited %d ammo packs, now you have %d ammo packs in your account.",
			AmmoPackNotEnought = "Not enought cash stranger (Or ammo packs)!",
			AmmoPackGivePlyNotFound = "Player not found!",
			AmmoPackGiveInvalidAmount = "Invalid amount.",
			AmmoPackGiveName = "%s gave you %d ammo packs!",
			AmmoPackTakeName = "%s took %d of your ammo packs!",
			AmmoPackNoAmmoPacks = "Your account has no ammo packs!",
			AmmoPackBalance = "Your balance is %d ammo packs!",
			AmmoPackPlayerNotFound = "Player '%s' not found!",
			AmmoPackGiverMessage = "You gave %d to %s!",
			CommandInvalidArgument = "Invalid argument for this command!",
			CommandNotAccess = "You don't have access to this command!",
		},
		Client = {
			ClassClass = "Class",
			ClassHealth = "Health",
			ClassArmor = "Armor",
			ClassGravity = "Gravity",
			ClassRunSpeed = "Run Speed",
			ClassSpeed = "Speed",
			ClassBattery = "Battery",
			AP = "Ammo Packs",
			APNotEnought = "You dont have enough ammo packs",
			MenuZombieChoose = "Zombie Class Menu",
			MenuHumanChoose = "Human Class Menu",
			MenuWeaponChoose = "Weapon Choose Menu",
			MenuExtraItemChoose = "Extra Items",
			MenuLanguageChoose = "Language Choose Menu",
			MenuRoundChoose = "Round Choose Menu",
			MenuSpectator = "Join Spectators",
			MenuNonSpectator = "Join Players",
			MenuAdmin = "Admin Menu",
			MenuAdminGiveAmmoPacks = "Give Ammo Packs",
			MenuBack = "Back",
			MenuNext = "Next",
			MenuClose = "Close"
		}
	}
}
Dictionary:AddLanguage(Language)