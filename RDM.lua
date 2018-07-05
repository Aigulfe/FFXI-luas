-- TEST DRAIN/ASPIR 

Enhancing_Spells = S{"Haste","Haste II","Flurry","Flurry II","Refresh","Refresh II","Protect V","Shell V","Enblizzard II","Enthunder II","Enfire II","Enaero II","Enstone II","Enwater II","Enblizzard","Enthunder","Enfire","Enaero","Enstone","Enwater","Blaze Spikes","Ice Spikes","Shock Spikes","Hailstorm","Rainstorm","Voidstorm","Thunderstorm","Aurorastorm","Sandstorm","Windstorm","Firestorm"}
Enhancing_Potency = S{"Barfire","Barblizzard","Baraero","Barstone","Barthunder","Barwater","Barsleep","Barpoison","Barparalyze",
					"Barblind","Barsilence","Barpetrify","Baramnesia","Barvirus","Temper","Temper II","Phalanx","Stoneskin","Blink","Gain-STR","Gain-DEX","Gain-MND","Gain-INT","Gain-CHR","Gain-AGI","Gain-VIT"}
Enfeebling_Effect = S{"Addle","Poison","Dia","Dia II","Dia III","Distract II","Frazzle","Frazzle II"} --effect items/skill
Enfeebling_Pot = S{"Slow","Slow II","Paralyze","Paralyze II","Blind","Distract III","Frazzle III"} --effect items/MND relic hat
Enfeebling_Acc = S{"Sleep","Sleep II","Sleepga","Silence","Gravity","Gravity II","Dispel","Inundation","Bind","Break","Distract"} --Straight Macc


