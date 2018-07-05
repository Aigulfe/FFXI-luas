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
		--'Polearm','AxeShield', 'SwordShield', 'ClubShield'
		sets.Weapons.Index = {'GS', 'GA', 'SwordShield'}
		Weapons_ind = 1
		
		sets.Weapons.GS = {main="Raetic Algol", sub ="Utu Grip"}
		
		sets.Weapons.GA = {main ="Chango", sub ="Utu Grip"}
		
		sets.Weapons.Polearm = {main ="Blurred Lance", sub ="Utu Grip"}
		
		sets.Weapons.AxeShield = {main ="Purgation", sub ="Blurred Shield"}
		
		sets.Weapons.SwordShield = {main ="Reikiko", sub ="Blurred Shield"}
		
		sets.Weapons.ClubShield = {main ="Loxotic Mace", sub ="Blurred Shield"}
               
        --Idle Sets--  
        sets.Idle = {}
       
        sets.Idle.index = {'Standard','DT'}
        Idle_ind = 1                  
       
        sets.Idle.Standard = {
		ammo="Staunch Tathlum",
    head={ name="Valorous Mask", augments={'Accuracy+21 Attack+21','Weapon skill damage +3%','INT+1','Accuracy+9','Attack+10',}},
    body="Arke Corazza",
    hands="Sulev. Gauntlets +2",
    legs="Sulev. Cuisses +2",
    feet="Hermes' Sandals",
    neck="Sanctity Necklace",
    waist="Flume Belt +1",
    left_ear="Odnowa Earring +1",
	right_ear="Etiolation Earring",
    left_ring="Defending Ring",
    right_ring="Moonbeam Ring",
    back="Moonbeam Cape",
}
                                                 
        sets.Idle.DT = { 
		ammo="Staunch Tathlum",
    head="Sulevia's Mask +2",
    body="Arke Corazza",
    hands="Sulev. Gauntlets +2",
    legs="Sulev. Cuisses +2",
    feet="Sulevia's Leggings +2",
    neck="Sanctity Necklace",
    waist="Flume Belt +1",
    left_ear="Odnowa Earring +1",
	right_ear="Etiolation Earring",
    left_ring="Defending Ring",
    right_ring="Moonbeam Ring",
    back="Moonbeam Cape",
}
										
							
        --TP Sets--
        sets.TP = {}
 
           sets.TP.index = {'Standard', 'DT', 'DTAccuracy', 'AccuracyMid', 'AccuracyFull', 'DW', 'Zulfiqar', }
                --1=Standard, 2 = AccuracyMid, 3=AccuracyFull, 4=DT, 5=DTAccuracy--
				
                TP_ind = 1
			
			sets.TP.Standard = {
	ammo="Ginsen",
    head="Flam. Zucchetto +2",
	body={ name="Agoge Lorica +3", augments={'Enhances "Aggressive Aim" effect',}},
    hands="Sulev. Gauntlets +2",
    legs="Pumm. Cuisses +3",
    feet="Pumm. Calligae +3",
    neck="Lissome Necklace",
    waist="Ioskeha Belt +1",
    left_ear="Cessance Earring",
    right_ear="Brutal Earring",
    left_ring="Flamma Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Occ. inc. resist. to stat. ailments+10',}},
}

sets.TP.DW = {
	ammo="Ginsen",
    head="Flam. Zucchetto +2",
	body={ name="Agoge Lorica +3", augments={'Enhances "Aggressive Aim" effect',}},
    hands="Sulev. Gauntlets +2",
    legs="Pumm. Cuisses +3",
    feet="Pumm. Calligae +3",
    neck="Lissome Necklace",
    waist="Ioskeha Belt +1",
    left_ear="Cessance Earring",
    right_ear="Suppanomimi",
    left_ring="Flamma Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Occ. inc. resist. to stat. ailments+10',}},
}

