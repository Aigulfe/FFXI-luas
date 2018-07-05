function get_sets()

 

        send_command('bind f9 gs c toggle TP set')

        send_command('bind f10 gs c toggle Idle set')

		send_command('bind f11 gs c toggle Weapons')

         function file_unload()

    

        send_command('unbind ^f9')

        send_command('unbind ^f10')

		send_command('unbind ^f11')



        send_command('unbind !f9')

        send_command('unbind !f10')

		send_command('unbind !f11')

		

        send_command('unbind f9')

        send_command('unbind f10')

		send_command('unbind f11')

 

        end    

		

		--Weapons--

		

		sets.Weapons = {}

		

		sets.Weapons.Index = {'GK', 'Polearm'}

		Weapons_ind = 1

		

		sets.Weapons.GK = {main ="Dojikiri Yasutsuna", sub ="Utu Grip"}

		

		sets.Weapons.Polearm = {main ="Exalted Spear", sub ="Utu Grip"}

	

               

        --Idle Sets--  

        sets.Idle = {}

       

        sets.Idle.index = {'Standard','DT'}

        Idle_ind = 1                  

       

        sets.Idle.Standard = {
	ammo="Staunch Tathlum",
    head="Wakido Kabuto +3",
    body="Hiza. Haramaki +2",
    hands={ name="Founder's Gauntlets", augments={'STR+10','Attack+15','"Mag.Atk.Bns."+15','Phys. dmg. taken -5%',}},
    legs="Ken. Hakama",
    feet={ name="Amm Greaves", augments={'HP+50','VIT+10','Accuracy+15','Damage taken-2%',}},
    neck="Loricate Torque +1",
    waist="Flume Belt +1",
    left_ear="Etiolation Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Defending Ring",
    right_ring="Fortified Ring",
    back="Moonbeam Cape",
}

                                                 

        sets.Idle.DT = {
	ammo="Staunch Tathlum",
    head="Ken. Jinpachi",
    body="Wakido Domaru +2",
    hands={ name="Founder's Gauntlets", augments={'STR+10','Attack+15','"Mag.Atk.Bns."+15','Phys. dmg. taken -5%',}},
    legs="Ken. Hakama",
    feet={ name="Amm Greaves", augments={'HP+50','VIT+10','Accuracy+15','Damage taken-2%',}},
    neck="Loricate Torque +1",
    waist="Flume Belt +1",
    left_ear="Etiolation Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Defending Ring",
    right_ring="Fortified Ring",
    back="Moonbeam Cape",
}

        --TP Sets--

        sets.TP = {}

 

           sets.TP.index = {'Standard', 'AccuracyMid', 'AccuracyFull', 'DT', 'DTAccuracy'}

                --1=Standard, 2 = AccuracyMid, 3=AccuracyFull, 4=DT, 5=DTAccuracy--

				

                TP_ind = 1

				sets.TP.Standard = {
	ammo="Ginsen",
    head="Flam. Zucchetto +2",
    body="Ken. Samue",
    hands="Wakido Kote +3",
    legs="Wakido Haidate +3",
    feet="Flam. Gambieras +2",
    neck="Moonbeam Nodowa",
    waist="Ioskeha Belt +1",
    left_ear="Brutal Earring",
    right_ear="Cessance Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Flamma Ring",
    back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}},
}

                                                       

                                                       

                sets.TP.AccuracyMid = {
	ammo="Ginsen",
    head="Flam. Zucchetto +2",
    body="Ken. Samue",
    hands="Wakido Kote +3",
    legs="Wakido Haidate +3",
    feet="Flam. Gambieras +2",
    neck="Moonbeam Nodowa",
    waist="Ioskeha Belt +1",
    left_ear="Telos Earring",
    right_ear="Cessance Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Flamma Ring",
    back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}},
}

       

                sets.TP.AccuracyFull = {
	ammo="Amar Cluster",
    head="Wakido Kabuto +3",
    body="Wakido Domaru +2",
    hands="Wakido Kote +3",
    legs="Wakido Haidate +3",
    feet="Flam. Gambieras +2",
    neck="Moonbeam Nodowa",
    waist="Ioskeha Belt +1",
    left_ear="Telos Earring",
    right_ear="Digni. Earring",
    left_ring="Regal Ring",
    right_ring="Cacoethic Ring +1",
    back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}},
}

                                                       

                sets.TP.DT = {
	ammo="Staunch Tathlum",
    head="Ken. Jinpachi",
    body="Wakido Domaru +2",
    hands="Wakido Kote +3",
    legs="Ken. Hakama",
    feet={ name="Amm Greaves", augments={'HP+50','VIT+10','Accuracy+15','Damage taken-2%',}},
    neck="Loricate Torque +1",
    waist="Ioskeha Belt +1",
    left_ear="Telos Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Defending Ring",
    right_ring="Fortified Ring",
    back="Moonbeam Cape",
}

                                 

                sets.TP.DTAccuracy = {
	ammo="Staunch Tathlum",
    head="Wakido Kabuto +3",
    body="Wakido Domaru +2",
    hands="Wakido Kote +3",
    legs="Ken. Hakama",
    feet="Flam. Gambieras +2",
    neck="Loricate Torque +1",
    waist="Ioskeha Belt +1",
    left_ear="Telos Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Defending Ring",
    right_ring="Fortified Ring",
    back="Moonbeam Cape",
}

                                                         

									

       --Weaponskill Sets--

        sets.WS = {}

		

		sets.OneHit = {}

		

		sets.OneHit.Attack = {
	ammo="Knobkierrie",
    head={ name="Valorous Mask", augments={'Accuracy+21 Attack+21','Weapon skill damage +3%','INT+1','Accuracy+9','Attack+10',}},
    body="Sulevia's Plate. +2",
    hands={ name="Valorous Mitts", augments={'Attack+24','Weapon skill damage +2%','STR+10','Accuracy+13',}},
	--hands={ name="Valorous Mitts", augments={'Attack+30','Sklchn.dmg.+5%','STR+7','Accuracy+3',}},
    legs="Wakido Haidate +3",
    feet={ name="Valorous Greaves", augments={'Attack+17','Weapon skill damage +5%','VIT+9','Accuracy+14',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    left_ring="Niqmaddu Ring",
    right_ring="Regal Ring",
    back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
}

		

		sets.MultiHit = {}

		

		sets.MultiHit.Attack = {
	ammo="Knobkierrie",
    head="Flam. Zucchetto +2",
    body="Ken. Samue",
    hands={ name="Valorous Mitts", augments={'Attack+30','Sklchn.dmg.+5%','STR+7','Accuracy+3',}},
    legs="Ken. Hakama",
    feet="Flam. Gambieras +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    left_ring="Niqmaddu Ring",
    right_ring="Regal Ring",
    back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
}

		

		sets.HybridWS = {}

		

		sets.HybridWS.Attack = {
	ammo="Knobkierrie",
    head={ name="Valorous Mask", augments={'Accuracy+21 Attack+21','Weapon skill damage +3%','INT+1','Accuracy+9','Attack+10',}},
    body={ name="Found. Breastplate", augments={'Accuracy+15','Mag. Acc.+15','Attack+15','"Mag.Atk.Bns."+15',}},
    hands={ name="Founder's Gauntlets", augments={'STR+10','Attack+15','"Mag.Atk.Bns."+15','Phys. dmg. taken -5%',}},
    legs="Wakido Haidate +3",
    feet={ name="Founder's Greaves", augments={'VIT+10','Accuracy+15','"Mag.Atk.Bns."+15','Mag. Evasion+15',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Friomisi Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    left_ring="Niqmaddu Ring",
    right_ring="Regal Ring",
    back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
}

		sets.Flamma = {}

		sets.Flamma.Attack = {
	ammo="Pemphredo Tathlum",
    head="Flam. Zucchetto +2",
    body="Flamma Korazin +2",
    hands="Flam. Manopolas +2",
    legs="Flamma Dirs +2",
    feet="Flam. Gambieras +2",
    neck="Sanctity Necklace",
    waist="Eschan Stone",
    left_ear="Enchntr. Earring +1",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    left_ring="Niqmaddu Ring",
    right_ring="Regal Ring",
    back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
}


       

        --Ninja Magic Sets--

        sets.NINMagic = {}

       				

	    sets.NINMagic.Utsusemi ={
	neck="Magoraga Beads",
    left_ear="Etiolation Earring",
    right_ear="Enchntr. Earring +1",
    left_ring="Prolix Ring",
    right_ring="Rahab Ring",
    }

 

                                              

        --Utility Sets--

        sets.Utility = {}

       

        sets.Utility.Weather = {waist="Hachirin-no-obi",back="Twilight Cape"}

 

        sets.Utility.MB = {head="Herculean Helm",body="Amalric Doublet",ear1="Static Earring",right_ring="Locus Ring",left_ring="Mujin Band"} 

       

        sets.Utility.Stoneskin = {head="Haruspex hat",neck="Stone Gorget",ear1="Loquac. earring",ear2="Earthcry earring",

                                                          body="Assim. jubbah +1",hands="Stone Mufflers",right_ring="Rahab ring",

                                                          back="Swith cape",waist="Siegel sash",legs="Haven hose",feet="Valorous Greaves"}

                                                         

        sets.Utility.Phalanx = {head="Haruspex hat",neck="Colossus's torque",ear1="Loquac. earring",ear2="Augment. earring",

                                                    body="Assim. jubbah +1",hands="Ayao's gages",right_ring="Rahab ring",

                                                        back="Swith cape",waist="Pythia sash +1",legs="Portent pants",feet="Valorous Greaves"}

                                                       

        sets.Utility.Steps = {ammo="Ginsen",

							head="Boii Mask +1", body={ name="Valorous Mail", augments={'Accuracy+21 Attack+21','STR+10','Accuracy+15','Attack+4',}}, hands="Rawhide Gloves",legs=="Odyssean Cuisses",

							feet="Valorous Greaves", neck="Subtlety Spec.",waist="Chaac Belt", left_ear="Heartseeker Earring",

							right_ear="Dignitary's Earring", left_ring="Yacuruna Ring", right_ring="Cacoethic Ring",   back="Takaha Mantle",}

                                                 

		sets.Utility.Doomed = {waist="Gishdubar Sash", right_ring ="Saida Ring"}

		

		sets.Utility.Enmity = {ammo="Sapience Orb",

								ear2 ="Friomisi Earring", 

								back ="Weard Mantle",

								waist ="Trance belt",

								left_ring="Supershear Ring",

								neck = "Unmoving Collar",

								hands="Souveran Handschuhs",

								feet="Souveran Schuhs",

								body="Souveran Cuirass",

								right_ring="Petrov Ring",

								legs="Souveran Diechlings +1",

								head="Souveran Schaller"}

		

		sets.Utility.Sleeping = {neck="Opo-Opo Necklace"}

        --Job Ability Sets--

       

        sets.JA = {}

               

		sets.JA.Meditate ={
	head="Wakido Kabuto +3",
    hands={ name="Sakonji Kote +1", augments={'Enhances "Blade Bash" effect',}},
    back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
}



		sets.JA.Hasso = {}

		

		sets.JA.BladeBash= {hands={ name="Sakonji Kote +1", augments={'Enhances "Blade Bash" effect',}},}		

		

		sets.JA.Sekkanoki = {hands="Kasuga Kote"}

		

		sets.JA.Seigan ={}
		
		
		sets.JA.Sengikori = {feet="Kas. Sune-Ate +1",}

		



        --Precast Sets--

        sets.precast = {}

       

        sets.precast.FC = {}

       

       sets.precast.FC.Standard = {
	ammo="Sapience Orb",
	neck="Orunmila's Torque",
	legs="Arjuna Breeches",
    left_ear="Etiolation Earring",
    right_ear="Enchntr. Earring +1",
    left_ring="Prolix Ring",
    right_ring="Rahab Ring",
    }

       

end

 

  

function precast(spell)

        if spell.type == 'Magic' then

                equip(sets.precast.FC.Standard)

        elseif spell.english == 'Tachi: Fudo' or spell.english == 'Tachi: Kasha' or spell.english == 'Wheeling Thrust' or spell.english == 'Tachi: Yukikaze' or spell.english == 'Tachi: Gekko' or spell.english == 'Tachi: Shoha' then

                equip(sets.OneHit.Attack)

        elseif spell.english == "Tachi: Jinpu" or spell.english == 'Tachi: Koki' then

                equip(sets.HybridWS.Attack)

        elseif spell.english == 'Stardiver' or spell.english == 'Penta Thrust' or spell.english == 'Tachi: Rana' or spell.english == 'Tachi: Enpi' then

			equip(sets.MultiHit.Attack)
			
		elseif spell.english == 'Tachi: Ageha' then

			equip(sets.Flamma.Attack)

		elseif spell.english =='Meditate' then

			equip(sets.JA.Meditate)

		elseif spell.english =='Hasso' then

			equip(sets.JA.Hasso)

		elseif spell.english =='Blade Bash' then

			equip(set_combine(sets.Utility.Enmity,sets.JA.BladeBash))
			
		elseif spell.english =='Warding Circle' then

			equip(sets.JA.Meditate)


		elseif spell.english =='Sekkanoki' then

			equip(sets.JA.Sekkanoki)
		
		elseif spell.english =='Sengikori' then

			equip(sets.JA.Sengikori)

		elseif spell.english =='Provoke' then

			equip(sets.Utility.Enmity)

		elseif spell.english == 'Box Step' then

                equip(sets.Utility.Steps)

        elseif spell.type == 'Weapon Skill' then

			equip(sets.OneHit.Attack)
		else 
			equip(sets.precast.FC.Standard)

		end

       

end

       

function midcast(spell,act)

		if spell.skill =='Ninjutsu' then

			equip(sets.NINMagic.Nuke)

			 if spell.element == world.day_element or spell.element == world.weather_element then

                              equip(set_combine(sets.NINMagic.Nuke,sets.Utility.Weather))

                        end

		end

		

	    if spell.english == 'Utsusemi: Ichi' then

                equip(sets.NINMagic.Utsusemi)

                        if buffactive['Copy Image (3)'] then

                                send_command('@wait 0.3; input //cancel Copy Image*')

                        end

                        if buffactive['Copy Image (2)'] then

                                send_command('@wait 0.3; input //cancel Copy Image*')

                        end

                        if buffactive['Copy Image (1)'] then

                                send_command('@wait 0.3; input //cancel Copy Image*')

                        end

                        if buffactive['Copy Image'] then

                                send_command('@wait 0.3; input //cancel Copy Image*')

                        end

        end

 

        if spell.english == 'Utsusemi: Ni'  or spell.english == 'Utsusemi: San' then

                equip(sets.NINMagic.Utsusemi)

        end

end	

 

function aftercast(spell)

        if player.status == 'Engaged' then

                equip(sets.TP[sets.TP.index[TP_ind]])

				if buffactive['doom'] then

					equip(sets.Utility.Doom)

				end

				if buffactive['terror'] or buffactive['stun'] or buffactive['sleep']	then 

					equip(sets.TP.DT)

				end



		else

                equip(sets.Idle[sets.Idle.index[Idle_ind]])					

					if buffactive['doom'] then

					equip(sets.Utility.Doom)

				end

				if buffactive['terror'] or buffactive['stun'] or buffactive['sleep']	then 

					equip(sets.TP.DT)

				end



        end

end



 

function status_change(new,old)

        if player.status == 'Engaged' then

                equip(sets.TP[sets.TP.index[TP_ind]])

        else

                equip(sets.Idle[sets.Idle.index[Idle_ind]])					

        end

end 

function self_command(command)

        if command == 'toggle TP set' then

                TP_ind = TP_ind +1

                if TP_ind > #sets.TP.index then TP_ind = 1 end

                send_command('@input /echo <----- TP Set changed to '..sets.TP.index[TP_ind]..' ----->')

                equip(sets.TP[sets.TP.index[TP_ind]])

        elseif command == 'toggle Idle set' then

                Idle_ind = Idle_ind +1

                if Idle_ind > #sets.Idle.index then Idle_ind = 1 end

                send_command('@input /echo <----- Idle Set changed to '..sets.Idle.index[Idle_ind]..' ----->')

                equip(sets.Idle[sets.Idle.index[Idle_ind]])

		elseif command == 'toggle Weapons' then

                Weapons_ind = Weapons_ind +1

               if Weapons_ind > #sets.Weapons.Index then Weapons_ind = 1 end

                send_command('@input /echo <----- Weapons Set changed to '..sets.Weapons.Index[Weapons_ind]..' ----->')

                equip(sets.Weapons[sets.Weapons.Index[Weapons_ind]])

        elseif command == 'equip TP set' then

                equip(sets.TP[sets.TP.index[TP_ind]])

        elseif command == 'equip Idle set' then

                equip(sets.Idle[sets.Idle.index[Idle_ind]])

        end

end