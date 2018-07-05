--  F9   TP set toggle input: //gs c toggle TP set----1 Standard, 2 Solo, 3 Marches, 4 AccuracyLite, 5 AccuracyMax, 6 DT, 7 DTAccuracy--
--F10  Idle set toggle input: //gs c toggle Idle set----1 Standard, 2 DT--


Enmity_Spells = S{"Foil","Flash","Blank Gaze","Geist Wall","Jettatura","Stun","Sheep Song","Soporific","Stinking Gas","Sound Blast"}
Enhancing_Spells = S{"Refresh","Regen","Regen II","Regen III","Regen IV","Blaze Spikes","Ice Spikes","Shock Spikes","Crusade","Cocoon","Refueling"}
Enhancing_Potency = S{"Barfire","Barblizzard","Baraero","Barstone","Barthunder","Barwater","Barsleep","Barpoison","Barparalyze",
					"Barblind","Barsilence","Barpetrify","Baramnesia","Barvirus","Temper","Phalanx","Stoneskin","Blink"}
Interupt_Spells = S{"Aquaveil","Protect IV","Shell V"}
Healing_Spells = S{"Cure","Cure II","Cure III","Cure IV","Curaga","Curaga II","Pollen","Wild Carrot","Healing Breeze"}


function get_sets()
 
        send_command('bind f9 gs c toggle TP set')
        send_command('bind f10 gs c toggle Idle set')
		send_command('bind f11 gs c toggle Weapons')
         function file_unload()
    
        send_command('unbind ^f9')
        send_command('unbind ^f10')
		send_command('unbind ^f11')
		send_command('unbind ^f12')

        send_command('unbind !f9')
        send_command('unbind !f10')
		send_command('unbind !f11')
		send_command('unbind !f12')
		
        send_command('unbind f9')
        send_command('unbind f10')
		send_command('unbind f11')
		send_command('unbind f12')
 
        end  
		
	--Idle Sets--	
	sets.Idle = {}
	
	sets.Idle.index = {'Standard', 'Regain', 'DTrun', 'DT'}
	Idle_ind = 1

	
	
	
	
	sets.Idle.Standard = {
	ammo="Homilary",
    head={ name="Herculean Helm", augments={'Accuracy+13','INT+2','"Refresh"+1','Accuracy+20 Attack+20','Mag. Acc.+3 "Mag.Atk.Bns."+3',}},
    body="Runeist's Coat +2",
    hands="Turms Mittens",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Turms Leggings",
	neck="Loricate Torque +1",
    waist="Flume Belt +1",
    left_ear="Etiolation Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Defending Ring",
    right_ring="Stikini Ring +1",
    back="Moonbeam Cape",
}