sets.TP.Zulfiqar = {
	ammo="Ginsen",
    head="Flam. Zucchetto +2",
	body={ name="Agoge Lorica +3", augments={'Enhances "Aggressive Aim" effect',}},
    hands="Sulev. Gauntlets +2",
    legs="Pumm. Cuisses +3",
    feet="Pumm. Calligae +3",
    neck="Lissome Necklace",
    waist="Ioskeha Belt +1",
    left_ear="Cessance Earring",
    right_ear="Telos Earring",
    left_ring="Flamma Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Occ. inc. resist. to stat. ailments+10',}},
}
                                                       
                                                       
               sets.TP.AccuracyMid = {
	ammo="Ginsen",
	head="Flam. Zucchetto +2",
    body={ name="Agoge Lorica +3", augments={'Enhances "Aggressive Aim" effect',}},
    hands="Sulev. Gauntlets +2",
    legs="Pumm. Cuisses +3",
    feet="Pumm. Calligae +3",
    neck="Lissome Necklace",
    waist="Ioskeha Belt +1",
    left_ear="Cessance Earring",
    right_ear="Telos Earring",
    left_ring="Flamma Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Occ. inc. resist. to stat. ailments+10',}},
}
       
                sets.TP.AccuracyFull = {
	ammo="Seeth. Bomblet +1",
    head="Flam. Zucchetto +2",
    body="Pumm. Lorica +3",
    hands="Pumm. Mufflers +2",
    legs="Pumm. Cuisses +3",
    feet="Pumm. Calligae +3",
    neck="Sanctity Necklace",
    waist="Olseni Belt",
    left_ear="Digni. Earring",
    right_ear="Telos Earring",
    left_ring="Regal Ring",
    right_ring="Cacoethic Ring +1",
    back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Occ. inc. resist. to stat. ailments+10',}},
}
                                                       
                sets.TP.DT = {
	ammo="Staunch Tathlum",
    head="Sulevia's Mask +2",
	neck="Loricate Torque +1", 
	left_ear="Odnowa Earring +1",
	right_ear="Etiolation Earring",
    body="Arke Corazza",
	hands="Sulev. Gauntlets +2",
	left_ring="Defending Ring",
    right_ring="Moonbeam Ring",
	waist="Ioskeha Belt +1",
	legs="Sulev. Cuisses +2",
	feet="Sulevia's Leggings +2",
	back="Moonbeam Cape",
	}
                                 
                sets.TP.DTAccuracy = {
	ammo="Ginsen",
    head="Sulevia's Mask +2",
	neck="Lissome Necklace",
	left_ear="Odnowa Earring +1",
	right_ear="Telos Earring",	
	body="Arke Corazza",
	hands="Sulev. Gauntlets +2",
	left_ring="Flamma Ring",
	right_ring="Niqmaddu Ring",
    waist="Ioskeha Belt +1",
	legs="Sulev. Cuisses +2",
	feet="Sulevia's Leggings +2",
	back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Occ. inc. resist. to stat. ailments+10',}},
}
                                                         
									
       --Weaponskill Sets--
        sets.WS = {}
       
        sets.Resolution = {}
		
		sets.Resolution.Index ={'Attack'}
		
		Reso_ind= 1
		
		sets.Resolution.Attack = {
	ammo="Seeth. Bomblet +1",
    head="Flam. Zucchetto +2",
    body={ name="Argosy Hauberk +1", augments={'STR+12','Attack+20','"Store TP"+6',}},
    hands={ name="Argosy Mufflers +1", augments={'STR+20','"Dbl.Atk."+3','Haste+3%',}},
    legs={ name="Argosy Breeches +1", augments={'STR+12','Attack+25','"Store TP"+6',}},
    feet="Pumm. Calligae +3",
    neck="Fotia Gorget", 
    waist="Fotia Belt",
    left_ear="Moonshade Earring",
	right_ear="Cessance Earring",
    left_ring="Regal Ring",
	right_ring="Niqmaddu Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
}
		
                                                           
        sets.Ukkos = {} 
		sets.Ukkos.Index ={'Attack'}
		
		Ukkos_Ind = 1
		
		sets.Ukkos.Attack = {
		ammo="Yetshila",
        head="Boii Mask +1", 
		neck="Rancor Collar", 
		left_ear="Moonshade Earring",
		right_ear="Telos Earring",
        body={ name="Argosy Hauberk +1", augments={'STR+12','Attack+20','"Store TP"+6',}},
		hands={ name="Argosy Mufflers +1", augments={'STR+20','"Dbl.Atk."+3','Haste+3%',}},
		ring1="Regal Ring",
		ring2="Niqmaddu Ring",
        back="Cichol's Mantle",
		waist="Grunfeld Rope",
		legs={ name="Argosy Breeches +1", augments={'STR+12','Attack+25','"Store TP"+6',}},
		feet="Thereoid Greaves",
		back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
}

