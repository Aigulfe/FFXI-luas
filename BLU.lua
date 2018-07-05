--TP set toggle input: //gs c toggle TP set----1 Standard, 2 Solo, 3 Marches, 4 AccuracyLite, 5 AccuracyMax, 6 DT, 7 DTAccuracy--
--Nuke set toggle   ctrl F1   -- Normal, Mix, Macc -- 
--Idle set toggle input: //gs c toggle Idle set----1 Standard, 2 DT--
--Requiescat set toggle input: //gs c toggle Req set----1 Attack, 2 Accuracy--
--Chant du Cygne set toggle input: //gs c toggle CDC set----1 Attack, 2 Accuracy--

INT_Spells = S{"Foul Waters","Rending Deluge","Droning Whirlwind","Subduction","Embalming Earth","Tem. Upheaval","Thunderbolt","Dark Orb",
				"Water Bomb","Evryone. Grudge","Magic Hammer","Thermal Pulse","Corrosive Ooze","Regurgitation","Firespit",
				"Leafstorm","Gates of Hades","Retinal Glare","Blastbomb","Blazing Bound","Diffusion Ray","Rail Cannon","Foul Waters","Polar Roar",
				"Molting Plumage","Cursed Sphere","Crashing Thunder","Nectarous Deluge","Charged Whisker","Bomb toss","Tenebral Crush",
				"Spectral Floe","Blinding Fulgor","Scouring Spate","Anvil Lightning","Entomb","Silent Storm","Searing Tempest","Palling Salvo","Eyes On Me"}
Light_Nukes = S{"Blinding Fulgor","Retinal Glare","Diffusion Ray","Rail Cannon","Magic Hammer"}
				
STR_Spells = S{"Vertical Cleave","Empty Thrash","Quadrastrike","Bloodrake","Heavy Strike","Whirl of Rage","Hydro Shot"}
DEX_Spells = S{"Vanity Dive"}
STRDEX_Spells = S{"Disseverment","Frenetic Rip","Goblin Rush","Paralyzing Triad","Thrashing Assault"}
STRVIT_Spells = S{"Quad. Continuum","Delta Thrust","Cannonball","Glutinous Dart","Sinker Drill"}
Buff_Spells = S{"Cocoon","Harden Shell","Battery Charge","Nat. Meditation","Carcharian Verve","Barrier Tusk","Saline Coat","Regeneration",
"Magic Barrier","Erratic Flutter","Mighty Guard","Occultation","Magic Barrier","Diamondhide","Metallic Body","Zephyr Mantle"}
Stun_Spells = S{"Head Butt","Sudden Lunge","Bilgestorm","Benthic Typhoon","Tourbillion","Sweeping Gouge","Seedspray"}
Enfeebling_Spells = S{"Sandspray","Geist Wall","Dream Flower","Sheep Song","Frightful Roar","Blitzstrahl","Acrid Stream","Osmosis","Sound Blast",
"Cruel Joke","Absolute Terror","Blank Gaze"}
Cure_Spells = S{"Magic Fruit","Pollen","Restoral","Plenilune Embrace","Wild Carrot","Healing Breeze","White Wind",
"Sandstorm","Rainstorm","Windstorm","Firestorm","Hailstorm","Thunderstorm","Voidstorm","Aurorastorm"}
Enhancing_Spells = S{"Blink","Stoneskin","Aquaveil","Phalanx","Haste","Regen","Refresh","Ice Spikes"}




