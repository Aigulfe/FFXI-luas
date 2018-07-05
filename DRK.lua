
--TP set toggle input: //gs c toggle TP set----1 Standard, 2 Solo, 3 Marches, 4 AccuracyLite, 5 AccuracyMax, 6 DT, 7 DTAccuracy--

--Idle set toggle input: //gs c toggle Idle set----1 Standard, 2 DT--

--Requiescat set toggle input: //gs c toggle Req set----1 Attack, 2 Accuracy--

--Chant du Cygne set toggle input: //gs c toggle CDC set----1 Attack, 2 Accuracy--

Absorb_Spells = S{"Absorb-STR","Absorb-DEX","Absorb-VIT","Absorb-MND","Absorb-INT","Absorb-CHR","Absorb-ACC"}

Drain_Spells = S{"Drain","Drain II","Aspir","Aspir II","Absorb-TP"}



function get_sets()

		send_command('bind f10 gs c toggle Idle set')

	 send_command('bind f9 gs c equip TP set')

	 send_command('bind f11 gs c equip DT set')

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

 --Idle Sets--  

        sets.Idle = {}

       

        sets.Idle.index = {'Standard','DT'}

       Idle_ind = 1

	Gear_Debug = 0

	Killer_Mode = 0             

       

    sets.Idle.Standard = {
		ammo="Staunch Tathlum",
		head={ name="Jumalik Helm", augments={'MND+10','"Mag.Atk.Bns."+15','Magic burst dmg.+10%','"Refresh"+1',}},
		body={ name="Jumalik Mail", augments={'HP+45','Attack+14','Enmity+8','"Refresh"+1',}},
		hands="Sulev. Gauntlets +2",
		legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
		feet={ name="Valorous Greaves", augments={'CHR+8','"Mag.Atk.Bns."+18','"Refresh"+1','Mag. Acc.+13 "Mag.Atk.Bns."+13',}},
		neck="Sanctity Necklace",
		waist="Flume Belt +1",
		left_ear="Genmei Earring",
		right_ear="Etiolation Earring",
		left_ring="Defending Ring",
		right_ring="Stikini Ring +1",
		back="Moonbeam Cape",
}

                                                 

    sets.Idle.DT = {
		ammo="Staunch Tathlum",
    head="Sulevia's Mask +2",
    body="Sulevia's Plate. +2",
    hands="Sulev. Gauntlets +2",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet={ name="Amm Greaves", augments={'HP+50','VIT+10','Accuracy+15','Damage taken-2%',}},
    neck="Loricate Torque +1",
    waist="Flume Belt +1",
    left_ear="Genmei Earring",
    right_ear="Etiolation Earring",
    left_ring="Defending Ring",
    right_ring="Moonbeam Ring",
    back="Moonbeam Cape",
}

										

							

        --TP Sets--

        sets.TP = {}

 

           sets.TP.index = {'GSword', 'AccuracyMid', 'Anguta', 'AccuracyFull', 'DT', 'DTAccuracy'}

                --1=Standard, 2 = AccuracyMid, 3=AccuracyFull, 4=DT, 5=DTAccuracy--

				

                TP_ind = 1

	sets.TP.Anguta = {
	ammo="Ginsen",
    head="Flam. Zucchetto +2",
    body={ name="Valorous Mail", augments={'Accuracy+20','"Dbl.Atk."+3','STR+11','Attack+12',}},
    hands="Sulev. Gauntlets +2",
    legs="Ig. Flanchard +3",
    feet="Flam. Gambieras +2",
    neck="Anu Torque",
    waist="Ioskeha Belt +1",
    left_ear="Brutal Earring",
    right_ear="Cessance Earring",
    left_ring="Petrov Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}},
}
	
	sets.TP.GSword = {
	ammo="Ginsen",
    head="Flam. Zucchetto +2",
    body={ name="Valorous Mail", augments={'Accuracy+20','"Dbl.Atk."+3','STR+11','Attack+12',}},
    hands="Sulev. Gauntlets +2",
    legs="Ig. Flanchard +3",
    feet="Flam. Gambieras +2",
    neck="Anu Torque",
    waist="Ioskeha Belt +1",
    left_ear="Brutal Earring",
    right_ear="Cessance Earring",
    left_ring="Petrov Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}},
}

                                                       

                                                       

    sets.TP.AccuracyMid = {
	ammo="Seeth. Bomblet +1",
    head="Flam. Zucchetto +2",
    body={ name="Valorous Mail", augments={'Accuracy+20','"Dbl.Atk."+3','STR+11','Attack+12',}},
    hands="Sulev. Gauntlets +2",
    legs="Ig. Flanchard +3",
    feet="Flam. Gambieras +2",
    neck="Lissome Necklace",
    waist="Ioskeha Belt +1",
    left_ear="Telos Earring",
    right_ear="Cessance Earring",
    left_ring="Chirich Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}},
}

       

    sets.TP.AccuracyFull = {
	ammo="Seeth. Bomblet +1",
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
    body="Ignominy Cuirass +3",
    hands="Sulev. Gauntlets +2",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Flam. Gambieras +2",
    neck="Sanctity Necklace",
    waist="Ioskeha Belt +1",
    left_ear="Telos Earring",
    right_ear="Digni. Earring",
    left_ring="Chirich Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}},
}

                                                       

    sets.TP.DT = {
	ammo="Staunch Tathlum",
    head="Sulevia's Mask +2",
    body="Sulevia's Plate. +2",
    hands="Sulev. Gauntlets +2",
    legs="Sulev. Cuisses +2",
    feet="Sulev. Leggings +2",
    neck="Loricate Torque +1",
    waist="Ioskeha Belt +1",
    left_ear="Genmei Earring",
    right_ear="Etiolation Earring",
    left_ring="Defending Ring",
    right_ring="Moonbeam Ring",
    back="Moonbeam Cape",
}

                                 

    sets.TP.DTAccuracy = {
	ammo="Staunch Tathlum",
    head="Sulevia's Mask +2",
    body="Sulevia's Plate. +2",
    hands="Sulev. Gauntlets +2",
    legs="Sulev. Cuisses +2",
    feet="Sulev. Leggings +2",
    neck="Sanctity Necklace",
    waist="Ioskeha Belt +1",
    left_ear="Brutal Earring",
    right_ear="Cessance Earring",
    left_ring="Defending Ring",
    right_ring="Moonbeam Ring",
    back="Moonbeam Cape",
}

                                                         

									

       --Weaponskill Sets--

        sets.WS = {}

       

		sets.Resolution = {
		ammo="Seeth. Bomblet +1",
    head="Flam. Zucchetto +2",
    body={ name="Argosy Hauberk +1", augments={'STR+12','Attack+20','"Store TP"+6',}},
    hands={ name="Argosy Mufflers +1", augments={'STR+20','"Dbl.Atk."+3','Haste+3%',}},
    legs="Ig. Flanchard +3",
    feet="Flam. Gambieras +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    right_ear="Cessance Earring",
    left_ring="Regal Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
}
	

				

	sets.Shockwave =  {
	ammo="Knobkierrie",
    head="Flam. Zucchetto +2",
    body="Ignominy Cuirass +3",
    hands="Flam. Manopolas +1",
    legs="Flamma Dirs +2",
    feet="Flam. Gambieras +2",
    neck="Fotia Gorget",
    waist="Eschan Stone",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    right_ear="Ishvara Earring",
    left_ring="Regal Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
}

	

	sets.Torcleaver = {
	ammo="Knobkierrie",
   head={ name="Odyssean Helm", augments={'Accuracy+23 Attack+23','Weapon skill damage +3%','Accuracy+14',}},
    body="Ignominy Cuirass +3",
    hands={ name="Odyssean Gauntlets", augments={'Accuracy+20 Attack+20','Weapon skill damage +2%','VIT+10',}},
    legs={ name="Fall. Flanchard +3", augments={'Enhances "Muted Soul" effect',}},
    feet="Sulev. Leggings +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    right_ear="Ishvara Earring",
    left_ring="Regal Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Ankou's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%',}},
}

	sets.GStrike = {
	ammo="Knobkierrie",
    head={ name="Valorous Mask", augments={'Accuracy+21 Attack+21','Weapon skill damage +3%','INT+1','Accuracy+9','Attack+10',}},
    body="Ignominy Cuirass +3",
    hands={ name="Odyssean Gauntlets", augments={'Weapon skill damage +3%','STR+6','Accuracy+14','Attack+11',}},
    legs={ name="Valor. Hose", augments={'Accuracy+7','Weapon skill damage +5%','AGI+5','Attack+8',}},
    feet="Sulev. Leggings +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    right_ear="Ishvara Earring",
    left_ring="Regal Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
}