sets.FBreak = {} 
		sets.FBreak.Index ={'Attack'}
		
		FBreak_Ind = 1
		
		sets.FBreak.Attack = {
		ammo="Pemphredo Tathlum",
		head="Flam. Zucchetto +2",
		body="Flamma Korazin +2",
		hands="Flam. Manopolas +2",
		legs="Flamma Dirs +2",
		feet="Flam. Gambieras +2",
		neck="Sanctity Necklace",
		waist="Eschan Stone",
		left_ear="Moonshade Earring",
		right_ear="Enchntr. Earring +1",
		ring1="Regal Ring",
		ring2="Niqmaddu Ring",
        back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
}

		sets.KJ = {}
		sets.KJ.Index ={'Attack'}
		
		KJ_Ind= 1
		
		sets.KJ.Attack = {
	ammo="Seeth. Bomblet +1",
    head="Flam. Zucchetto +2",
    body={ name="Argosy Hauberk +1", augments={'STR+12','Attack+20','"Store TP"+6',}},
    hands={ name="Argosy Mufflers +1", augments={'STR+20','"Dbl.Atk."+3','Haste+3%',}},
    legs={ name="Argosy Breeches +1", augments={'STR+12','Attack+25','"Store TP"+6',}},
    feet="Pumm. Calligae +3",
    neck="Fotia Gorget", 
    waist="Grunfeld Rope",
    left_ear="Moonshade Earring",
	right_ear="Brutal Earring",
    left_ring="Regal Ring",
	right_ring="Niqmaddu Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
}
									
    	sets.Upheaval = {}
		sets.Upheaval.Index ={'Attack'}
		Upheaval_ind= 1
		sets.Upheaval.Attack = {
	ammo="Knobkierrie",
    head={ name="Agoge Mask +3", augments={'Enhances "Savagery" effect',}},
    body="Pumm. Lorica +3",
    hands={ name="Odyssean Gauntlets", augments={'Accuracy+20 Attack+20','Weapon skill damage +2%','VIT+10',}},
    legs="Pumm. Cuisses +3",
    feet="Sulev. Leggings +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    left_ring="Regal Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Cichol's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%',}},
}
        
		sets.SB ={}
		sets.SB.Attack = {
	ammo="Knobkierrie",
    head={ name="Agoge Mask +3", augments={'Enhances "Savagery" effect',}},
	neck="Caro Necklace", 
	left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
	body="Pumm. Lorica +3",
	hands={ name="Odyssean Gauntlets", augments={'Weapon skill damage +3%','STR+6','Accuracy+14','Attack+11',}},
	left_ring="Regal Ring",
    right_ring="Niqmaddu Ring",
    waist="Prosilio Belt +1",
	legs={ name="Argosy Breeches +1", augments={'STR+12','Attack+25','"Store TP"+6',}},
	feet="Sulevia's Leggings +2",
	back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
}
	
        --Ninja Magic Sets--
        sets.NINMagic = {}
       				
	    sets.NINMagic.Utsusemi ={
    ammo="Sapience Orb",
	head="Carmine Mask +1", 
	body={ name="Odyss. Chestplate", augments={'Mag. Acc.+18','"Fast Cast"+5','"Mag.Atk.Bns."+3',}},
	hands="Leyline Gloves",
	--legs="Odyssean Cuisses",
	feet={ name="Odyssean Greaves", augments={'"Mag.Atk.Bns."+17','"Fast Cast"+5','AGI+2',}},
	neck="Magora",
	left_ear="Enchntr. Earring +1",
    right_ear="Etiolation Earring",
	left_ring="Rahab Ring",
	right_ring="Kishar Ring", 
	--back="Swith Cape"
	}
 
                                              
        --Utility Sets--
        sets.Utility = {}
       
        sets.Utility.Weather = {waist="Hachirin-no-obi",back="Twilight Cape"}
 
        sets.Utility.MB = {head="Herculean Helm",body="Amalric Doublet",ear1="Static Earring",ring1="Locus Ring",ring2="Mujin Band"}
 
       
        sets.Utility.Stoneskin = {head="Haruspex hat",neck="Stone Gorget",ear1="Loquac. earring",ear2="Earthcry earring",
                                                          body="Assim. jubbah +1",hands="Stone Mufflers",ring1="Rahab ring",
                                                          back="Swith cape",waist="Siegel sash",legs="Haven hose",feet="Valorous Greaves"}
                                                         
        sets.Utility.Phalanx = {head="Haruspex hat",neck="Colossus's torque",ear1="Loquac. earring",ear2="Augment. earring",
                                                    body="Assim. jubbah +1",hands="Ayao's gages",ring1="Rahab ring",
                                                        back="Swith cape",waist="Pythia sash +1",legs="Portent pants",feet="Valorous Greaves"}
                                                       
        sets.Utility.Steps = {ammo="Ginsen",
							head="Boii Mask +1", body="Valorous Mail", hands="Rawhide Gloves",legs=="Odyssean Cuisses", feet="Valorous Greaves", neck="Subtlety Spec.",waist="Chaac Belt", left_ear="Heartseeker Earring",right_ear="Dignitary's Earring", left_ring="Yacuruna Ring", right_ring="Cacoethic Ring",  back="Cichol's Mantle",}
                                                 
		sets.Utility.Doomed = {waist="Gishdubar Sash", ring1 ="Saida Ring"}
		
		sets.Utility.Enmity = {ammo="Sapience Orb",
								left_ear = "Cryptic Earring",
								right_ear ="Friomisi Earring", 
								back ="Agema Cape",
								waist ="Sinew Belt",
								right_ring="Begrudging Ring",
								neck = "Unmoving Collar +1",
								hands="Pumm. Mufflers +2",
								feet={ name="Eschite Greaves", augments={'HP+80','Enmity+7','Phys. dmg. taken -4',}},
								body="Souveran Cuirass",
								left_ring="Apeile Ring +1",
								right_ring="Apeile Ring",
								legs="Souveran Diechlings",
								head="Pummeler's Mask +2",
								}
		
		sets.Utility.Sleeping = {neck="Opo-Opo Necklace"}
        --Job Ability Sets--
       
        sets.JA = {}
               
		sets.JA.Berserk ={back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}}, feet={ name="Agoge Calligae +2", augments={'Enhances "Tomahawk" effect',}}, body="Pumm. Lorica +3",}

		sets.JA.Aggressor = { head="Pummeler's Mask +2", body={ name="Agoge Lorica +3", augments={'Enhances "Aggressive Aim" effect',}},}
		
		sets.JA.Warcry = {head={ name="Agoge Mask +3", augments={'Enhances "Savagery" effect',}},}		
		
		sets.JA.MightyStrikes = {hands = "Agoge Mufflers +1"}
		
		sets.JA.Ret ={hands="Pumm. Mufflers +2",feet = "Boii Calligae +1"}
		
		sets.JA.BloodRage ={body ="Boii Lorica +1"}
		
		sets.JA.Tomahawk = {ammo = "Throwing Tomahawk",feet = "Agoge Calligae +1", waist ="Chaac Belt"}
		
		sets.JA.Defender = {hands={ name="Agoge Mufflers +2", augments={'Enhances "Mighty Strikes" effect',}},}

		sets.JA.Restraint ={}
        --Precast Sets--
        sets.precast = {}
       
        sets.precast.FC = {
		ammo="Sapience Orb",
	head="Carmine Mask +1", 
	body={ name="Odyss. Chestplate", augments={'Mag. Acc.+18','"Fast Cast"+5','"Mag.Atk.Bns."+3',}},
	hands="Leyline Gloves",
	legs={ name="Eschite Cuisses", augments={'"Mag.Atk.Bns."+25','"Conserve MP"+6','"Fast Cast"+5',}},
	feet={ name="Odyssean Greaves", augments={'"Mag.Atk.Bns."+17','"Fast Cast"+5','AGI+2',}},
	neck="Magoraga Beads",
	left_ear="Enchntr. Earring +1",
    right_ear="Etiolation Earring",
	left_ring="Rahab Ring",
	right_ring="Kishar Ring", 
	}
       
       sets.precast.FC.Standard = { 
	ammo="Sapience Orb",
	head="Carmine Mask +1", 
	body={ name="Odyss. Chestplate", augments={'Mag. Acc.+18','"Fast Cast"+5','"Mag.Atk.Bns."+3',}},
	hands="Leyline Gloves",
	legs={ name="Eschite Cuisses", augments={'"Mag.Atk.Bns."+25','"Conserve MP"+6','"Fast Cast"+5',}},
	feet={ name="Odyssean Greaves", augments={'"Mag.Atk.Bns."+17','"Fast Cast"+5','AGI+2',}},
	neck="Orunmila's Torque",
	left_ear="Enchntr. Earring +1",
    right_ear="Etiolation Earring",
	left_ring="Rahab Ring",
	right_ring="Kishar Ring", 
	}
       
