-- Started with this ranks


RegisterNUICallback('Login', function()
print("Login")
    --if CheckPerm() then return end
		local xPlayer = Framework.Functions.GetPlayerData()
		print("xPlayer", xPlayer)
		Framework.Functions.TriggerCallback('wwfRankboard:GetAllWanteds', function(obj)
			SendNuiMessage(json.encode({
				type = 'LoginUpdate',
				name = string.gsub(xPlayer.name, "_", " "),
				rank = PlayerData.job.grade_label,
				PeopleWanteds = obj.peoples,
				WantedCars = obj.cars,
				WantedCops = obj.cops,
				WantedArrests = obj.arrests,
				WantedInpounded = obj.inpounded,
				WantedHandcufd = obj.handcufd, 
				Wantedmost_jail_time = obj.most_jail_time,
				Wantedtaxi_rank = obj.taxi_rank,
				Wantedfish_rank = obj.fish_rank,
				Wantedcoca_leafs_picked = obj.coca_leafs_picked,
				Wantedlocks = obj.locks,
				Wantedtow_rank = obj.tow_rank,
				Wantedprofiles = obj.profiles,
				Wantedprofiles2 = obj.profiles2,
				Wantedprofiles3 = obj.profiles3,
				Wantedcarsteals = obj.car_steals,							
				Wantedmost_jewels = obj.most_jewels,
				Wantedhouses_robed = obj.houses_robed,				
				Wantedmost_materials = obj.most_materials,
				Wantedgarbage_rank = obj.garbage_rank,
				Wantedtrucker_rank = obj.trucker_rank,
				Wantedpizza_rank = obj.pizza_rank,
				Wantedprofile4 = obj.profile4,				
				Wantedseeds_planted = obj.seeds_planted,
				Wantedweed_bags = obj.weed_bags,
				
				Wanteddeaths = obj.deaths,
				
			})) 
		end)
end)