function get_sets()

 

        send_command('bind f9 gs c toggle Nuke set')
		
		send_command('bind ^f9 gs c toggle Weapons')
        
		send_command('bind f10 gs c toggle Idle set')

		send_command('bind f11 gs c toggle TP set')

		send_command('bind f12 gs c toggle Enfeebling Set')

		

        function file_unload()

     

 

        send_command('unbind ^f9')

        send_command('unbind ^f10')

	send_command('unbind ^f11')

	send_command('unbind ^f12')



       

        send_command('unbind !f9')

        send_command('unbind !f10')

	self_command('unbind !f11')

	send_command('unbind !f12')



        send_command('unbind f9')

        send_command('unbind f10')

	send_command('unbind f11')

	send_command('unbind f12')



 

        end    

		--Weapons--
		
		sets.Weapons = {}
		--'melee','Nuke'
		sets.Weapons.Index = {'Melee', 'Nuke'}
		Weapons_ind = 1
		
		sets.Weapons.Melee = {main="Sequence", sub={ name="Colada", augments={'Crit.hit rate+2','STR+9','Accuracy+12','Attack+23',}},}
		
		sets.Weapons.Nuke = {main={ name="Colada", augments={'"Dbl.Atk."+3','MND+1','Mag. Acc.+25','"Mag.Atk.Bns."+22',}}, sub="Ammurapi Shield",}

		 --Idle Sets--  

        sets.Idle = {}

       

        sets.Idle.index = {'Standard', 'DT'}

		--1=Standard, 2 =DT --

        Idle_ind = 1                  

       

    sets.Idle.Standard = {
		main="Bolelabunga",
		sub="Genmei Shield",
		ammo="Homiliary",
		head={ name="Viti. Chapeau +1", augments={'Enhances "Dia III" effect','Enhances "Slow II" effect',}},
		body="Atrophy Tabard +3",
		hands="Aya. Manopolas +2",
		legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
		feet="Aya. Gambieras +2",
		neck="Sanctity Necklace",
		waist="Fucho-no-Obi",
		left_ear="Genmei Earring",
		right_ear="Etiolation Earring",
		left_ring="Defending Ring",
		right_ring="Stikini Ring +1",
		back="Moonbeam Cape",
}

									  

	sets.Idle.DT = {
	main="Bolelabunga",
    sub="Genmei Shield",
    ammo="Staunch Tathlum",
    head="Aya. Zucchetto +2",
    body="Jhakri Robe +2",
    hands="Aya. Manopolas +2",
    legs="Aya. Cosciales +2",
    feet="Aya. Gambieras +2",
    neck="Loricate Torque +1",
    waist="Flume Belt +1",
    left_ear="Genmei Earring",
    right_ear="Etiolation Earring",
    left_ring="Defending Ring",
    right_ring="Ayanmo Ring",
    back="Moonbeam Cape",
}						  

                                                 

		--TP Sets--

        sets.TP = {}

 

           sets.TP.index = {'Standard', "Acc"}

               

                TP_ind = 1

	sets.TP.Standard = {
	main="Sequence",
    sub={ name="Colada", augments={'Crit.hit rate+2','STR+9','Accuracy+12','Attack+23',}},
    ammo="Ginsen",
    head="Aya. Zucchetto +2",
    body="Ayanmo Corazza +2",
    hands="Aya. Manopolas +2",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
    neck="Lissome Necklace",
    waist="Kentarch Belt +1",
    left_ear="Brutal Earring",
    right_ear="Sherida Earring",
    left_ring="Haverton Ring +1",
    right_ring="Chirich Ring",
    back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10',}},
}

	sets.TP.Acc = {
	main="Sequence",
    sub={ name="Colada", augments={'Crit.hit rate+2','STR+9','Accuracy+12','Attack+23',}},
    ammo="Ginsen",
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
    body="Ayanmo Corazza +2",
    hands="Atrophy Gloves +3",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Aya. Gambieras +2",
    neck="Lissome Necklace",
    waist="Kentarch Belt +1",
    left_ear="Regal Earring",
    right_ear="Telos Earring",
    left_ring="Haverton Ring +1",
    right_ring="Cacoethic Ring +1",
    back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10',}},
}

	sets.MeleeMode ={}

		sets.MeleeMode.Index ={'NotMelee','Melee'}

		MeleeMode_ind =1

		

		--Nuke Sets---

		sets.Nuke ={}

		

			sets.Nuke.index ={'Standard', 'Mix', 'Macc', 'MagicBurst', 'MaccBurst'}

			--1=Standard, 2= Magic Burst'--

			Nuke_ind = 1

			

	sets.Nuke.Standard = {
	main={ name="Colada", augments={'"Dbl.Atk."+3','MND+1','Mag. Acc.+25','"Mag.Atk.Bns."+22',}},
    sub="Ammurapi Shield",
    ammo="Pemphredo Tathlum",
    head={ name="Merlinic Hood", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','"Fast Cast"+4','Mag. Acc.+13','"Mag.Atk.Bns."+13',}},
    body={ name="Amalric Doublet +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    legs={ name="Amalric Slops +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    feet={ name="Vitiation Boots +3", augments={'Enhances "Paralyze II" effect',}},
    neck="Sanctity Necklace",
    waist="Refoccilation Stone",
    left_ear="Regal Earring",
    right_ear="Friomisi Earring",
    left_ring="Shiva Ring +1",
    right_ring="Shiva Ring +1",
    back={ name="Sucellos's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10',}},
}

	sets.Nuke.Mix = {
	main={ name="Colada", augments={'"Dbl.Atk."+3','MND+1','Mag. Acc.+25','"Mag.Atk.Bns."+22',}},
    sub="Ammurapi Shield",
    ammo="Pemphredo Tathlum",
    head={ name="Merlinic Hood", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','"Fast Cast"+4','Mag. Acc.+13','"Mag.Atk.Bns."+13',}},
    body={ name="Amalric Doublet +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','Magic burst dmg.+8%','MND+1','Mag. Acc.+15','"Mag.Atk.Bns."+11',}},
    feet={ name="Vitiation Boots +3", augments={'Enhances "Paralyze II" effect',}},
    neck="Sanctity Necklace",
    waist="Refoccilation Stone",
    left_ear="Regal Earring",
    right_ear="Friomisi Earring",
    left_ring="Shiva Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Sucellos's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10',}},
}

	sets.Nuke.Macc = {
	main={ name="Colada", augments={'"Dbl.Atk."+3','MND+1','Mag. Acc.+25','"Mag.Atk.Bns."+22',}},
    sub="Ammurapi Shield",
    ammo="Pemphredo Tathlum",
    head={ name="Merlinic Hood", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','"Fast Cast"+4','Mag. Acc.+13','"Mag.Atk.Bns."+13',}},
    body={ name="Amalric Doublet +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','Magic burst dmg.+8%','MND+1','Mag. Acc.+15','"Mag.Atk.Bns."+11',}},
    feet={ name="Vitiation Boots +3", augments={'Enhances "Paralyze II" effect',}},
    neck="Sanctity Necklace",
    waist="Refoccilation Stone",
    left_ear="Regal Earring",
    right_ear="Friomisi Earring",
    left_ring="Stikini Ring +1",
    right_ring="Shiva Ring +1",
    back={ name="Sucellos's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10',}},
}

										

	sets.Nuke.MagicBurst = {
	main={ name="Colada", augments={'"Dbl.Atk."+3','MND+1','Mag. Acc.+25','"Mag.Atk.Bns."+22',}},
    sub="Ammurapi Shield",
    ammo="Pemphredo Tathlum",
    head="Ea Hat",
    body="Ea Houppelande",
    hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    legs="Ea Slops",
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','Magic burst dmg.+8%','CHR+6','Mag. Acc.+2',}},
    neck="Mizu. Kubikazari",
    waist="Refoccilation Stone",
    left_ear="Regal Earring",
    right_ear="Friomisi Earring",
    left_ring="Mujin Band",
    right_ring="Shiva Ring +1",
    back={ name="Sucellos's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10',}},
}

sets.Nuke.MaccBurst = {
	main={ name="Colada", augments={'"Dbl.Atk."+3','MND+1','Mag. Acc.+25','"Mag.Atk.Bns."+22',}},
    sub="Ammurapi Shield",
    ammo="Pemphredo Tathlum",
    head="Atrophy Chapeau +3",
    body={ name="Merlinic Jubbah", augments={'Mag. Acc.+16 "Mag.Atk.Bns."+16','Magic burst dmg.+11%','STR+1','Mag. Acc.+7','"Mag.Atk.Bns."+8',}},
    hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','Magic burst dmg.+8%','MND+1','Mag. Acc.+15','"Mag.Atk.Bns."+11',}},
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','Magic burst dmg.+8%','CHR+6','Mag. Acc.+2',}},
    neck="Mizu. Kubikazari",
    waist="Refoccilation Stone",
    left_ear="Regal Earring",
    right_ear="Friomisi Earring",
    left_ring="Mujin Band",
    right_ring="Shiva Ring +1",
    back={ name="Sucellos's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10',}},
}

			

		--Enhancing Sets--					

		sets.Enhancing ={}


			sets.Enhancing.index ={'Duration', 'Potency'}		

	sets.Enhancing.Duration = {
	main={ name="Colada", augments={'Enh. Mag. eff. dur. +3','INT+4','Mag. Acc.+14','"Mag.Atk.Bns."+18','DMG:+1',}},
    sub="Ammurapi Shield",
    ammo="Regal Gem",
    head={ name="Telchine Cap", augments={'"Cure" potency +6%','Enh. Mag. eff. dur. +9',}},
    body={ name="Viti. Tabard +3", augments={'Enhances "Chainspell" effect',}},
    hands="Atrophy Gloves +3",
    legs={ name="Telchine Braconi", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    feet="Leth. Houseaux +1",
    neck="Incanter's Torque",
    waist="Olympus Sash",
    left_ear="Andoaa Earring",
    right_ear="Gifted Earring",
    left_ring="Stikini Ring",
    right_ring="Stikini Ring +1",
    back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}

	sets.Enhancing.Potency = {
	main={ name="Colada", augments={'Enh. Mag. eff. dur. +3','INT+4','Mag. Acc.+14','"Mag.Atk.Bns."+18','DMG:+1',}},
    sub="Ammurapi Shield",
    ammo="Regal Gem",
    head="Befouled Crown",
    body={ name="Viti. Tabard +3", augments={'Enhances "Chainspell" effect',}},
    hands={ name="Viti. Gloves +2", augments={'Enhances "Phalanx II" effect',}},
    legs="Atrophy Tights +3",
    feet="Leth. Houseaux +1",
    neck="Incanter's Torque",
    waist="Olympus Sash",
    left_ear="Andoaa Earring",
    right_ear="Gifted Earring",
    left_ring="Stikini Ring",
    right_ring="Stikini Ring +1",
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +8','Mag. Acc.+8','Enh. Mag. eff. dur. +14',}},
}

								 

		--Enfeebling Sets--

		sets.Enfeebling ={}

		

			sets.Enfeebling.index ={'Acc', 'Pot'}

			--1=Acc, 2= Pot--

			Enfeebling_ind = 1

		

	sets.Enfeebling.Acc = {
	main={ name="Colada", augments={'"Dbl.Atk."+3','MND+1','Mag. Acc.+25','"Mag.Atk.Bns."+22',}},
    sub="Ammurapi Shield",
    ammo="Regal Gem",
    head="Atrophy Chapeau +3",
    body="Atrophy Tabard +3",
    hands={ name="Kaykaus Cuffs", augments={'MP+60','MND+10','Mag. Acc.+15',}},
    legs={ name="Chironic Hose", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','"Resist Silence"+6','INT+2','Mag. Acc.+2','"Mag.Atk.Bns."+9',}},
    feet={ name="Vitiation Boots +3", augments={'Enhances "Paralyze II" effect',}},
    neck="Erra Pendant",
    waist="Rumination Sash",
    left_ear="Regal Earring",
    right_ear="Digni. Earring",
    left_ring="Kishar Ring",
    right_ring="Stikini Ring +1",
    back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}			

								 

	sets.Enfeebling.Pot = {
	main={ name="Grioavolr", augments={'Enfb.mag. skill +15','MND+16','Mag. Acc.+10',}},
    sub="Enki Strap",
    ammo="Regal Gem",
    head={ name="Viti. Chapeau +1", augments={'Enhances "Dia III" effect','Enhances "Slow II" effect',}},
    body="Lethargy Sayon +1",
    hands="Leth. Gantherots +1",
    legs={ name="Chironic Hose", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','"Resist Silence"+6','INT+2','Mag. Acc.+2','"Mag.Atk.Bns."+9',}},
    feet={ name="Vitiation Boots +3", augments={'Enhances "Paralyze II" effect',}},
    neck="Incanter's Torque",
    waist="Rumination Sash",
    left_ear="Regal Earring",
    right_ear="Digni. Earring",
    left_ring="Kishar Ring",
    right_ring="Stikini Ring +1",
    back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}

							 

								 

		--Magic Sets--

		sets.Magic ={}

					

	sets.Magic.Healing = {
	main="Oranyan",
    sub="Enki Strap",
    ammo="Regal Gem",
    head={ name="Vanya Hood", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
    body={ name="Kaykaus Bliaut", augments={'MP+60','"Cure" spellcasting time -5%','Enmity-5',}},
    hands={ name="Kaykaus Cuffs", augments={'MP+60','MND+10','Mag. Acc.+15',}},
    legs="Atrophy Tights +3",
    feet={ name="Vanya Clogs", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}},
    neck="Incanter's Torque",
    waist="Luminary Sash",
    left_ear="Mendi. Earring",
    right_ear="Regal Earring",
    left_ring="Lebeche Ring",
    right_ring="Stikini Ring +1",
    back="Solemnity Cape",
}

												 

	sets.Magic.Regen = {
	main="Bolelabunga",
    sub="Ammurapi Shield",
    ammo="Regal Gem",
    head={ name="Vanya Hood", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
    body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}},
    hands={ name="Kaykaus Cuffs", augments={'MP+60','MND+10','Mag. Acc.+15',}},
    legs="Atrophy Tights +3",
    feet={ name="Vanya Clogs", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}},
    neck="Incanter's Torque",
    waist="Luminary Sash",
    left_ear="Mendi. Earring",
    right_ear="Gifted Earring",
    left_ring="Kishar Ring",
    right_ring="Stikini Ring +1",
    back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}

			

	sets.Magic.Dark = {
	main={ name="Colada", augments={'"Dbl.Atk."+3','MND+1','Mag. Acc.+25','"Mag.Atk.Bns."+22',}},
    sub="Ammurapi Shield",
    ammo="Pemphredo Tathlum",
    head="Pixie Hairpin +1",
    body="Shango Robe",
    hands={ name="Amalric Gages", augments={'INT+10','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
    legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','Magic burst dmg.+8%','MND+1','Mag. Acc.+15','"Mag.Atk.Bns."+11',}},
    feet={ name="Vitiation Boots +3", augments={'Enhances "Paralyze II" effect',}},
    neck="Incanter's Torque",
    waist="Refoccilation Stone",
	left_ear="Regal Earring",
    right_ear="Friomisi Earring",
    left_ring="Evanescence Ring",
    right_ring="Shiva Ring +1",
    back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}

								 

	sets.Magic.Stun ={
	main={ name="Grioavolr", augments={'Enfb.mag. skill +15','MND+16','Mag. Acc.+10',}},
    sub="Enki Strap",
    ammo="Pemphredo Tathlum",
    head="Atrophy Chapeau +3",
    body="Shango Robe",
    hands={ name="Merlinic Dastanas", augments={'Attack+20','"Fast Cast"+6','MND+3','"Mag.Atk.Bns."+11',}},
    legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+5','"Fast Cast"+6','DEX+5','"Mag.Atk.Bns."+8',}},
    neck="Voltsurge Torque",
    waist="Luminary Sash",
    left_ear="Etiolation Earring",
    right_ear="Enchntr. Earring +1",
    left_ring="Kishar Ring",
    right_ring="Rahab Ring",
    back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}

						

	sets.Magic.Refresh = {
	head={ name="Amalric Coif +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
	body="Atrophy Tabard +3",
	legs="Leth. Fuseau +1",
    waist="Gishdubar Sash",
	}

	
	sets.Magic.Stoneskin = {
	legs="Haven Hose",
	neck="Nodens Gorget",
    waist="Siegel Sash",
	}
	
	sets.Magic.Aquaveil = {
	head={ name="Amalric Coif +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
	}


		--Precast Sets--

			sets.precast = {}

       

	sets.precast.FC = {
	ammo="Sapience Orb",
    head="Atrophy Chapeau +3",
    body={ name="Viti. Tabard +3", augments={'Enhances "Chainspell" effect',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
    legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+5','"Fast Cast"+6','DEX+5','"Mag.Atk.Bns."+8',}},
    neck="Orunmila's Torque",
    waist="Channeler's Stone",
    left_ear="Enchntr. Earring +1",
    right_ear="Etiolation Earring",
    left_ring="Kishar Ring",
    right_ring="Rahab Ring",
    back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}

       

	sets.precast.FC.Standard = {
	ammo="Sapience Orb",
    head="Atrophy Chapeau +3",
    body={ name="Viti. Tabard +3", augments={'Enhances "Chainspell" effect',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
    legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+5','"Fast Cast"+6','DEX+5','"Mag.Atk.Bns."+8',}},
    neck="Orunmila's Torque",
    waist="Channeler's Stone",
    left_ear="Enchntr. Earring +1",
    right_ear="Etiolation Earring",
    left_ring="Kishar Ring",
    right_ring="Rahab Ring",
    back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}

							

	sets.precast.FC.Regen = {
	main="Oranyan",
    sub="Enki Strap",
    ammo="Sapience Orb",
    head="Atrophy Chapeau +3",
    body={ name="Viti. Tabard +3", augments={'Enhances "Chainspell" effect',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
    legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+5','"Fast Cast"+6','DEX+5','"Mag.Atk.Bns."+8',}},
    neck="Orunmila's Torque",
    waist="Channeler's Stone",
    left_ear="Enchntr. Earring +1",
    right_ear="Etiolation Earring",
    left_ring="Kishar Ring",
    right_ring="Rahab Ring",
    back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}

								 



		--Utility and JA Sets --					

		sets.Utility = {}

       

        sets.Utility.Weather = {waist="Hachirin-no-obi"}

				

	sets.Utility.DrainAspir = {
	main={ name="Colada", augments={'"Dbl.Atk."+3','MND+1','Mag. Acc.+25','"Mag.Atk.Bns."+22',}},
    sub="Ammurapi Shield",
    ammo="Regal Gem",
    head={ name="Merlinic Hood", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','"Drain" and "Aspir" potency +10','Mag. Acc.+11','"Mag.Atk.Bns."+9',}},
    body={ name="Merlinic Jubbah", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','"Drain" and "Aspir" potency +10','Mag. Acc.+2','"Mag.Atk.Bns."+6',}},
    hands={ name="Merlinic Dastanas", augments={'Mag. Acc.+16','"Drain" and "Aspir" potency +7','MND+7','"Mag.Atk.Bns."+10',}},
    legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+20','"Drain" and "Aspir" potency +8',}},
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','"Drain" and "Aspir" potency +7','"Mag.Atk.Bns."+4',}},
    neck="Erra Pendant",
    waist="Fucho-no-Obi",
    left_ear="Digni. Earring",
    right_ear="Enchntr. Earring +1",
    left_ring="Evanescence Ring",
    right_ring="Archon Ring",
    back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}

								 

		sets.Utility.Dia = {head={ name="Viti. Chapeau +1", augments={'Enhances "Dia III" effect','Enhances "Slow II" effect',}},}

		

		

		sets.Utility.Doomed = {waist="Gishdubar Sash", ring1 ="Saida Ring"}

		

		sets.JA ={}

		

		sets.JA.CS ={body={ name="Viti. Tabard +1", augments={'Enhances "Chainspell" effect',}},}

		

		sets.JA.Sab ={hands ="Lethargy Gantherots +1"}

		

		sets.JA.Composure = {Feet = "Lethargy Houseaux +1" , body = "Lethargy Sayon +1", hands="Leth. Gantherots +1", legs="Leth. Fuseau +1",}		

 

		--WS Sets--

       

		sets.WS = {}

		

	sets.WS.CDC = {
	ammo="Yetshila",
    head="Aya. Zucchetto +2",
    body="Ayanmo Corazza +2",
    hands="Jhakri Cuffs +2",
    legs="Jhakri Slops +2",
    feet="Thereoid Greaves",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    right_ear="Sherida Earring",
    left_ring="Hetairoi Ring",
    right_ring="Ilabrat Ring",
    back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Crit.hit rate+10',}},
}

		

		sets.WS.Savage =	{
	ammo="Floestone",
	head="Jhakri Coronal +2",
    body="Jhakri Robe +2",
    hands="Jhakri Cuffs +2",
    legs="Jhakri Slops +2",
    feet="Jhakri Pigaches +2",
    neck="Caro Necklace",
    waist="Prosilio Belt +1",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    right_ear="Ishvara Earring",
    left_ring="Shukuyu Ring",
    right_ring="Apate Ring",
    back={ name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
}

		

	sets.WS.Vorpal = {
	ammo="Yetshila",
    head="Aya. Zucchetto +2",
    body="Ayanmo Corazza +2",
    hands="Jhakri Cuffs +2",
    legs="Jhakri Slops +2",
    feet="Thereoid Greaves",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    right_ear="Sherida Earring",
    left_ring="Hetairoi Ring",
    right_ring="Ilabrat Ring",
    back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10',}},
}

		

	sets.WS.Req = {
	ammo="Regal Gem",
    head="Aya. Zucchetto +2",
    body="Ayanmo Corazza +2",
    hands="Jhakri Cuffs +2",
    legs="Aya. Cosciales +2",
    feet={ name="Carmine Greaves", augments={'Accuracy+10','DEX+10','MND+15',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    right_ear="Telos Earring",
    left_ring="Rufescent Ring",
    right_ring="Ayanmo Ring",
    back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10',}},
}

		

		

end



function precast(spell)

		if spell.action_type == 'Magic' then

                equip(sets.precast.FC.Standard)

         end       
	   if spell.english == 'Regen' or spell.english == 'Regen II' or spell.english == 'Regen III' or spell.english == 'Regen IV' or spell.english == 'Regen V' then	

			equip(sets.precast.FC.Regen)

		end

		if spell.english == 'Chainspell' then

			equip(sets.JA.CS)

		end

		if spell.english =='Stun' then

			equip(sets.magic.Stun)

		end

		

		

		if spell.english == 'Chant du Cygne' then

                equip(sets.WS.CDC)

        end		

		if spell.english == 'Savage Blade' then

			equip(sets.WS.Savage)

		end

		if spell.english == 'Vorpal Blade' then

			equip(sets.WS.Vorpal)

		end

		if spell.english == 'Requiescat' or spell.english == 'Death Blossom' then

			equip(sets.WS.Req)

		end

		if spell.english == 'Sanguine Blade' then

			equip(sets.Magic.Dark)

		end

		if spell.english == 'Composure' then

			equip(sets.JA.Composure)

		end

		

end



function midcast(spell,act)


	if spell.action_type == 'Magic' then
		if spell.skill == 'Enhancing Magic' then

			if Enhancing_Spells:contains(spell.name) then
			equip(sets.Enhancing.Duration)
			send_command('@input /echo Enhancing Duration Set')	
			elseif Enhancing_Potency:contains(spell.name) then
			equip(sets.Enhancing.Potency)
			send_command('@input /echo Enhancing Potency Set')
			if buffactive['Composure'] and spell.target.type == 'PLAYER' then

            	equip(set_combine(sets.Enhancing.Duration,sets.JA.Composure))

			end
			end
			

        

		end

		if spell.english == 'Stun' then

			equip(sets.magic.Stun)

		end

		if spell.skill == 'Healing Magic' then

			equip(sets.Magic.Healing)

		end

		

		if spell.skill == 'Dark Magic' then

			equip(sets.Magic.Dark)
			if spell.english == 'Drain' or spell.english == 'Aspir' then
				equip(sets.Utility.DrainAspir)
			end
		end		

		

		if spell.skill =='Enfeebling Magic' then

			if Enfeebling_Acc:contains(spell.name) then
			equip(sets.Enfeebling.Acc)	
			send_command('@input /echo Enfeeb Macc Set')
			elseif Enfeebling_Pot:contains(spell.name) then
			equip(sets.Enfeebling.Pot)	
			send_command('@input /echo Enfeeb Pot Set')
			elseif Enfeebling_Effect:contains(spell.name) then
			equip(sets.Enfeebling.Pot)	
			send_command('@input /echo Enfeeb Pot Set')
			if buffactive['Saboteur'] then	

				equip(set_combine(sets.Enfeebling.Pot,sets.JA.Sab))

			end
		end
		end

	

		

		if spell.skill =='Elemental Magic' then

			equip(sets.Nuke[sets.Nuke.index[Nuke_ind]])			

		                if spell.element == world.day_element or spell.element == world.weather_element then

                              equip(set_combine(sets.Nuke[sets.Nuke.index[Nuke_ind]],sets.Utility.Weather))

				       end

		end

		

		if spell.english == 'Regen' or spell.english == 'Regen II' or spell.english == 'Regen III' or spell.english == 'Regen IV' or spell.english == 'Regen V' then	

				equip(set_combine(sets.Enhancing.Duration,sets.Magic.Regen))

		end

		

		if spell.english == 'Refresh' or spell.english == 'Refresh II' or spell.english == 'Refresh III' then

				equip(set_combine(sets.Enhancing.Duration,sets.Magic.Refresh))

		end
		
		if spell.english == 'Stoneskin' then

				equip(set_combine(sets.Enhancing.Duration,sets.Magic.Stoneskin))

		end
		
		if spell.english == 'Aquaveil' then

				equip(set_combine(sets.Enhancing.Duration,sets.Magic.Aquaveil))

		end

		if spell.english == 'Drain' or spell.english =='Drain II' or spell.english=='Aspir II' or spell.english =='Aspir' then

			equip(sets.Utility.DrainAspir)

		end
	end
end



function aftercast(spell)

        if player.status == 'Engaged' then

                equip(sets.TP[sets.TP.index[TP_ind]])

				if buffactive['Doom'] then

					equip(set_combine(sets.TP[sets.TP.index[TP_ind]],sets.Utility.Doomed))

					status_change(player.status)

				end

				if buffactive['Terror']	then 

					equip(sets.TP.DT)

					status_change(player.status)

				end

		else

                equip(sets.Idle[sets.Idle.index[Idle_ind]])					

				if buffactive['Doom'] then

					equip(set_combine(sets.Idle[sets.Idle.index[Idle_ind]],sets.Utility.Doomed))

					status_change(player.status)

				end

				if buffactive['Terror']	then 

					equip(sets.TP.DT)

					status_change(player.status)

				end

        end

end

 

function status_change(new,old)

        if player.status == 'Engaged' then

                equip(sets.TP[sets.TP.index[TP_ind]])

				if buffactive['doom'] then

					equip(sets.Utility.Doom)

				end

        else

                equip(sets.Idle[sets.Idle.index[Idle_ind]])					

				if buffactive['doom'] then

					equip(sets.Utility.Doom)

				end

        end

end

 

function self_command(command)

        if command == 'toggle Nuke set' then

                Nuke_ind = Nuke_ind +1

                if Nuke_ind > #sets.Nuke.index then Nuke_ind = 1 end

                send_command('@input /echo <----- Nuke Set changed to '..sets.Nuke.index[Nuke_ind]..' ----->')

                equip(sets.Nuke[sets.Nuke.index[Nuke_ind]])

        elseif command == 'toggle Idle set' then

                Idle_ind = Idle_ind +1

                if Idle_ind > #sets.Idle.index then Idle_ind = 1 end

                send_command('@input /echo <----- Idle Set changed to '..sets.Idle.index[Idle_ind]..' ----->')

                equip(sets.Idle[sets.Idle.index[Idle_ind]])

		elseif command == 'toggle TP set' then

				TP_ind = TP_ind +1

				if TP_ind > #sets.TP.index then TP_ind =1 end

				send_command('@input /echo <----- TP Set changed to '..sets.TP.index[TP_ind]..' ---->')

				equip(sets.TP[sets.TP.index[TP_ind]])

		elseif command == 'toggle Enfeebling Set' then

				Enfeebling_ind = Enfeebling_ind +1		

				if Enfeebling_ind> #sets.Enfeebling.index then Enfeebling_ind =1 end

				send_command('@input /echo <----- Enfeebling Set changed to '..sets.Enfeebling.index[Enfeebling_ind]..' ---->')

				equip(sets.Enfeebling[sets.Enfeebling.index[Enfeebling_ind]])
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