end
 
  
function precast(spell)
        if spell.action_type == 'Magic' then
                equip(sets.precast.FC)    
        elseif spell.english == 'Resolution' or spell.english == 'Shockwave' or spell.english == 'Stardiver' or spell.english == 'Ruinator' or spell.english =='Fell Cleave' then
                equip(sets.Resolution.Attack)
        elseif spell.english == "Ukko's Fury" then
                equip(sets.Ukkos.Attack)
				elseif spell.english == "Full Break" or spell.english == 'Armor Break' or spell.english == 'Shockwave'  then
                equip(sets.FBreak.Attack)
		elseif spell.english == 'Savage Blade' or spell.english == 'Ground Strike' or spell.english == 'Steel Cyclone' then
			equip(sets.SB.Attack)
		elseif spell.english == "King's Justice"  then
                equip(sets.KJ.Attack)
        elseif spell.english == "Upheaval" or spell.english =='Power Slash' or spell.english =='Scourge' then
			equip(sets.Upheaval.Attack)
		elseif spell.english =='Berserk' then
			equip(set_combine(sets.Utility.Enmity,sets.JA.Berserk))
		elseif spell.english =='Aggressor' then
			equip(set_combine(sets.Utility.Enmity,sets.JA.Aggressor))
		elseif spell.english =='Warcry' then
			equip(set_combine(sets.Utility.Enmity,sets.JA.Warcry))
		elseif spell.english =='Tomahawk' then
			equip(set_combine(sets.Utility.Enmity,sets.JA.Tomahawk))
		elseif spell.english =='Defender' then
			equip(sets.JA.Defender)
		elseif spell.english =='Blood Rage' then
			equip(set_combine(sets.Utility.Enmity,sets.JA.BloodRage))
		elseif spell.english =='Mighty Strikes' then
			equip(set_combine(sets.Utility.Enmity,sets.JA.MightyStrikes))
		elseif spell.english =='Provoke' then
			equip(sets.Utility.Enmity)
		elseif spell.english == 'Box Step' then
                equip(sets.Utility.Steps)
		elseif spell.type == 'Weapon Skill' then
			equip(sets.Resolution.Attack)
		else 
			equip(sets.precast.FC)

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