function self_command(command)
	if command == 'toggle TP set' then
		TP_ind = TP_ind +1
		if TP_ind > #sets.TP.index then TP_ind = 1 end
		send_command('@input /echo <----- TP Set changed to '..sets.TP.index[TP_ind]..' ----->')
		equip(sets.TP[sets.TP.index[TP_ind]])
	elseif command == 'toggle Nuke set' then
		Nuke_ind = Nuke_ind +1
		if Nuke_ind > #sets.Nuke.index then Nuke_ind = 1 end
		send_command('@input /echo <----- Nuke Set changed to '..sets.Nuke.index[Nuke_ind]..' ----->')
		equip(sets.Nuke[sets.Nuke.index[Nuke_ind]])
	elseif command == 'toggle Idle set' then
		Idle_ind = Idle_ind +1
		if Idle_ind > #sets.Idle.index then Idle_ind = 1 end
		send_command('@input /echo <----- Idle Set changed to '..sets.Idle.index[Idle_ind]..' ----->')
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
	elseif command == 'toggle Req set' then
		Requiescat_ind = Requiescat_ind +1
		if Requiescat_ind > #sets.Requiescat.index then Requiescat_ind = 1 end
		send_command('@input /echo <----- Requiescat Set changed to '..sets.Requiescat.index[Requiescat_ind]..' ----->')
		equip(sets.Requiescat[sets.Requiescat.index[Requiescat_ind]])
	elseif command == 'toggle CDC set' then
		ChantDuCygne_ind = ChantDuCygne_ind +1
		if ChantDuCygne_ind > #sets.ChantDuCygne.index then ChantDuCygne_ind = 1 end
		send_command('@input /echo <----- Chant du Cygne Set changed to '..sets.ChantDuCygne.index[ChantDuCygne_ind]..' ----->')
		equip(sets.ChantDuCygne[sets.ChantDuCygne.index[ChantDuCygne_ind]])
	elseif command == 'equip TP set' then
		TP_ind = 1
		TP_ind2 = 1
		equip(sets.TP[sets.TP.index[TP_ind]])
		send_command('@input /echo Changed to Standard mode')
	elseif command == 'equip Idle set' then
		TP_ind = 1
		TP_ind2 = 1
		equip(sets.Idle.Standard)
		send_command('@input /echo Changed to Idle')
	elseif command == 'equip Acc-Lite set' then
		TP_ind = 4
		TP_ind2 = 4
		equip(sets.TP[sets.TP.index[TP_ind]])
		send_command('@input /echo Changed to Acc-Lite mode')
	elseif command == 'equip Acc-Full set' then
		TP_ind = 5
		TP_ind2 = 5		
		equip(sets.TP[sets.TP.index[TP_ind]])
		send_command('@input /echo Changed to Acc-Full mode')
	elseif command == 'equip DT set' then
		TP_ind = 6		
		equip(sets.TP[sets.TP.index[TP_ind]])
		send_command('@input /echo Changed to DT mode')
	elseif command == 'equip set' then				
		equip(sets.TP[sets.TP.index[TP_ind]])
		send_command('@input /echo Current Set '..sets.TP.index[TP_ind]..' Equiped')
	elseif command == 'enable CP mode' then				
		CP_Mode = 1
		equip({back="Mercistopins mantle"})
		send_command('@input CP Mode enabled')
	elseif command == 'change debug mode' then
		if Gear_Debug == 1 then
			Gear_Debug = 0
			send_command('@input /echo Debug Mode Set to 0')
		else
			Gear_Debug = 1
			send_command('@input /echo Debug Mode Set to 1')
		end
	end
end

function buff_change(buff,gain)
 buff = string.lower(buff)
 if buff == "aftermath: lv.3" then -- AM3 Timer/Countdown --
  if gain then
   send_command('timers create "Aftermath: Lv.3" 180 down;wait 120;input /echo Aftermath: Lv.3 [WEARING OFF IN 60 SEC.];wait 30;input /echo Aftermath: Lv.3 [WEARING OFF IN 30 SEC.];wait 20;input /echo Aftermath: Lv.3 [WEARING OFF IN 10 SEC.]')
  else
   send_command('timers delete "Aftermath: Lv.3"')
   add_to_chat(123,'AM3: [OFF]')
  end
 end
end

function weathercheck(spell_element)
	if spell_element == world.weather_element or spell_element == world.day_element then
		equip({waist="Hachirin-no-Obi"})
		send_command('@input /echo Using Element Obi')
	else		
	end
end

windower.register_event('zone change', function()
    equip(sets.Idle.Standard)	
end)