sets.Herculean = {
ammo="Seeth. Bomblet +1",
    head="Flam. Zucchetto +2",
    body={ name="Found. Breastplate", augments={'Accuracy+15','Mag. Acc.+15','Attack+15','"Mag.Atk.Bns."+15',}},
    hands={ name="Fall. Fin. Gaunt. +3", augments={'Enhances "Diabolic Eye" effect',}},
    legs={ name="Eschite Cuisses", augments={'"Mag.Atk.Bns."+25','"Conserve MP"+6','"Fast Cast"+5',}},
    feet={ name="Founder's Greaves", augments={'VIT+10','Accuracy+15','"Mag.Atk.Bns."+15','Mag. Evasion+15',}},
    neck="Baetyl Pendant",
    waist="Eschan Stone",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    right_ear="Friomisi Earring",
    left_ring="Shiva Ring +1",
    right_ring="Shiva Ring +1",
    back={ name="Ankou's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10',}},
}
				 

	sets.Quietus = {
	ammo="Knobkierrie",
    head="Ratri Sallet",
    body="Ignominy Cuirass +3",
    hands="Ratri Gadlings",
    legs={ name="Fall. Flanchard +3", augments={'Enhances "Muted Soul" effect',}},
    feet="Sulev. Leggings +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    right_ear="Ishvara Earring",
    left_ring="Regal Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
}

	sets.Infernal = { 
	ammo="Knobkierrie",
    head="Pixie Hairpin +1",
    body={ name="Found. Breastplate", augments={'Accuracy+15','Mag. Acc.+15','Attack+15','"Mag.Atk.Bns."+15',}},
    hands={ name="Fall. Fin. Gaunt. +3", augments={'Enhances "Diabolic Eye" effect',}},
    legs={ name="Eschite Cuisses", augments={'"Mag.Atk.Bns."+25','"Conserve MP"+6','"Fast Cast"+5',}},
    feet={ name="Founder's Greaves", augments={'VIT+10','Accuracy+15','"Mag.Atk.Bns."+15','Mag. Evasion+15',}},
    neck="Baetyl Pendant",
    waist="Hachirin-no-Obi",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    right_ear="Friomisi Earring",
    left_ring="Shiva Ring +1",
    right_ring="Shiva Ring +1",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
}
				

	sets.Insurgency = {
	ammo="Knobkierrie",
    head="Ratri Sallet",
    body={ name="Argosy Hauberk +1", augments={'STR+12','Attack+20','"Store TP"+6',}},
    hands={ name="Argosy Mufflers +1", augments={'STR+20','"Dbl.Atk."+3','Haste+3%',}},
    legs="Ig. Flanchard +3",
    feet="Flam. Gambieras +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Brutal Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    left_ring="Regal Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
}

				

	sets.Entropy = {
	ammo="Floestone",
    head="Ig. Burgonet +2",
    body={ name="Valorous Mail", augments={'Accuracy+20','"Dbl.Atk."+3','STR+11','Attack+12',}},
    hands="Ig. Gauntlets +2",
    legs="Ig. Flanchard +3",
    feet="Flam. Gambieras +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Brutal Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    left_ring="Shiva Ring +1",
    right_ring="Shiva Ring +1",
    back={ name="Ankou's Mantle", augments={'INT+20','Accuracy+20 Attack+20','INT+10','"Dbl.Atk."+10',}},
}

				

	sets.CR = {
	ammo="Knobkierrie",
    head="Ratri Sallet",
    body="Ignominy Cuirass +3",
    hands="Ratri Gadlings",
    legs={ name="Fall. Flanchard +3", augments={'Enhances "Muted Soul" effect',}},
    feet="Sulev. Leggings +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    right_ear="Ishvara Earring",
    left_ring="Regal Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
}

	


	

				

	sets.Savage = {ammo="Knobkierrie",	

			    head=WSD_Head,neck="Caro Necklace",ear1="Ishvara Earring", ear2="Moonshade earring",

			 	body=WSD_Body,hands=WSD_Hands,ring1="Flamma ring",ring2="Regal ring",

			   	back=STR_Back,waist="Grunfeld Rope",legs=WSD_Legs,feet="Sulevia's Leggings +2"}

				

	sets.Vorpal = {ammo="Yetshila",

			    head=Acc_Head,neck="Fotia Gorget",ear1="Cessance earring",ear2="Moonshade earring",

			 	body=TP_Body,hands="Argosy mufflers +1",ring1="Niqmaddu ring",ring2="Begrudging ring",

			   	back=DA_Back,waist="Fotia belt",legs="Argosy Breeches +1",feet="Valorous greaves"}

		
sets.JA = {}		

			

	--Precast Sets--

	sets.precast = {
	ammo="Sapience Orb",
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
    body={ name="Odyss. Chestplate", augments={'Mag. Acc.+18','"Fast Cast"+5','"Mag.Atk.Bns."+3',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
    legs={ name="Eschite Cuisses", augments={'"Mag.Atk.Bns."+25','"Conserve MP"+6','"Fast Cast"+5',}},
    feet={ name="Odyssean Greaves", augments={'"Mag.Atk.Bns."+17','"Fast Cast"+5','AGI+2',}},
    neck="Orunmila's Torque",
    waist="Eschan Stone",
    left_ear="Enchntr. Earring +1",
    right_ear="Etiolation Earring",
    left_ring="Kishar Ring",
    right_ring="Rahab Ring",
    back={ name="Ankou's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10',}},
}

					

	sets.precast.dark = {
	ammo="Sapience Orb",
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
    body={ name="Odyss. Chestplate", augments={'Mag. Acc.+18','"Fast Cast"+5','"Mag.Atk.Bns."+3',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
    legs={ name="Eschite Cuisses", augments={'"Mag.Atk.Bns."+25','"Conserve MP"+6','"Fast Cast"+5',}},
    feet={ name="Odyssean Greaves", augments={'"Mag.Atk.Bns."+17','"Fast Cast"+5','AGI+2',}},
    neck="Orunmila's Torque",
    waist="Eschan Stone",
    left_ear="Enchntr. Earring +1",
    right_ear="Etiolation Earring",
    left_ring="Kishar Ring",
    right_ring="Rahab Ring",
    back={ name="Ankou's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10',}},
}

					

	sets.Absorb = {
	ammo="Pemphredo Tathlum",
    head="Ig. Burgonet +2",
    body={ name="Carm. Sc. Mail +1", augments={'Attack+20','"Mag.Atk.Bns."+12','"Dbl.Atk."+4',}},
    hands={ name="Fall. Fin. Gaunt. +3", augments={'Enhances "Diabolic Eye" effect',}},
    legs={ name="Fall. Flanchard +3", augments={'Enhances "Muted Soul" effect',}},
    feet="Ratri Sollerets",
    neck="Erra Pendant",
    waist="Casso Sash",
    left_ear="Enchntr. Earring +1",
    right_ear="Digni. Earring",
    left_ring="Kishar Ring",
    right_ring="Evanescence Ring",
    back={ name="Ankou's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10',}},
}

	

	sets.Dark = {
	ammo="Pemphredo Tathlum",
    head="Pixie Hairpin +1",
    body={ name="Carm. Sc. Mail +1", augments={'Attack+20','"Mag.Atk.Bns."+12','"Dbl.Atk."+4',}},
    hands={ name="Fall. Fin. Gaunt. +3", augments={'Enhances "Diabolic Eye" effect',}},
    legs={ name="Eschite Cuisses", augments={'"Mag.Atk.Bns."+25','"Conserve MP"+6','"Fast Cast"+5',}},
    feet="Ratri Sollerets",
    neck="Erra Pendant",
    waist="Casso Sash",
    left_ear="Enchntr. Earring +1",
    right_ear="Digni. Earring",
    left_ring="Archon Ring",
    right_ring="Evanescence Ring",
    back={ name="Niht Mantle", augments={'Attack+5','Dark magic skill +9','"Drain" and "Aspir" potency +25',}},
}

	sets.Endark = {
	ammo="Pemphredo Tathlum",
    head="Ig. Burgonet +2",
    body={ name="Carm. Sc. Mail +1", augments={'Attack+20','"Mag.Atk.Bns."+12','"Dbl.Atk."+4',}},
    hands={ name="Fall. Fin. Gaunt. +3", augments={'Enhances "Diabolic Eye" effect',}},
    legs={ name="Eschite Cuisses", augments={'"Mag.Atk.Bns."+25','"Conserve MP"+6','"Fast Cast"+5',}},
    feet="Ratri Sollerets",
    neck="Incanter's Torque",
    waist="Casso Sash",
    left_ear="Enchntr. Earring +1",
    right_ear="Digni. Earring",
    left_ring="Evanescence Ring",
    right_ring="Stikini Ring +1",
    back={ name="Niht Mantle", augments={'Attack+5','Dark magic skill +9','"Drain" and "Aspir" potency +25',}},
}

	sets.DSpikes = {
	ammo="Staunch Tathlum",
    head="Ratri Sallet",
    body="Heath. Cuirass +1",
    hands="Ratri Gadlings",
    legs={ name="Fall. Flanchard +3", augments={'Enhances "Muted Soul" effect',}},
    feet="Ratri Sollerets",
    neck="Sanctity Necklace",
    waist="Eschan Stone",
    left_ear="Odnowa Earring +1",
    right_ear="Odnowa Earring",
    left_ring="Etana Ring",
    right_ring="Moonbeam Ring",
    back="Moonbeam Cape",
}

	

	sets.Drain = {
	ammo="Pemphredo Tathlum",
	--head={ name="Odyssean Helm", augments={'"Drain" and "Aspir" potency +7','Accuracy+4','Mag. Acc.+7 "Mag.Atk.Bns."+7',}},
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
    body={ name="Carm. Sc. Mail +1", augments={'Attack+20','"Mag.Atk.Bns."+12','"Dbl.Atk."+4',}},
    hands={ name="Fall. Fin. Gaunt. +3", augments={'Enhances "Diabolic Eye" effect',}},
    legs={ name="Eschite Cuisses", augments={'"Mag.Atk.Bns."+25','"Conserve MP"+6','"Fast Cast"+5',}},
    feet="Ratri Sollerets",
    neck="Erra Pendant",
    waist="Austerity Belt +1",
    left_ear="Enchntr. Earring +1",
    right_ear="Digni. Earring",
    left_ring="Archon Ring",
    right_ring="Evanescence Ring",
    back={ name="Niht Mantle", augments={'Attack+5','Dark magic skill +9','"Drain" and "Aspir" potency +25',}},
}

	


	sets.Drain3 = {
	ammo="Pemphredo Tathlum",
    head={ name="Fall. Burgeonet +2", augments={'Enhances "Dark Seal" effect',}},
    body={ name="Carm. Sc. Mail +1", augments={'Attack+20','"Mag.Atk.Bns."+12','"Dbl.Atk."+4',}},
    hands={ name="Fall. Fin. Gaunt. +3", augments={'Enhances "Diabolic Eye" effect',}},
    legs="Heathen's flanchard +1",
    feet="Ratri Sollerets",
    neck="Erra Pendant",
    waist="Austerity Belt +1",
    left_ear="Enchntr. Earring +1",
    right_ear="Digni. Earring",
    left_ring="Archon Ring",
    right_ring="Evanescence Ring",
    back={ name="Niht Mantle", augments={'Attack+5','Dark magic skill +9','"Drain" and "Aspir" potency +25',}},
}

	sets.Nuke = {
	ammo="Pemphredo Tathlum",
	head={ name="Jumalik Helm", augments={'MND+10','"Mag.Atk.Bns."+15','Magic burst dmg.+10%','"Refresh"+1',}},
    body={ name="Found. Breastplate", augments={'Accuracy+15','Mag. Acc.+15','Attack+15','"Mag.Atk.Bns."+15',}},
    hands={ name="Fall. Fin. Gaunt. +3", augments={'Enhances "Diabolic Eye" effect',}},
    legs={ name="Eschite Cuisses", augments={'"Mag.Atk.Bns."+25','"Conserve MP"+6','"Fast Cast"+5',}},
    feet={ name="Founder's Greaves", augments={'VIT+10','Accuracy+15','"Mag.Atk.Bns."+15','Mag. Evasion+15',}},
    neck="Baetyl Pendant",
    waist="Hachirin-no-Obi",
    left_ear="Hecate's Earring",
    right_ear="Friomisi Earring",
    left_ring="Shiva Ring +1",
    right_ring="Shiva Ring +1",
    back={ name="Ankou's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10',}},
}

end







function precast(spell)

	if spell.action_type == 'Magic' then

		if spell.skill == 'Dark Magic' then

			equip(sets.precast.dark)

			send_command('@input /echo Dark FC Set')

		else

			equip(sets.precast)

			send_command('@input /echo Precast Set')

		end

	end	

	

	if spell.english == 'Resolution' then

			equip(sets.Resolution)			

			send_command('@input /echo Resolution Set')					

		elseif spell.english == 'Scourge' then		

			equip(sets.Scourge)

			send_command('@input /echo Scourge Set')		

		elseif spell.english == 'Shockwave' then

			equip(sets.Shockwave)

			send_command('@input /echo Shockwave Set')

		elseif spell.english == 'Torcleaver' then

			equip(sets.Torcleaver)

			send_command('@input /echo Torcleaver Set')

		elseif spell.english == 'Quietus'  then

			equip(sets.Quietus)

			send_command('@input /echo Quietus Set')
			
		elseif spell.english == 'Ground Strike'  then

			equip(sets.GStrike)

			send_command('@input /echo GStrike Set')	

		elseif spell.english == 'Entropy' then

			equip(sets.Entropy)

			send_command('@input /echo Entropy Set')

		elseif spell.english == 'Cross Reaper' then

			equip(sets.CR)

			send_command('@input /echo CR Set')

		elseif spell.english == 'Insurgency' then

			equip(sets.Insurgency)

			send_command('@input /echo Insurgency Set')

		elseif spell.english == 'Infernal Scythe' then

			equip(sets.Infernal)

			send_command('@input /echo Infernal Set')

		elseif spell.english == 'Herculean Slash' then

			equip(sets.Herculean)

			send_command('@input /echo Herculean Set')

		elseif spell.english == 'Fell Cleave' then

			equip(sets.FellCleave)

			send_command('@input /echo Fell Cleave Set')

		elseif spell.english == 'Upheaval' then

			equip(sets.Upheaval)

			send_command('@input /echo Upheaval Set')			

		elseif spell.english == 'Savage Blade' then

			equip(sets.Savage)

			send_command('@input /echo Savage Blade Set')

		elseif spell.english == "Vorpal Blade" then		

			equip(sets.Vorpal)			

		elseif spell.english == 'Last Resort' then

			equip({back=="Ankou's mantle",feet="Fallen's sollerets +1"})

		elseif spell.english == 'Diabolic Eye' then

			equip({hands="Fallen's finger gauntlets +1"})	

		elseif spell.english == 'Souleater' then

			equip({head="Ig. Burgonet +2"})

		elseif spell.english == "Dark Seal" then

			equip({head={ name="Fall. Burgeonet +2", augments={'Enhances "Dark Seal" effect',}},})

		elseif spell.english == "Arcane Circle" then

			equip({feet="Ig. Sollerets +2",})

		elseif spell.english == "Weapon Bash" then

			equip({hands="Ig. Gauntlets +2",})

		elseif spell.english == "Nether Void" then

			equip({legs="Heathen's flanchard +1"})

		elseif spell.english == "Blood Weapon" then

			equip({body="Fallen's cuirass +1"})

		elseif spell.english == 'Lunge' or spell.english == 'Swipe' then

			equip(sets.Infernal)

			send_command('@input /echo Lunge Set')

	end	

	

end

	

function midcast(spell,act)

	if spell.skill == 'Dark Magic' then

		if Absorb_Spells:contains(spell.name) then

			equip(sets.Absorb)

			send_command('@input /echo Absorb Set')

			if spell.name == "Absorb-TP" then

				equip({hands="Heathen's Gauntlets"})

			end

			if buffactive["Dark Seal"] then

				equip({head={ name="Fall. Burgeonet +2", augments={'Enhances "Dark Seal" effect',}},})

				send_command('@input /echo DS Head')

			end

			if buffactive["Nether Void"] then

				equip({legs="Heathen's flanchard +1"})

				send_command('@input /echo NV Legs')

			end

			weathercheck(spell.element)

		elseif Drain_Spells:contains(spell.name) then

			equip(sets.Drain)

			send_command('@input /echo Drain Set')

			if buffactive['Dark Seal'] then

					equip({head={ name="Fall. Burgeonet +2", augments={'Enhances "Dark Seal" effect',}},})

					send_command('@input /echo DS Head')

			end

			if buffactive['Nether Void'] then

				equip({legs="Heathen's flanchard +1"})

				send_command('@input /echo NV Legs')

			end

			weathercheck(spell.element)

		elseif spell.name == "Dread Spikes" then

			equip(sets.Dark)

			equip({body="Bale cuirass +2"})

			send_command('@input /echo Dread Spikes Set')

		elseif spell.name == "Endark II" then

			equip(sets.Dark)

			send_command('@input /echo Endark Set')

		elseif spell.name == "Drain III" then

			equip(sets.Drain3)

			send_command('@input /echo Drain III Set')
			
			if buffactive['Dark Seal'] then

					equip({head={ name="Fall. Burgeonet +2", augments={'Enhances "Dark Seal" effect',}},})

					send_command('@input /echo DS Head')

			end

			if buffactive['Nether Void'] then

				equip({legs="Heathen's flanchard +1"})

				send_command('@input /echo NV Legs')

			end

			weathercheck(spell.element)

		else

			equip(sets.Dark)

			send_command('@input /echo Dark Set')

			weathercheck(spell.element)

		end

	elseif spell.skill == 'Enfeebling Magic' then

	elseif spell.skill == 'Elemental Magic' then
			equip(sets.Nuke)
	end

end





function aftercast(spell)

	if player.status == 'Engaged' then

		if player.equipment.main == 'Anguta' then			

			equip(sets.TP[sets.TP.index[TP_ind]])

			send_command('@input /echo Anguta Set')

		else

			equip(sets.TP[sets.TP.index[TP_ind]])

			send_command('@input /echo TP Set')

		end

		if Killer_Mode == 1 and buffactive["Arcane Circle"] then			

			equip({body="Founder's breastplate"})

			send_command('@input /echo Killer TP Set')		

		end

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

		equip(sets.Idle.Standard)

	end

end



function self_command(command)	

	if command == 'equip TP set' then

		if player.equipment.main == 'Anguta' then

			TP_ind = 3

			equip(sets.TP[sets.TP.index[TP_ind]])

			send_command('@input /echo Anguta Set')

		else

			TP_ind = TP_ind +1

				if TP_ind > #sets.TP.index then TP_ind =1 end

				send_command('@input /echo <----- TP Set changed to '..sets.TP.index[TP_ind]..' ---->')

				equip(sets.TP[sets.TP.index[TP_ind]])

		end

		

		if Killer_Mode == 1 and buffactive["Arcane Circle"] then			

			equip({body="Founder's breastplate"})

			send_command('@input /echo Killer TP Set')		

		end

		

	elseif command == 'equip Idle set' then		

		equip(sets.Idle.Standard)

		send_command('@input /echo Idle Set')

	elseif command == 'equip DW set' then		

		TP_ind = 2		

		equip(sets.TP[sets.TP.index[TP_ind]])

		send_command('@input /echo DW Set')

	elseif command == 'equip DT set' then		

		TP_ind = 6		

		equip(sets.TP[sets.TP.index[TP_ind]])

		send_command('@input /echo DT Set')	

	elseif command == 'equip DTAM set' then		

		TP_ind = 7		

		equip(sets.TP[sets.TP.index[TP_ind]])

		send_command('@input /echo DTAM Set')		

	elseif command == 'equip Acc_Lite set' then		

		TP_ind = 4		

		equip(sets.TP[sets.TP.index[TP_ind]])

		send_command('@input /echo Acc_lite Set')				

	elseif command == 'change Killer mode' then

		if Killer_Mode == 0 then

			Killer_Mode = 1

			send_command('@input /echo Killer Mode Set to 1')

		else

			Killer_Mode = 0

			send_command('@input /echo Killer Mode Set to 0')

		end

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



windower.register_event('zone change', function()

    equip(sets.Idle.Standard)	

end)



function weathercheck(spell_element)

	if spell_element == world.weather_element or spell_element == world.day_element then

		equip({waist="Hachirin-no-Obi"})

		send_command('@input /echo Using Element Obi')

	else		

	end

end