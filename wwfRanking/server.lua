-- Project started with this ranks
-- All the called Tables here are MySQL Views made from the Scoreboard Table

Framework.Functions.CreateCallback('wwfRankboard:GetAllWanteds', function(src, cb)
    local object = {}
    local wait = true
    exports['ghmattimysql']:execute('SELECT * FROM `pepe-framework`.top_gangster where Score not like 0 limit 10', {}, function(result)
        object.cars = result        
    end)
	exports['ghmattimysql']:execute('SELECT * FROM `pepe-framework`.top_worker where Score not like 0 limit 10', {}, function(result2)
        object.peoples = result2				
    end)
	exports['ghmattimysql']:execute('SELECT * FROM `pepe-framework`.top_arrests where Score not like 0 limit 3', {}, function(result3)
        object.arrests = result3				
    end)
	exports['ghmattimysql']:execute('SELECT * FROM `pepe-framework`.top_police where Score not like 0 limit 10', {}, function(result4)
		object.cops = result4
		--wait = false
	end)
	exports['ghmattimysql']:execute('SELECT * FROM `pepe-framework`.top_inpounded where Score not like 0 limit 3', {}, function(result5)
		object.inpounded = result5
		--wait = false
	end)
	exports['ghmattimysql']:execute('SELECT * FROM `pepe-framework`.top_handcufd where Score not like 0 limit 3', {}, function(result6)
		object.handcufd = result6
		--wait = false
	end)
	exports['ghmattimysql']:execute('SELECT * FROM `pepe-framework`.most_jail_time where Score not like 0 limit 3', {}, function(result7)
		object.most_jail_time = result7
		--wait = false
	end)
	exports['ghmattimysql']:execute('SELECT * FROM `pepe-framework`.top_taxi where Score not like 0 limit 3', {}, function(result8)
		object.taxi_rank = result8
		--wait = false
	end)
	exports['ghmattimysql']:execute('SELECT * FROM `pepe-framework`.fish_rank where Score not like 0 limit 3', {}, function(result9)
		object.fish_rank = result9
		--wait = false
	end)
	exports['ghmattimysql']:execute('SELECT * FROM `pepe-framework`.coca_leafs_picked where Score not like 0 limit 3', {}, function(result10)
		object.coca_leafs_picked = result10
		--wait = false
	end)
	exports['ghmattimysql']:execute('SELECT * FROM `pepe-framework`.locks where Score not like 0 limit 3', {}, function(result11)
		object.locks = result11
		--wait = false
	end)
	exports['ghmattimysql']:execute('SELECT * FROM `pepe-framework`.tow_rank where Score not like 0 limit 3', {}, function(result12)
		object.tow_rank = result12
		--wait = false
	end)
	local player = Framework.Functions.GetPlayer(src)
	local citid = player.PlayerData.citizenid
	print("citid", citid)
	exports['ghmattimysql']:execute('SELECT * FROM `pepe-framework`.scoreboard_profiles WHERE citizenid=@citizenid', {['@citizenid'] = citid}, function(result13)
		object.profiles = result13
		--wait = false
	end, citid)
	exports['ghmattimysql']:execute('SELECT * FROM `pepe-framework`.car_steals where Score not like 0 limit 3', {}, function(result14)
		object.car_steals = result14
		--wait = false
	end)
	exports['ghmattimysql']:execute('SELECT * FROM `pepe-framework`.most_jewels where Score not like 0 limit 3', {}, function(result15)
		object.most_jewels = result15
		--wait = false
	end)
	exports['ghmattimysql']:execute('SELECT * FROM `pepe-framework`.houses_robed where Score not like 0 limit 3', {}, function(result16)
		object.houses_robed = result16
		--wait = false
	end)
	exports['ghmattimysql']:execute('SELECT * FROM `pepe-framework`.most_materials where Score not like 0 limit 3', {}, function(result17)
		object.most_materials = result17
		--wait = false
	end)
	exports['ghmattimysql']:execute('SELECT * FROM `pepe-framework`.garbage_rank where Score not like 0 limit 3', {}, function(result18)
		object.garbage_rank = result18
		--wait = false
	end)
	exports['ghmattimysql']:execute('SELECT * FROM `pepe-framework`.trucker_rank where Score not like 0 limit 3', {}, function(result19)
		object.trucker_rank = result19
		--wait = false
	end)
	exports['ghmattimysql']:execute('SELECT * FROM `pepe-framework`.pizza_rank where Score not like 0 limit 3', {}, function(result20)
		object.pizza_rank = result20
		wait = false
	end)
	exports['ghmattimysql']:execute('SELECT * FROM `pepe-framework`.scoreboard_profiles2 WHERE citizenid=@citizenid', {['@citizenid'] = citid}, function(result21)
		object.profiles2 = result21
		--wait = false
	end, citid)
	exports['ghmattimysql']:execute('SELECT * FROM `pepe-framework`.scoreboard_profiles3 WHERE citizenid=@citizenid', {['@citizenid'] = citid}, function(result22)
		object.profiles3 = result22
		--wait = false
	end, citid)
	exports['ghmattimysql']:execute('SELECT * FROM `pepe-framework`.scoreboard_profile_top where citizenid=@citizenid', {['@citizenid'] = citid}, function(result23)
        object.profile4 = result23
        --wait = false
    end, citid)
	exports['ghmattimysql']:execute('SELECT * FROM `pepe-framework`.seeds_planted limit 3', {['@citizenid'] = citid}, function(result24)
        object.seeds_planted = result24
        --wait = false
    end, citid)
	exports['ghmattimysql']:execute('SELECT * FROM `pepe-framework`.weed_bags limit 3', {['@citizenid'] = citid}, function(result25)
        object.weed_bags = result25
        --wait = false
    end, citid)
	exports['ghmattimysql']:execute('SELECT * FROM `pepe-framework`.deaths limit 3', {['@citizenid'] = citid}, function(result26)
        object.deaths = result26
        wait = false
    end, citid)

    Wait(500) 
    cb(object)
end)