sets.Idle.Regain = {
	ammo="Homilary",
    head="Turms Cap",
    body="Runeist's Coat +2",
    hands="Turms Mittens",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Turms Leggings",
	neck="Loricate Torque +1",
    waist="Flume Belt +1",
    left_ear="Etiolation Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Defending Ring",
    right_ring="Stikini Ring +1",
    back="Moonbeam Cape",
}

	sets.Idle.DTrun = {
	ammo="Staunch Tathlum",
    head="Aya. Zucchetto +2",
    body={ name="Futhark Coat +1", augments={'Enhances "Elemental Sforzo" effect',}},
    hands="Kurys Gloves",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet={ name="Herculean Boots", augments={'Weapon skill damage +3%','Magic dmg. taken -2%','Damage taken-5%','Accuracy+16 Attack+16','Mag. Acc.+17 "Mag.Atk.Bns."+17',}},
    neck="Loricate Torque +1",
    waist="Flume Belt +1",
    left_ear="Etiolation Earring",
    right_ear="Genmei Earring",
    left_ring="Defending Ring",
    right_ring="Moonbeam Ring",
    back="Moonbeam Cape",
}
						  
	sets.Idle.DT = {
	ammo="Staunch Tathlum",
    head="Aya. Zucchetto +2",
    body={ name="Futhark Coat +1", augments={'Enhances "Elemental Sforzo" effect',}},
    hands="Kurys Gloves",
    legs="Eri. Leg Guards +1",
    feet={ name="Herculean Boots", augments={'Weapon skill damage +3%','Magic dmg. taken -2%','Damage taken-5%','Accuracy+16 Attack+16','Mag. Acc.+17 "Mag.Atk.Bns."+17',}},
    neck="Loricate Torque +1",
    waist="Flume Belt +1",
    left_ear="Etiolation Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Defending Ring",
    right_ring="Moonbeam Ring",
    back="Moonbeam Cape",
}
							
							
	
	
	--TP Sets--
	sets.TP = {}

	sets.TP.index = {'Standard', 'DT', 'DTAccuracy', 'DTHP', 'Status', 'AccuracyLite', 'AccuracyFull', 'DW', 'Marches'}
	--1=Standard, 2=DW, 3=Marches, 4=AccuracyLite, 5=AccuracyFull, 6=DT, 7=DTAccuracy--
	TP_ind = 1
	TP_ind2 = 1
	
	sets.TP.Standard = {
	ammo="Yamarang",
    head={ name="Dampening Tam", augments={'DEX+10','Accuracy+15','Mag. Acc.+15','Quadruple Attack +3',}},
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet={ name="Herculean Boots", augments={'Accuracy+25','"Triple Atk."+4','STR+6','Attack+8',}},
    neck="Lissome Necklace",
    waist="Ioskeha Belt +1",
    left_ear="Sherida Earring",
    right_ear="Telos Earring",
    left_ring="Epona's Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Ogma's cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Occ. inc. resist. to stat. ailments+10',}},
}
	
	sets.TP.DW = {
	ammo="Yamarang",
    head={ name="Dampening Tam", augments={'DEX+10','Accuracy+15','Mag. Acc.+15','Quadruple Attack +3',}},
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet={ name="Herculean Boots", augments={'Accuracy+25','"Triple Atk."+4','STR+6','Attack+8',}},
    neck="Lissome Necklace",
    waist="Kentarch Belt +1",
    left_ear="Sherida Earring",
    right_ear="Suppanomimi",
    left_ring="Epona's Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Ogma's cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Occ. inc. resist. to stat. ailments+10',}},
}   
	
	sets.TP.Marches = {
	ammo="Yamarang",
    head={ name="Dampening Tam", augments={'DEX+10','Accuracy+15','Mag. Acc.+15','Quadruple Attack +3',}},
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet={ name="Herculean Boots", augments={'Accuracy+25','"Triple Atk."+4','STR+6','Attack+8',}},
    neck="Lissome Necklace",
    waist="Windbuffet Belt +1",
    left_ear="Sherida Earring",
    right_ear="Cessance Earring",
    left_ring="Epona's Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Ogma's cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Occ. inc. resist. to stat. ailments+10',}},
}	   			
					
	sets.TP.AccuracyLite = {
	ammo="Yamarang",
    head={ name="Dampening Tam", augments={'DEX+10','Accuracy+15','Mag. Acc.+15','Quadruple Attack +3',}},
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs="Meg. Chausses +2",
    feet={ name="Herculean Boots", augments={'Accuracy+25','"Triple Atk."+4','STR+6','Attack+8',}},
    neck="Lissome Necklace",
    waist="Ioskeha Belt +1",
    left_ear="Telos Earring",
    right_ear="Cessance Earring",
    left_ring="Epona's Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Ogma's cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Occ. inc. resist. to stat. ailments+10',}},
}
	
	sets.TP.AccuracyFull = {
	ammo="Yamarang",
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Runeist's Boots +2",
    neck="Sanctity Necklace",
    waist="Olseni Belt",
    left_ear="Telos Earring",
    right_ear="Digni. Earring",
    left_ring="Regal Ring",
    right_ring="Cacoethic Ring +1",
    back={ name="Ogma's cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Occ. inc. resist. to stat. ailments+10',}},
}
							
	sets.TP.DT = {
	ammo="Staunch Tathlum",
    head="Aya. Zucchetto +2",
    body={ name="Futhark Coat +1", augments={'Enhances "Elemental Sforzo" effect',}},
    hands="Aya. Manopolas +2",
    legs="Eri. Leg Guards +1",
    feet="Turms Leggings",
	neck="Loricate Torque +1",
    waist="Flume Belt +1",
    left_ear="Etiolation Earring",
    right_ear="Genmei Earring",
    left_ring="Defending Ring",
    right_ring="Moonbeam Ring",
    back={ name="Ogma's cape", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Dbl.Atk."+10','Occ. inc. resist. to stat. ailments+10',}},
}
				  
	sets.TP.DTAccuracy = {
	ammo="Staunch Tathlum",
    head="Aya. Zucchetto +2",
    body="Ayanmo Corazza +2",
    hands="Aya. Manopolas +2",
	legs="Aya. Cosciales +2",
    feet="Turms Leggings",
	neck="Loricate Torque +1",
    waist="Eschan Stone",
    left_ear="Etiolation Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Defending Ring",
    right_ring="Moonbeam Ring",
    back={ name="Ogma's cape", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Dbl.Atk."+10','Occ. inc. resist. to stat. ailments+10',}},
}

sets.TP.Status = {
	ammo="Staunch Tathlum",
    head="Aya. Zucchetto +2",
    body="Runeist's Coat +2",
    hands="Erilaz Gauntlets +1",
    legs="Rune. Trousers +2",
    feet="Turms Leggings",
	neck="Loricate Torque +1",
    waist="Flume Belt +1",
    left_ear="Etiolation Earring",
    right_ear="Hearty Earring",
    left_ring="Defending Ring",
    right_ring="Moonbeam Ring",
    back={ name="Ogma's cape", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Dbl.Atk."+10','Occ. inc. resist. to stat. ailments+10',}},
}

sets.TP.DTHP = {
	ammo="Staunch Tathlum",
    head="Aya. Zucchetto +2",
    body={ name="Futhark Coat +1", augments={'Enhances "Elemental Sforzo" effect',}},
    hands="Kurys Gloves",
    legs="Eri. Leg Guards +1",
    feet="Turms Leggings",
	neck="Loricate Torque +1",
    waist="Flume Belt +1",
    left_ear="Etiolation Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Defending Ring",
    right_ring="Moonbeam Ring",
    back="Moonbeam Cape",
	}
	
	sets.TP.DWAcc = {
	ammo="Yamarang",
    head={ name="Dampening Tam", augments={'DEX+10','Accuracy+15','Mag. Acc.+15','Quadruple Attack +3',}},
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet={ name="Herculean Boots", augments={'Accuracy+25','"Triple Atk."+4','STR+6','Attack+8',}},
    neck="Lissome Necklace",
    waist="Windbuffet Belt +1",
    left_ear="Sherida Earring",
    right_ear="Suppanomimi",
    left_ring="Epona's Ring",
    right_ring="Haverton Ring",
    back={ name="Ogma's cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Occ. inc. resist. to stat. ailments+10',}},
}   
	
	--Weaponskill Sets--
	sets.WS = {}		
	
	sets.Requiescat = {
	ammo="Seeth. Bomblet +1",
	head={ name="Herculean Helm", augments={'Accuracy+13','VIT+2','Weapon skill damage +8%','Accuracy+10 Attack+10',}},
    body={ name="Carm. Scale Mail", augments={'Accuracy+10','DEX+10','MND+15',}},
    hands="Meg. Gloves +2",
    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
    left_ring="Regal Ring",
    right_ring="Rufescent Ring",
    back={ name="Ogma's cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Occ. inc. resist. to stat. ailments+10',}},
}
								  
	sets.Resolution = {
	ammo="Seeth. Bomblet +1",
	head={ name="Dampening Tam", augments={'DEX+10','Accuracy+15','Mag. Acc.+15','Quadruple Attack +3',}},
	body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Herculean Gloves", augments={'Accuracy+22 Attack+22','"Triple Atk."+2','STR+9','Attack+4',}},
    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet={ name="Herculean Boots", augments={'Accuracy+25','"Triple Atk."+4','STR+6','Attack+8',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
    left_ring="Epona's Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Ogma's cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
}
	
	sets.Vorpal = {
	ammo="Knobkierrie",
	head={ name="Adhemar Bonnet", augments={'DEX+10','AGI+10','Accuracy+15',}},
    body="Abnoba Kaftan",
    hands={ name="Herculean Gloves", augments={'Accuracy+27','Crit.hit rate+4','DEX+8',}},
    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet="Thereoid Greaves",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
    left_ring="Regal Ring",
    right_ring="Begrudging Ring",
    back={ name="Ogma's cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
}
	
	sets.Savage = {
	ammo="Knobkierrie",
    head={ name="Herculean Helm", augments={'Accuracy+13','VIT+2','Weapon skill damage +8%','Accuracy+10 Attack+10',}},
	body={ name="Herculean Vest", augments={'Accuracy+17 Attack+17','Weapon skill damage +2%','STR+9',}},
	hands="Meg. Gloves +2",
	legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
	feet={ name="Herculean Boots", augments={'Accuracy+24 Attack+24','Weapon skill damage +3%','STR+4','Accuracy+9','Attack+3',}},
	neck="Caro Necklace",
	waist="Prosilio Belt +1",
	left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
	right_ear="Ishvara Earring",
	left_ring="Regal Ring",
	right_ring="Niqmaddu Ring",
    back={ name="Ogma's cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%',}},
}
				  
	sets.Swift = {
	ammo="Seeth. Bomblet +1",
	head={ name="Dampening Tam", augments={'DEX+10','Accuracy+15','Mag. Acc.+15','Quadruple Attack +3',}},
	body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Herculean Gloves", augments={'Accuracy+22 Attack+22','"Triple Atk."+2','STR+9','Attack+4',}},
    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet={ name="Herculean Boots", augments={'Accuracy+25','"Triple Atk."+4','STR+6','Attack+8',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Sherida Earring",
    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
    left_ring="Epona's Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Ogma's cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
}
	
	sets.Spinning = {
	ammo="Knobkierrie",
    head={ name="Herculean Helm", augments={'Accuracy+13','VIT+2','Weapon skill damage +8%','Accuracy+10 Attack+10',}},
	body={ name="Herculean Vest", augments={'Accuracy+17 Attack+17','Weapon skill damage +2%','STR+9',}},
	hands="Meg. Gloves +2",
	legs="Meg. Chausses +2",
	feet={ name="Herculean Boots", augments={'Accuracy+24 Attack+24','Weapon skill damage +3%','STR+4','Accuracy+9','Attack+3',}},
	neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
	right_ear="Ishvara Earring",
    left_ring="Regal Ring",
	right_ring="Niqmaddu Ring",
    back={ name="Ogma's cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
}

	sets.Ground = {
	ammo="Knobkierrie",
    head={ name="Herculean Helm", augments={'Accuracy+13','VIT+2','Weapon skill damage +8%','Accuracy+10 Attack+10',}},
	body={ name="Herculean Vest", augments={'Accuracy+17 Attack+17','Weapon skill damage +2%','STR+9',}},
	hands="Meg. Gloves +2",
	legs="Meg. Chausses +2",
	feet={ name="Herculean Boots", augments={'Accuracy+24 Attack+24','Weapon skill damage +3%','STR+4','Accuracy+9','Attack+3',}},
	neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
	right_ear="Ishvara Earring",
    left_ring="Regal Ring",
	right_ring="Niqmaddu Ring",
    back={ name="Ogma's cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
}

	sets.Ruinator = {ammo="Seeth. Bomblet +1",
			      head="Dampening tam",neck="Fotia gorget",ear1="Brutal earring",ear2="Zennaroi earring",
			 	  body="Adhemar jacket",hands="Adhemar wristbands",ring1="Ramuh ring +1",ring2="Ifrit ring +1",
			   	  back="Bleating mantle",waist="Fotia belt",legs="Samnuha tights",feet="Herculean boots"}
	
	sets.Dimidiation = {
	ammo="Knobkierrie",
    head={ name="Herculean Helm", augments={'Accuracy+13','VIT+2','Weapon skill damage +8%','Accuracy+10 Attack+10',}},
    body={ name="Herculean Vest", augments={'Accuracy+30','Weapon skill damage +4%',}},
    hands="Meg. Gloves +2",
    legs={ name="Lustratio Subligar", augments={'Accuracy+15','DEX+5','Crit. hit rate+2%',}},
    feet={ name="Herculean Boots", augments={'Accuracy+24 Attack+24','Weapon skill damage +3%','STR+4','Accuracy+9','Attack+3',}},
    neck="Caro Necklace",
    waist="Grunfeld Rope",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    right_ear="Ishvara Earring",
    left_ring="Ilabrat Ring",
    right_ring="Regal Ring",
    back={ name="Ogma's cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%',}},
}
			
	sets.Shockwave = {
	ammo="Yamarang",
    head={ name="Herculean Helm", augments={'Accuracy+13','VIT+2','Weapon skill damage +8%','Accuracy+10 Attack+10',}},
	body="Ayanmo Corazza +2",
	hands="Meg. Gloves +2",
	legs="Aya. Cosciales +2",
	feet={ name="Herculean Boots", augments={'Weapon skill damage +3%','Magic dmg. taken -2%','Damage taken-5%','Accuracy+16 Attack+16','Mag. Acc.+17 "Mag.Atk.Bns."+17',}},
	neck="Fotia Gorget",
    waist="Fotia Belt",
	left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
	right_ear="Digni. Earring",
	left_ring="Regal Ring",
	right_ring="Ayanmo Ring",
    back={ name="Ogma's cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
}
	
	sets.Herculean = {
	ammo="Pemphredo Tathlum",
    head={ name="Herculean Helm", augments={'"Mag.Atk.Bns."+29','Accuracy+5 Attack+5','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
    body={ name="Samnuha Coat", augments={'Mag. Acc.+12','"Mag.Atk.Bns."+12','"Dual Wield"+3',}},
    hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
    legs={ name="Herculean Trousers", augments={'"Mag.Atk.Bns."+20','CHR+10','Mag. Acc.+19 "Mag.Atk.Bns."+19',}},
    feet={ name="Herculean Boots", augments={'Weapon skill damage +3%','Magic dmg. taken -2%','Damage taken-5%','Accuracy+16 Attack+16','Mag. Acc.+17 "Mag.Atk.Bns."+17',}},
    neck="Sanctity Necklace",
    waist="Eschan Stone",
    left_ear="Friomisi Earring",
    right_ear="Hecate's Earring",
    left_ring="Shiva Ring +1",
    right_ring="Shiva Ring +1",
    back={ name="Evasionist's Cape", augments={'Enmity+2','"Embolden"+14','"Dbl.Atk."+3','Damage taken-3%',}},
}
				  
	sets.Sanguine = {
	ammo="Pemphredo Tathlum",
    head="Pixie Hairpin +1",
    body={ name="Samnuha Coat", augments={'Mag. Acc.+12','"Mag.Atk.Bns."+12','"Dual Wield"+3',}},
    hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet={ name="Adhemar Gamashes", augments={'DEX+10','AGI+10','Accuracy+15',}},
    neck="Sanctity Necklace",
    waist="Eschan Stone",
    left_ear="Friomisi Earring",
    right_ear="Hecate's Earring",
    left_ring="Shiva Ring +1",
    right_ring="Archon Ring",
    back={ name="Evasionist's Cape", augments={'Enmity+2','"Embolden"+14','"Dbl.Atk."+3','Damage taken-3%',}},
}
	
	--Job Ability Sets--	
	
	sets.JA = {}	
	
	sets.JA.Lunge = {
	ammo="Pemphredo Tathlum",
    head={ name="Herculean Helm", augments={'"Mag.Atk.Bns."+29','Accuracy+5 Attack+5','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
    body={ name="Samnuha Coat", augments={'Mag. Acc.+12','"Mag.Atk.Bns."+12','"Dual Wield"+3',}},
    hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
    legs={ name="Herculean Trousers", augments={'"Mag.Atk.Bns."+20','CHR+10','Mag. Acc.+19 "Mag.Atk.Bns."+19',}},
    feet={ name="Herculean Boots", augments={'Weapon skill damage +3%','Magic dmg. taken -2%','Damage taken-5%','Accuracy+16 Attack+16','Mag. Acc.+17 "Mag.Atk.Bns."+17',}},
    neck="Sanctity Necklace",
    waist="Eschan Stone",
    left_ear="Friomisi Earring",
    right_ear="Hecate's Earring",
    left_ring="Shiva Ring +1",
    right_ring="Shiva Ring +1",
    back={ name="Evasionist's Cape", augments={'Enmity+2','"Embolden"+14','"Dbl.Atk."+3','Damage taken-3%',}},
}
				  
	sets.JA.VP = {
	head="Erilaz Galea +1",
	legs="Rune. Trousers +2",
    feet="Erilaz Greaves +1",
    neck="Incanter's Torque",
    left_ring="Stikini Ring",
    right_ring="Stikini Ring",
}

	sets.JA.Vallation = {body="Runeist's Coat +2",legs="Futhark Trousers",back={ name="Ogma's cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
}      
    sets.JA.Gambit = {waist="Chaac Belt", legs={ name="Herculean Trousers", augments={'INT+6','Accuracy+18','"Treasure Hunter"+1','Accuracy+10 Attack+10',}}, hands="Runeist mitons +1"}
    sets.JA.Rayke = {waist="Chaac Belt", legs={ name="Herculean Trousers", augments={'INT+6','Accuracy+18','"Treasure Hunter"+1','Accuracy+10 Attack+10',}}, feet="Futhark boots +1"}  
    sets.JA.Battuta = {head="Futhark Bandeau +1", hands="Turms Mittens"}    
	sets.JA.BattutaActive = {hands="Turms Mittens"}
    sets.JA.Pflug = {feet="Runeist bottes +1"}  
	
	sets.holywater = {ring1="Blenmot's Ring",ring2="Purity Ring",waist="Gishdubar Sash"}
	sets.doomed = {ring1="Saida ring",ring2="Purity ring",waist="Gishdubar Sash"}
			
			
	--Precast Sets--
	sets.precast = {}	
	sets.precast.FC = {
	ammo="Sapience Orb",
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
    body={ name="Taeon Tabard", augments={'"Fast Cast"+5','"Snapshot"+5',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
    legs={ name="Rawhide Trousers", augments={'MP+50','"Fast Cast"+5','"Refresh"+1',}},
    feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
    neck="Orunmila's Torque",
    waist="Siegel Sash",
    left_ear="Etiolation Earring",
    right_ear="Enchntr. Earring +1",
    left_ring="Rahab Ring",
    right_ring="Kishar Ring",
    back={ name="Ogma's cape", augments={'"Fast Cast"+10',}},
}
						
	sets.Interupt = {
	ammo="Staunch Tathlum",
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
    body={ name="Futhark Coat +1", augments={'Enhances "Elemental Sforzo" effect',}},
    hands="Rawhide Gloves",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
    neck="Loricate Torque +1",
    waist="Rumination Sash",
    left_ear="Etiolation Earring",
    right_ear="Enchntr. Earring +1",
    left_ring="Defending Ring",
    right_ring="Evanescence Ring",
    back={ name="Ogma's cape", augments={'"Fast Cast"+10',}},
}
						
	sets.enmity = {
	ammo="Staunch Tathlum",
    head="Rabid Visor",
    body="Emet Harness +1",
    hands="Kurys Gloves",
    legs="Eri. Leg Guards +1",
    feet="Erilaz Greaves +1",
	neck="Unmoving Collar +1",
    waist="Sinew Belt",
    left_ear="Cryptic Earring",
    right_ear="Etiolation Earring",
    left_ring="Defending Ring",
    right_ring="Petrov Ring",
    back={ name="Ogma's cape", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10',}},
}
				  
	sets.enhancing = {
	ammo="Staunch Tathlum",
	head="Erilaz Galea +1",
    body="Manasa Chasuble",
    hands="Runeist's Mitons +2",
    legs={ name="Futhark Trousers +1", augments={'Enhances "Inspire" effect',}},
	neck="Incanter's Torque",
    waist="Olympus Sash",
	left_ear="Andoaa Earring", 
    left_ring="Stikini Ring",
    right_ring="Stikini Ring +1",
    back="Merciful Cape,"
	}
					
	sets.potency = {
	ammo="Staunch Tathlum",
	head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
    body="Manasa Chasuble",
    hands="Runeist's Mitons +2",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
	neck="Incanter's Torque",
    waist="Olympus Sash",
	left_ear="Andoaa Earring", 
    left_ring="Stikini Ring",
    right_ring="Stikini Ring +1",
    back="Merciful Cape",
}
	
	sets.cure = {
	ammo="Staunch Tathlum",
    head="Erilaz Galea +1",
    body={ name="Futhark Coat +1", augments={'Enhances "Elemental Sforzo" effect',}},
    hands="Runeist Mitons +1",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet={ name="Herculean Boots", augments={'Weapon skill damage +3%','Magic dmg. taken -2%','Damage taken-5%','Accuracy+16 Attack+16','Mag. Acc.+17 "Mag.Atk.Bns."+17',}},
    waist="Gishdubar Sash",
    left_ring="Defending Ring",
    right_ring="Stikini Ring +1",
    back="Solemnity Cape",
}
end



function precast(spell)
	if spell.action_type == 'Magic' then		
		equip(sets.precast.FC)
		send_command('@input /echo Precast Set')
	elseif spell.name == 'Holy Water' then
		equip(sets.holywater)
		send_command('@input /echo Holy Water Set')
	end	
	
	if spell.english == 'Requiescat' then
			equip(sets.Requiescat)
			send_command('@input /echo Requiescat Set')
		elseif spell.english == 'Resolution' then		
			equip(sets.Resolution)
			send_command('@input /echo Resolution Set')
		elseif spell.english == 'Ruinator' then
			equip(sets.Ruinator)
			send_command('@input /echo Ruinator Set')
		elseif spell.english == 'Shockwave' then
			equip(sets.Shockwave)
			send_command('@input /echo Shockwave Set')
		elseif spell.english == 'Vorpal Blade' then
			equip(sets.Vorpal)
			send_command('@input /echo Vorpal Set')
		elseif spell.english == 'Savage Blade' then
			equip(sets.Savage)
			send_command('@input /echo Savage Set')
		elseif spell.english == 'Swift Blade' then
			equip(sets.Swift)
			send_command('@input /echo Swift Set')
		elseif spell.english == 'Sanguine Blade' then		
			equip(sets.Sanguine)
			send_command('@input /echo Sanguine Blade Set')
		elseif spell.english == 'Dimidiation' then
			equip(sets.Dimidiation)
			send_command('@input /echo Dimidiation Set')
		elseif spell.english == 'Spinning Slash' then
			equip(sets.Spinning)
			send_command('@input /echo Spinning Set')	
		elseif spell.english == 'Ground Strike' then
			equip(sets.Ground)
			send_command('@input /echo Ground Set')	
		elseif spell.english == 'Herculean Slash' then
			equip(sets.Herculean)
			send_command('@input /echo Herculean Slash Set')
		elseif spell.english == 'Lunge' then
			equip(sets.JA.Lunge)
			send_command('@input /echo Lunge Set')
		elseif spell.english == 'Swipe' then
			equip(sets.JA.Lunge)
			send_command('@input /echo Lunge Set')
		elseif spell.english == 'Swordplay' then
			equip(sets.enmity)
			equip({hands="Futhark Mitons +1"})
		elseif spell.english == 'One For All' then
			equip(sets.TP.DTHP)
		elseif spell.english == 'Battuta' then
			equip(set_combine(sets.enmity,sets.JA.Battuta))	
		elseif spell.english == 'Pflug' then
			equip(sets.enmity)
			equip({feet="Runeist's Boots +2"})
			elseif spell.english == 'Vivacious Pulse' then
			equip(sets.JA.VP)
		elseif spell.english == 'Vallation' then
			equip(sets.enmity)
			equip({body="Runeist's Coat +2",back="Ogma's cape",legs="Futhark Trousers +1"})
		elseif spell.english == 'Valiance' then
			equip(sets.enmity)
			equip({body="Runeist's Coat +2",back="Ogma's cape",legs="Futhark Trousers +1"})
			elseif spell.english == 'Embolden' then
			equip(sets.enmity)
			equip({back="Evasionist's Cape"})
		elseif spell.english == 'Gambit' then
			equip(sets.enmity)
			equip({waist="Chaac Belt",hands="Runeist's Mitons +2",})
			send_command('timers delete "Gambit"')
			send_command('timers create "Gambit" 90 down;wait 60;input /party Gambit [WEARING OFF IN 30 SEC.];wait 30;input /party Gambit [OFF];timers delete "Gambit"')
		elseif spell.english == "Rayke" then
			equip(sets.enmity)
			equip({waist="Chaac Belt",feet="Futhark Boots +1"})
			send_command('timers delete "Rayke"')
			send_command('timers create "Rayke" 47 down;wait 32;input /party Rayke [WEARING OFF IN 15 SEC.];wait 15;input /party Rayke [OFF];timers delete "Rayke"')
		elseif spell.english == "Liement" then
			equip(sets.enmity)
			equip({body="Futhark coat +1"})
	end	
	
end
	
function midcast(spell,act)
	if spell.action_type == 'Magic' then
		if Enmity_Spells:contains(spell.name) then
			equip(sets.enmity)	
			send_command('@input /echo Enmity Set')
		elseif Enhancing_Spells:contains(spell.name) then
			equip(sets.enhancing)
			send_command('@input /echo Enhancing Duration Set')	
			if spell.name == 'Refresh' then
				equip ({waist="Gishdubar Sash"})
			end
			if spell.name == 'Regen IV' then
				equip ({head="Runeist Bandeau +1"})
			end
		elseif Enhancing_Potency:contains(spell.name) then
			equip(sets.potency)
			send_command('@input /echo Potency Set')
			if spell.name == 'Phalanx' then
				equip({head="Futhark Bandeau +1"})
			end
			elseif spell.name == 'Stoneskin' then
			if buffactive["Stoneskin"] then
			windower.send_command('wait 1;cancel 37;')
			send_command('@input /echo Enhancing SS Set')
			end
		elseif Interupt_Spells:contains(spell.name) then
			equip(sets.Interupt)
			send_command('@input /echo Interupt Set')
		elseif Healing_Spells:contains(spell.name) then
			equip(sets.cure)
			send_command('@input /echo Healing Set')
		else
			equip(sets.precast.FC)		
		end
	end
end

function job_post_midcast(spell, action, spellMap, eventArgs)
    if buffactive == 'Battuta' then
        equip(sets.JA.Battuta)
        disable('hands') 
    end
end

function aftercast(spell)
        if player.status == 'Engaged' then
                equip(sets.TP[sets.TP.index[TP_ind]])
				if buffactive['doom'] then
					equip(sets.Utility.Doom)
				end
				if buffactive['battuta'] then	
					equip(set_combine(sets.TP[sets.TP.index[TP_ind]],sets.JA.BattutaActive))	
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
	if new == 'Engaged' then
		equip(sets.TP[sets.TP.index[TP_ind]])
	else
		equip(sets.Idle[sets.Idle.index[Idle_ind]])					
       end
end

function buff_change(name,gain)
	if (buff == "terror" or buff == "stun" or (buff == 'sleep' or buff == 'lullaby')) then

        if gain then

            if player.status == 'Engaged' then

                equip(sets.TP.DT)

            elseif player.status == 'Idle' then

                equip(sets.TP.DT)               

            end

        else 

            if player.status == 'Engaged' then

                equip(sets.TP[sets.TP.index[TP_ind]])

            elseif player.status == 'Idle' then

                equip(sets.Idle[sets.Idle.index[Idle_ind]])

            end

        end

    end
	if name == "doom" then
		if gain then		
			equip(sets.doomed)
			send_command('@input /echo Doomed Set')
		end
	end

if buff == 'Battuta' then
        if gain then 
            equip({hands="Turms Mittens"})
            disable('hands')            
        else
            enable('hands')         
            status_change(player.status)
        end
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

windower.register_event('zone change', function()
    equip(sets.Idle.Standard)	
end)