function get_sets()
 
        send_command('bind ^f1 gs c toggle Nuke set')
		send_command('bind f9 gs c toggle TP set')
        send_command('bind f10 gs c toggle Idle set')
		send_command('bind f11 gs c toggle Weapons')
		

	
         function file_unload()
    
        send_command('unbind ^f1')
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
		
			--- ..:: Modes functions ::.. --->

		
		
	Gear_Debug = 0
	--Idle Sets--	
	sets.Idle = {}
	
	sets.Idle.index = {'Standard','DT'}
	Idle_ind = 1			
	
	sets.Idle.Standard = {
	ammo="Ginsen",
    head={ name="Herculean Helm", augments={'Accuracy+13','INT+2','"Refresh"+1','Accuracy+20 Attack+20','Mag. Acc.+3 "Mag.Atk.Bns."+3',}},
    body="Jhakri Robe +2",
    hands="Assim. Bazu. +3",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet={ name="Herculean Boots", augments={'Weapon skill damage +3%','Magic dmg. taken -2%','Damage taken-5%','Accuracy+16 Attack+16','Mag. Acc.+17 "Mag.Atk.Bns."+17',}},
    neck="Loricate Torque +1",
    waist="Flume Belt +1",
    left_ear="Etiolation Earring",
    right_ear="Genmei Earring",
    left_ring="Defending Ring",
    right_ring="Stikini Ring +1",
    back="Moonbeam Cape",
}
	
	sets.Idle.DT = {
	ammo="Ginsen",
    head="Aya. Zucchetto +2",
    body="Assim. Jubbah +3",
    hands="Assim. Bazu. +3",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet={ name="Herculean Boots", augments={'Weapon skill damage +3%','Magic dmg. taken -2%','Damage taken-5%','Accuracy+16 Attack+16','Mag. Acc.+17 "Mag.Atk.Bns."+17',}},
    neck="Loricate Torque +1",
    waist="Flume Belt +1",
    left_ear="Etiolation Earring",
    right_ear="Genmei Earring",
    left_ring="Defending Ring",
    right_ring="Ayanmo Ring",
    back="Moonbeam Cape",
}
							
							
							
	
	
	--TP Sets--
	sets.TP = {}

	sets.TP.index = {'Standard', 'DT', 'DTAccuracy', 'TH', 'AccuracyLite', 'AccuracyFull', 'Solo', 'Marches'}
	--1=Standard, 2=DT, 3=DTacc, 4=AccuracyLite, 5=AccuracyFull, 6=Solo, 7=Marches--
	TP_ind = 1
	TP_ind2 = 1
	CP_Mode = 0
	
	sets.TP.Standard = {
	ammo="Ginsen",
    head={ name="Dampening Tam", augments={'DEX+10','Accuracy+15','Mag. Acc.+15','Quadruple Attack +3',}},
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet={ name="Herculean Boots", augments={'Accuracy+25','"Triple Atk."+4','STR+6','Attack+8',}},
    neck="Lissome necklace",
    waist="Windbuffet Belt +1",
    left_ear="Telos Earring",
    right_ear="Cessance Earring",
    left_ring="Petrov Ring",
    right_ring="Epona's Ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}},
}
						
	sets.TP.Marches = sets.TP.Standard
					   		
	sets.TP.Solo = sets.TP.Standard
					
	sets.TP.AccuracyLite = {
	ammo="Falcon Eye",
    head={ name="Dampening Tam", augments={'DEX+10','Accuracy+15','Mag. Acc.+15','Quadruple Attack +3',}},
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet={ name="Herculean Boots", augments={'Accuracy+25','"Triple Atk."+4','STR+6','Attack+8',}},
    neck="Decimus Torque",
    waist="Windbuffet Belt +1",
    left_ear="Telos Earring",
    right_ear="Cessance Earring",
    left_ring="Haverton Ring +1",
    right_ring="Cacoethic Ring +1",
    back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
}
	
	sets.TP.AccuracyFull = {
	ammo="Falcon Eye",
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
    body="Assim. Jubbah +3",
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet={ name="Herculean Boots", augments={'Accuracy+25','"Triple Atk."+4','STR+6','Attack+8',}},
    neck="Decimus Torque",
    waist="Kentarch Belt +1",
    left_ear="Telos Earring",
    right_ear="Regal Earring",
    left_ring="Cacoethic Ring",
    right_ring="Cacoethic Ring +1",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}},
}

	
	sets.TP.DT = {
	ammo="Staunch Tathlum",
    head="Aya. Zucchetto +2",
    body="Ayanmo Corazza +2",
    hands="Assim. Bazu. +3",
    legs="Aya. Cosciales +2",
    feet={ name="Herculean Boots", augments={'Weapon skill damage +3%','Magic dmg. taken -2%','Damage taken-5%','Accuracy+16 Attack+16','Mag. Acc.+17 "Mag.Atk.Bns."+17',}},
    neck="Loricate Torque +1",
    waist="Flume Belt +1",
    left_ear="Etiolation Earring",
    right_ear="Genmei Earring",
    left_ring="Defending Ring",
    right_ring="Ayanmo Ring",
    back="Moonbeam Cape",
}
	
	sets.TP.DTAccuracy = {
	ammo="Staunch Tathlum",
    head="Aya. Zucchetto +2",
    body="Ayanmo Corazza +2",
    hands="Assim. Bazu. +3",
	legs="Aya. Cosciales +2",
    feet={ name="Herculean Boots", augments={'Weapon skill damage +3%','Magic dmg. taken -2%','Damage taken-5%','Accuracy+16 Attack+16','Mag. Acc.+17 "Mag.Atk.Bns."+17',}},
    neck="Loricate Torque +1",
    waist="Windbuffet Belt +1",
    left_ear="Telos Earring",
    right_ear="Cessance Earring",
    left_ring="Defending Ring",
    right_ring="Ayanmo Ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}},
}

sets.TP.TH = {
	ammo="Ginsen",
    head={ name="Dampening Tam", augments={'DEX+10','Accuracy+15','Mag. Acc.+15','Quadruple Attack +3',}},
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs={ name="Herculean Trousers", augments={'INT+6','Accuracy+18','"Treasure Hunter"+1','Accuracy+10 Attack+10',}},
    feet={ name="Herculean Boots", augments={'Accuracy+25','"Triple Atk."+4','STR+6','Attack+8',}},
    neck="Lissome necklace",
    waist="Chaac Belt",
    left_ear="Telos Earring",
    right_ear="Cessance Earring",
    left_ring="Petrov Ring",
    right_ring="Epona's Ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}},
}
			  
	sets.holywater = {ring1="Purity Ring",ring2="Blenmot's Ring"}
	
	

	
	--Weaponskill Sets--
	sets.WS = {}
	
	sets.Requiescat = {}
	
	sets.Requiescat.index = {'Attack','Accuracy'}
	Requiescat_ind = 1
	
	sets.WS.Requiescat = {
	ammo="Hydrocera",
    head="Aya. Zucchetto +2",
    body={ name="Carm. Scale Mail", augments={'Accuracy+10','DEX+10','MND+15',}},
    hands={ name="Herculean Gloves", augments={'Accuracy+22 Attack+22','"Triple Atk."+2','STR+9','Attack+4',}},
    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    right_ear="Brutal Earring",
    left_ring="Rufescent Ring",
    right_ring="Ayanmo Ring",
    back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
}
				  
	  

sets.WS.Judgment = {
	ammo="Ginsen",
    head={ name="Herculean Helm", augments={'Accuracy+13','VIT+2','Weapon skill damage +8%','Accuracy+10 Attack+10',}},
    body={ name="Carm. Sc. Mail +1", augments={'Attack+20','"Mag.Atk.Bns."+12','"Dbl.Atk."+4',}},
    hands="Jhakri Cuffs +2", 
    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    right_ear="Cessance Earring",
    left_ring="Epona's Ring",
    right_ring="Rufescent Ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}},
}	

sets.WS.Flashnova = {
	ammo="Ginsen",
    head={ name="Herculean Helm", augments={'Accuracy+13','VIT+2','Weapon skill damage +8%','Accuracy+10 Attack+10',}},
    body={ name="Carm. Sc. Mail +1", augments={'Attack+20','"Mag.Atk.Bns."+12','"Dbl.Atk."+4',}},
    hands="Jhakri Cuffs +2", 
    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    right_ear="Cessance Earring",
    left_ring="Epona's Ring",
    right_ring="Rufescent Ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}},
}
					  
	sets.WS.SavageBlade = {
	ammo="Floestone",
    head={ name="Herculean Helm", augments={'Accuracy+13','VIT+2','Weapon skill damage +8%','Accuracy+10 Attack+10',}},
    body="Assim. Jubbah +3",
    hands="Jhakri Cuffs +2", 
	legs={ name="Luhlaza Shalwar +3", augments={'Enhances "Assimilation" effect',}},
    feet={ name="Herculean Boots", augments={'Accuracy+24 Attack+24','Weapon skill damage +3%','STR+4','Accuracy+9','Attack+3',}},
	neck="Caro Necklace",
    waist="Prosilio Belt +1",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    right_ear="Ishvara Earring",
    left_ring="Shukuyu Ring",
    right_ring="Ifrit Ring +1",
    back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
}
				  
	sets.WS.VorpalBlade = {
	ammo="Ginsen",
    head={ name="Adhemar Bonnet", augments={'DEX+10','AGI+10','Accuracy+15',}},
    body="Abnoba Kaftan",
    hands={ name="Herculean Gloves", augments={'Accuracy+27','Crit.hit rate+4','DEX+8',}},
    legs={ name="Luhlaza Shalwar +3", augments={'Enhances "Assimilation" effect',}},
    feet="Thereoid Greaves",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    right_ear="Cessance Earring",
    left_ring="Epona's Ring",
    right_ring="Apate Ring",
    back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
}
	
	sets.WS.Expiacion = {
	ammo="Mantoptera Eye",
    head={ name="Herculean Helm", augments={'Accuracy+13','VIT+2','Weapon skill damage +8%','Accuracy+10 Attack+10',}},
    body="Assim. Jubbah +3",
    hands="Jhakri Cuffs +2", 
    legs={ name="Luhlaza Shalwar +3", augments={'Enhances "Assimilation" effect',}},
    feet={ name="Herculean Boots", augments={'Accuracy+24 Attack+24','Weapon skill damage +3%','STR+4','Accuracy+9','Attack+3',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    left_ring="Ilabrat Ring",
    right_ring="Apate Ring",
    back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
}
	
	sets.ChantDuCygne = {}
	
	sets.ChantDuCygne.index = {'Attack','Accuracy'}
	ChantDuCygne_ind = 1						 
		
	sets.WS.ChantDuCygne = {
	ammo="Falcon Eye",
    head={ name="Adhemar Bonnet", augments={'DEX+10','AGI+10','Accuracy+15',}},
	body="Abnoba Kaftan",
    hands={ name="Herculean Gloves", augments={'Accuracy+27','Crit.hit rate+4','DEX+8',}},
    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet="Thereoid Greaves",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    right_ear="Cessance Earring",
    left_ring="Begrudging Ring",
    right_ring="Epona's Ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10',}},
}
	
	sets.WS.CDCAcc = {
	ammo="Falcon Eye",
    head={ name="Adhemar Bonnet", augments={'DEX+10','AGI+10','Accuracy+15',}},
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Herculean Gloves", augments={'Accuracy+27','Crit.hit rate+4','DEX+8',}},
    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet={ name="Herculean Boots", augments={'Accuracy+18 Attack+18','Crit.hit rate+4','DEX+5','Accuracy+9',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    right_ear="Cessance Earring",
    left_ring="Cacoethic Ring +1",
    right_ring="Apate Ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10',}},
}
			
	sets.WS.SanguineBlade = {
	ammo="Pemphredo Tathlum",
    head="Pixie Hairpin +1",
    body="Assim. Jubbah +3",
    hands={ name="Amalric Gages", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
    legs={ name="Luhlaza Shalwar +3", augments={'Enhances "Assimilation" effect',}},
    feet="Hashi. Basmak +1",
    neck="Sanctity Necklace",
    waist="Yamabuki-no-Obi",
    left_ear="Hecate's Earring",
    right_ear="Friomisi Earring",
    left_ring="Shiva Ring +1",
    right_ring="Shiva Ring +1",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10',}},
}
				
	sets.WS.CircleBlade = {
	ammo="Ginsen",
    head={ name="Adhemar Bonnet", augments={'DEX+10','AGI+10','Accuracy+15',}},
    body="Assim. Jubbah +3",
    hands="Jhakri Cuffs +2", 
    legs={ name="Herculean Trousers", augments={'Accuracy+25 Attack+25','"Store TP"+4','STR+10','Accuracy+11',}},
    feet={ name="Herculean Boots", augments={'Accuracy+25','"Triple Atk."+4','STR+6','Attack+8',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Ishvara Earring",
    right_ear="Cessance Earring",
    left_ring="Shukuyu Ring",
    right_ring="Ifrit Ring +1",
    back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
}
												
	--Blue Magic Sets--
	sets.BlueMagic = {}
	
	sets.BlueMagic.STR = {
	ammo="Floestone",
    head={ name="Herculean Helm", augments={'Accuracy+13','INT+2','"Refresh"+1','Accuracy+20 Attack+20','Mag. Acc.+3 "Mag.Atk.Bns."+3',}},
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands="Jhakri Cuffs +2",
    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet={ name="Herculean Boots", augments={'Accuracy+18 Attack+18','Crit.hit rate+4','DEX+5','Accuracy+9',}},
    neck="Caro Necklace",
    waist="Prosilio Belt +1",
    left_ear="Cessance Earring",
    right_ear="Telos Earring",
	left_ring="Shukuyu Ring",
    right_ring="Ifrit Ring +1",
    back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
}
						  
	sets.BlueMagic.STRDEX = {
	ammo="Floestone",
    head={ name="Herculean Helm", augments={'Accuracy+13','INT+2','"Refresh"+1','Accuracy+20 Attack+20','Mag. Acc.+3 "Mag.Atk.Bns."+3',}},
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet={ name="Herculean Boots", augments={'Accuracy+18 Attack+18','Crit.hit rate+4','DEX+5','Accuracy+9',}},
    neck="Caro Necklace",
    waist="Prosilio Belt +1",
    left_ear="Cessance Earring",
    right_ear="Telos Earring",
    left_ring="Ilabrat Ring",
    right_ring="Ifrit Ring +1",
    back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
}
				 
	sets.BlueMagic.DEX = {
	ammo="Falcon Eye",
    head={ name="Adhemar Bonnet", augments={'DEX+10','AGI+10','Accuracy+15',}},
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet={ name="Herculean Boots", augments={'Accuracy+18 Attack+18','Crit.hit rate+4','DEX+5','Accuracy+9',}},
    neck="Caro Necklace",
    waist="Artful Belt",
    left_ear="Mache Earring",
    right_ear="Mache Earring",
    left_ring="Ilabrat Ring",
    right_ring="Ramuh Ring +1",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10',}},
}
							
	sets.BlueMagic.STRVIT = {
	ammo="Mantoptera Eye",
    head={ name="Herculean Helm", augments={'Accuracy+13','INT+2','"Refresh"+1','Accuracy+20 Attack+20','Mag. Acc.+3 "Mag.Atk.Bns."+3',}},
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands="Jhakri Cuffs +2",
    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet={ name="Herculean Boots", augments={'Accuracy+18 Attack+18','Crit.hit rate+4','DEX+5','Accuracy+9',}},
    neck="Caro Necklace",
    waist="Prosilio Belt +1",
    left_ear="Cessance Earring",
    right_ear="Telos Earring",
    left_ring="Ifrit Ring +1",
    right_ring="Shukuyu Ring",
    back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
}				

	sets.Nuke = {}
									
	sets.Nuke.index = {'Normal', 'Mix', 'Macc'}
	--1=Normal, 2=Mix, 3=Macc, 
	Nuke_ind = 1
						  
	sets.Nuke.Normal = {
	ammo="Pemphredo Tathlum",
    head={ name="Herculean Helm", augments={'"Mag.Atk.Bns."+29','Accuracy+5 Attack+5','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
	body={ name="Amalric Doublet +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    legs={ name="Amalric Slops +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    feet={ name="Amalric Nails +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    neck="Baetyl Pendant",
    waist="Yamabuki-no-Obi",
	left_ear="Regal Earring",
    right_ear="Friomisi Earring",
    left_ring="Shiva Ring +1",
    right_ring="Shiva Ring +1",
    back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}

sets.Nuke.Mix = {
	ammo="Pemphredo Tathlum",
    head="Assim. Keffiyeh +3",
	body={ name="Amalric Doublet +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    legs={ name="Amalric Slops +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    feet={ name="Amalric Nails +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    neck="Sanctity Necklace",
    waist="Yamabuki-no-Obi",
	left_ear="Regal Earring",
    right_ear="Friomisi Earring",
    left_ring="Shiva Ring +1",
    right_ring="Shiva Ring +1",
    back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}

sets.Nuke.Macc = {
	ammo="Pemphredo Tathlum",
    head="Assim. Keffiyeh +3",
	body={ name="Amalric Doublet +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    legs={ name="Luhlaza Shalwar +3", augments={'Enhances "Assimilation" effect',}},
    feet="Jhakri Pigaches +2",
    neck="Sanctity Necklace",
    waist="Eschan Stone",
	left_ear="Regal Earring",
    right_ear="Friomisi Earring",
    left_ring="Shiva Ring +1",
    right_ring="Shiva Ring +1",
    back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}
						  
	sets.BlueMagic.Cures = {
	ammo="Hydrocera",
    head={ name="Telchine Cap", augments={'"Cure" potency +6%','Enh. Mag. eff. dur. +9',}},
    body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}},
    hands={ name="Telchine Gloves", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    legs={ name="Telchine Braconi", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    feet={ name="Medium's Sabots", augments={'MP+50','MND+8','"Conserve MP"+6','"Cure" potency +3%',}},
    neck="Incanter's Torque",
    waist="Gishdubar Sash",
    left_ear="Gifted Earring",
    right_ear="Mendi. Earring",
    left_ring="Lebeche Ring",
    right_ring="Stikini Ring +1",
    back="Solemnity Cape",
}


sets.BlueMagic.SelfCures = set_combine(sets.BlueMagic.Cures, {waist="Gishdubar Sash", neck="Phalaina Locket"})
							
	sets.BlueMagic.Stun = {
	ammo="Mavi Tathlum",
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
    body="Jhakri Robe +2", 
    hands="Jhakri Cuffs +2",
    legs="Jhakri Slops +2",
    feet="Jhakri Pigaches +2",
    neck="Incanter's Torque",
    waist="Eschan Stone",
    left_ear="Enchntr. Earring +1",
    right_ear="Digni. Earring",
    left_ring="Rahab Ring",
    right_ring="Kishar Ring",
    back={ name="Cornflower Cape", augments={'MP+29','DEX+3','Blue Magic skill +9',}},
}			   						   
	
									 
	sets.BlueMagic.MagicAccuracy = {
	ammo="Pemphredo Tathlum",
    head="Assim. Keffiyeh +3",
    body="Jhakri Robe +2", 
    hands="Jhakri Cuffs +2",
    legs="Assim. Shalwar +2",
    feet="Jhakri Pigaches +2",
    neck="Incanter's Torque",
    waist="Eschan Stone",
    left_ear="Regal Earring",
    right_ear="Digni. Earring",
    left_ring="Stikini Ring",
    right_ring="Stikini Ring +1",
    back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}
						
	sets.BlueMagic.Sleep = {
	ammo="Pemphredo Tathlum",
    head={ name="Luh. Keffiyeh +1", augments={'Enhances "Convergence" effect',}},
    body="Assim. Jubbah +3",
    hands="Jhakri Cuffs +2",
    legs="Assim. Shalwar +2",
    feet={ name="Luhlaza Charuqs +1", augments={'Enhances "Diffusion" effect',}},
    neck="Incanter's Torque",
    waist="Eschan Stone",
    left_ear="Regal Earring",
    right_ear="Digni. Earring",
    left_ring="Stikini Ring",
    right_ring="Stikini Ring +1",
    back={ name="Cornflower Cape", augments={'MP+29','DEX+3','Blue Magic skill +9',}},
}	
									 
	sets.BlueMagic.Skill = {
	ammo="Mavi Tathlum",
    head={ name="Luh. Keffiyeh +1", augments={'Enhances "Convergence" effect',}},
    body="Assim. Jubbah +3",
    hands="Rawhide Gloves",
    legs="Hashishin Tayt +1",
    feet={ name="Luhlaza Charuqs +1", augments={'Enhances "Diffusion" effect',}},
    neck="Incanter's Torque",
    left_ring="Stikini Ring",
    right_ring="Stikini Ring +1",
    back={ name="Cornflower Cape", augments={'MP+29','DEX+3','Blue Magic skill +9',}},
}			

sets.BlueMagic.Learn = {
	ammo="Mavi Tathlum",
    head={ name="Luh. Keffiyeh +1", augments={'Enhances "Convergence" effect',}},
    body="Assim. Jubbah +3",
    hands="Assim. Bazu. +3",
    legs="Hashishin Tayt +1",
    feet={ name="Luhlaza Charuqs +1", augments={'Enhances "Diffusion" effect',}},
    neck="Incanter's Torque",
    waist="Eschan Stone",
    left_ear="Suppanomimi",
    right_ear="Cessance Earring",
    left_ring="Stikini Ring",
    right_ring="Stikini Ring +1",
    back={ name="Cornflower Cape", augments={'MP+29','DEX+3','Blue Magic skill +9',}},
}			  
								  
	sets.ElementalMagic = {
	ammo="Pemphredo Tathlum",
    head="Jhakri Coronal +2",
    body="Jhakri Robe +2", 
    hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    legs="Jhakri Slops +2",
    feet="Jhakri Pigaches +2",
    neck="Incanter's Torque",
    waist="Eschan Stone",
    left_ear="Regal Earring",
    right_ear="Digni. Earring",
    left_ring="Shiva Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}
			
	sets.EnhancingMagic = {
	ammo="Pemphredo Tathlum",
    head={ name="Telchine Cap", augments={'"Cure" potency +6%','Enh. Mag. eff. dur. +9',}},
    body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}},
    hands={ name="Telchine Gloves", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    legs={ name="Telchine Braconi", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    feet={ name="Telchine Pigaches", augments={'Spell interruption rate down -10%','Enh. Mag. eff. dur. +10',}},
    neck="Incanter's Torque",
    waist="Gishdubar Sash",
    left_ear="Enchntr. Earring +1",
    right_ear="Digni. Earring",
    left_ring="Stikini Ring",
    right_ring="Stikini Ring +1",
    back="Fi Follet Cape",
}					  
	
	
	--Job Ability Sets--
	
	sets.JA = {}
	
	sets.JA = {}
	
	sets.JA.ChainAffinity = {head="Hashishin Kavuk +1",feet="Assim. Charuqs +2",ring2="Mujin Band",
	back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10',}},
	}
	
	sets.JA.BurstAffinity = {
	ammo="Pemphredo Tathlum",
	head={ name="Herculean Helm", augments={'Rng.Acc.+22','"Mag.Atk.Bns."+19','Magic burst dmg.+11%','Accuracy+13 Attack+13','Mag. Acc.+10 "Mag.Atk.Bns."+10',}},
	body={ name="Amalric Doublet +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
	hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
	legs="Assim. Shalwar +2",
	feet="Hashishin basmak +1",
	neck="Baetyl Pendant",
    waist="Yamabuki-no-Obi",
	left_ear="Regal Earring",
    right_ear="Friomisi Earring",
    left_ring="Shiva Ring +1",
    right_ring="Shiva Ring +1",
    back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}

	
	sets.JA.Efflux = {
	legs="Hashishin tayt +1",
	back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10',}},
	}
	
	sets.JA.AzureLore = {hands="Luhlaza bazubands"}
	
	sets.JA.Diffusion = {feet="Luhlaza Charuqs +1"}
								
								
			
			
			
			
	--Precast Sets--
	sets.precast = {}
	
	sets.precast.FC = {}
	
	sets.precast.FC.Standard = {
	ammo="Sapience Orb",
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
    body="Pinga Tunic",
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
    legs="Pinga Pants",
    feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
    neck="Orunmila's Torque",
    waist="Witful Belt",
    left_ear="Enchntr. Earring +1",
    right_ear="Etiolation Earring",
    left_ring="Rahab Ring",
    right_ring="Kishar Ring",
    back={ name="Rosmerta's Cape", augments={'"Fast Cast"+10',}},
}
	
	sets.precast.FC.Blue = {
	ammo="Sapience Orb",
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
    body="Pinga Tunic",
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
    legs="Pinga Pants",
    feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
    neck="Orunmila's Torque",
    waist="Witful Belt",
    left_ear="Enchntr. Earring +1",
    right_ear="Etiolation Earring",
    left_ring="Rahab Ring",
    right_ring="Kishar Ring",
    back={ name="Rosmerta's Cape", augments={'"Fast Cast"+10',}},
}
end






function precast(spell)
	if spell.action_type == 'Magic' then
		if spell.type == "BlueMagic" then
		equip(sets.precast.FC.Blue)
		send_command('@input /echo Blue Magic Precast Set')				
		else
		equip(sets.precast.FC.Standard)
		send_command('@input /echo Precast Set')
		end
	elseif spell.name == 'Holy Water' then
		equip(sets.holywater)
		send_command('@input /echo Holy Water Set')
	else
	end

	if spell.english == 'Azure Lore' then
		equip(sets.JA.AzureLore)
	elseif spell.english == 'Diffusion' then
			equip(sets.JA.Diffusion)
	end
			
	if spell.english == 'Lunge' or spell.english == 'Swipe' then
		equip(sets.BlueMagic.INT)
		send_command('@input /echo Lunge Set')
	end
		
	if spell.english == 'Requiescat' then
			equip(sets.WS.Requiescat)
			send_command('@input /echo Requiescat Set')
		elseif spell.english == 'Chant du Cygne' then
			equip(sets.WS.ChantDuCygne)
			send_command('@input /echo CDC Set')
		elseif spell.english == 'Circle Blade' then
			equip(sets.WS.CircleBlade)
		elseif spell.english == 'Sanguine Blade' then
			equip(sets.WS.SanguineBlade)
			send_command('@input /echo SB Set')
		elseif spell.english == 'Expiacion' then
			equip(sets.WS.Expiacion)
			send_command('@input /echo Expiacion Set')
		elseif spell.english == 'Savage Blade' then
			equip(sets.WS.SavageBlade)
			send_command('@input /echo Savage Set')
		elseif spell.english == 'Vorpal Blade' then
			equip(sets.WS.VorpalBlade)
			send_command('@input /echo Vorpal Set')
		elseif spell.english == 'Flash Nova' then
			equip(sets.BlueMagic.INT)
			send_command('@input /echo Flash Nova Set')	
		elseif spell.english == 'Black Halo' then
			equip(sets.WS.Blackhalo)
			send_command('@input /echo Black Halo Set')	
		elseif spell.english == 'Realmrazer' then
			equip(sets.WS.Realmrazer)
			send_command('@input /echo Realmrazer Set')
			elseif spell.english == 'Flash Nova' then
			equip(sets.WS.Flashnova)
			send_command('@input /echo Flash Nova Set')
			elseif spell.english == 'Judgment' then
			equip(sets.WS.Judgment)
			send_command('@input /echo Judgment Set')
		elseif spell.english == 'Seraph Blade' or spell.english == 'Red Lotus Blade' then
			equip(sets.BlueMagic.INT)
			equip({ring1="Weatherspoon ring"})
			send_command('@input /echo Magic WS Set')			
	end
end
	
function midcast(spell,act)
	if  STR_Spells:contains(spell.name) then
		send_command('@input /echo Blue STR Set')
		equip(sets.BlueMagic.STR)
		if buffactive['Chain Affinity'] then
			equip(sets.JA.ChainAffinity)
		end
		if buffactive['Efflux'] then
			equip(sets.JA.Efflux)
		end
	elseif 	STRDEX_Spells:contains(spell.name) then
		send_command('@input /echo Blue STRDEX Set')
		equip(sets.BlueMagic.STRDEX)
		if buffactive['Chain Affinity'] then
			equip(sets.JA.ChainAffinity)
		end
		if buffactive['Efflux'] then
			equip(sets.JA.Efflux)
		end
	elseif 	DEX_Spells:contains(spell.name) then
		send_command('@input /echo Blue DEX Set')
		equip(sets.BlueMagic.DEX)
		if buffactive['Chain Affinity'] then
			equip(sets.JA.ChainAffinity)
		end
		if buffactive['Efflux'] then
			equip(sets.JA.Efflux)
		end
		
	elseif STRVIT_Spells:contains(spell.name) then
		send_command('@input /echo Blue STRVIT Set')
		equip(sets.BlueMagic.STRVIT)
		if buffactive['Chain Affinity'] then
			equip(sets.JA.ChainAffinity)
		end
		if buffactive['Efflux'] then
			equip(sets.JA.Efflux)
		end		
	elseif INT_Spells:contains(spell.name) then
		send_command('@input /echo Blue INT Set')
		equip(sets.Nuke[sets.Nuke.index[Nuke_ind]])
			if spell.name == "Dark Orb" or spell.name == "Evryone. Grudge" or spell.name == "Tenebral Crush" or spell.name == "Eyes on Me" or spell.name == "Palling Salvo" then
				equip({head="Pixie hairpin +1",ring1="Archon ring"})				
			end			
			if buffactive['Burst Affinity'] then
				equip(sets.JA.BurstAffinity)		
			end
			if Light_Nukes:contains(spell.name) then
				equip({ring2="Weatherspoon ring"})				
			end
		weathercheck(spell.element)
	elseif Cure_Spells:contains(spell.name) then
		if spell.target.type=="SELF" then
		equip(sets.BlueMagic.SelfCures)
		send_command('@input /echo Self Cure Set')
		weathercheck(spell.element)
	 else
            equip(sets.BlueMagic.Cures)
            send_command('@input /echo Cure Set')
            weathercheck(spell.element)
        end
	elseif Stun_Spells:contains(spell.name)  then
		send_command('@input /echo Blue Stun Set')
		equip(sets.BlueMagic.Stun)
	elseif Enfeebling_Spells:contains(spell.name) then
		send_command('@input /echo Blue Magic Acc Set')
		equip(sets.BlueMagic.MagicAccuracy)
	elseif spell.english == 'Dream Flower' or spell.english == 'Sheep Song' or spell.english == 'Frightful Roar' then
		equip(sets.BlueMagic.Sleep)
	elseif Buff_Spells:contains(spell.name) then
		equip(sets.BlueMagic.Skill)
		send_command('@input /echo Blue Skill Set')
		if spell.name == 'Battery Charge' then
			equip({head="Amalric coif",waist="Gishdubar sash",back="Grapevine Cape"})
	elseif Enhancing_Spells:contains(spell.name) then
		equip(sets.EnhancingMagic)
		send_command('@input /echo Enhancing Magic Set')			
		end		
		if buffactive['Diffusion'] then
			equip(sets.JA.Diffusion)
		end			
	end
	if spell.skill == 'Elemental Magic' then
		send_command('@input /echo Elemental Magic Set')
		equip(sets.ElementalMagic)
		weathercheck(spell.element)
	elseif spell.skill == 'Healing Magic' then
		equip(sets.BlueMagic.Cures)	
		send_command('@input /echo Blue Cure W Set')
		weathercheck(spell.element)
	elseif spell.skill == 'Enhancing Magic' then
		equip(sets.EnhancingMagic)	
		send_command('@input /echo Enhancing Set')
	end
	
end

function aftercast(spell)
	if player.status == 'Engaged' then
		equip(sets.TP[sets.TP.index[TP_ind]])
	else
		if Gear_Debug == 0 then
			equip(sets.Idle.Standard)
			send_command('@input /echo Idle Set')
		else
		end
	end
end


function status_change(new,old)
	if new == 'Engaged' then
		equip(sets.TP[sets.TP.index[TP_ind]])
	else
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
	end
end