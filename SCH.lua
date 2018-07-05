Helix_Spells = S{"Luminohelix II","Cryohelix II","Noctohelix II","Pyrohelix II","Ionohelix II","Anemohelix II","Geohelix II","Hydrohelix II",
"Luminohelix","Cryohelix","Noctohelix","Pyrohelix","Ionohelix","Anemohelix","Geohelix","Hydrohelix",}
function get_sets()

        
		
MBB_Mode = 0

--Set macro book/set –
send_command('input /macro book 19;wait .1;input /macro set 1') --set macro book/set here –
--Area mapping –	
Town = S{"Ru'Lude Gardens","Upper Jeuno","Lower Jeuno","Port Jeuno","Port Windurst","Windurst Waters","Windurst Woods","Windurst Walls","Heavens Tower",
"Port San d'Oria","Northern San d'Oria","Southern San d'Oria","Port Bastok","Bastok Markets","Bastok Mines","Metalworks","Aht Urhgan Whitegate",
"Tavnazian Safehold","Nashmau","Selbina","Mhaura","Norg","Eastern Adoulin","Western Adoulin","Kazham","Heavens Tower"}



 




-- Precast ––

sets.precast = {}

sets.precast.FC = {
    main={ name="Akademos", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}},
    sub="Enki Strap",
    ammo="Sapience Orb",
    head={ name="Merlinic Hood", augments={'"Mag.Atk.Bns."+18','"Fast Cast"+6',}},
    body="Zendik Robe",
    hands={ name="Merlinic Dastanas", augments={'Attack+20','"Fast Cast"+6','MND+3','"Mag.Atk.Bns."+11',}},
    legs="Pinga Pants",
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+5','"Fast Cast"+6','DEX+5','"Mag.Atk.Bns."+8',}},
    neck="Orunmila's Torque",
    waist="Channeler's Stone",
    left_ear="Enchntr. Earring +1",
    right_ear="Etiolation Earring",
    left_ring="Rahab Ring",
    right_ring="Kishar Ring",
    back={ name="Lugh's Cape", augments={'"Fast Cast"+10',}},
}

sets.precast.ElemFC = {
    main={ name="Akademos", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}},
    sub="Enki Strap",
    ammo="Sapience Orb",
    head={ name="Merlinic Hood", augments={'"Mag.Atk.Bns."+18','"Fast Cast"+6',}},
    body="Zendik Robe",
    hands={ name="Merlinic Dastanas", augments={'Attack+20','"Fast Cast"+6','MND+3','"Mag.Atk.Bns."+11',}},
    legs="Pinga Pants",
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+5','"Fast Cast"+6','DEX+5','"Mag.Atk.Bns."+8',}},
    neck="Orunmila's Torque",
    waist="Channeler's Stone",
    left_ear="Enchntr. Earring +1",
    right_ear="Barkarole Earring",
    left_ring="Rahab Ring",
    right_ring="Kishar Ring",
    back={ name="Lugh's Cape", augments={'"Fast Cast"+10',}},
}

sets.precast.Stoneskin = {
    main={ name="Akademos", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}},
    sub="Enki Strap",
    ammo="Sapience Orb",
    head="Umuthi Hat",
    body="Zendik Robe",
    hands={ name="Merlinic Dastanas", augments={'Attack+20','"Fast Cast"+6','MND+3','"Mag.Atk.Bns."+11',}},
    legs="Pinga Pants",
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+5','"Fast Cast"+6','DEX+5','"Mag.Atk.Bns."+8',}},
    neck="Orunmila's Torque",
    waist="Siegel Sash",
    left_ear="Enchntr. Earring +1",
    right_ear="Etiolation Earring",
    left_ring="Rahab Ring",
    right_ring="Kishar Ring",
    back={ name="Lugh's Cape", augments={'"Fast Cast"+10',}},
}

---- Job Abilities ----
sets.JA = {}
sets.JA['Tabula Rasa'] = {legs="Pedagogy Pants"}

sets.JA = {}
sets.JA['Enlightenment'] = {body="Pedagogy Gown +1"}



sets.JA = {}
sets.JA['Sublimation'] = {
    main={ name="Akademos", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}},
    sub="Niobid Strap",
    ammo="Pemphredo Tathlum",
    head="Befouled Crown",
    body={ name="Amalric Doublet +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    legs="Assid. Pants +1",
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','Magic burst dmg.+8%','CHR+6','Mag. Acc.+2',}},
    neck="Sanctity Necklace",
    waist="Eschan Stone",
    left_ear="Gifted Earring",
    right_ear="Barkaro. Earring",
    left_ring="Etana Ring",
    right_ring="Lebeche Ring",
    back="Aenoth. Mantle +1",
}

sets.JA['Ebullience'] = {head="Arbatel Bonnet +1"}

sets.JA = {}
sets.JA['Rapture'] = {head="Arbatel Bonnet +1"}

sets.JA = {}
sets.JA['Perpetuance'] = {hands="Arbatel Bracers +1"}

sets.JA = {}
sets.JA['Immanence'] = {hands="Arbatel Bracers +1"}


sets.JA = {}
sets.JA['Celerity'] = {feet="Pedagogy Loafers +1"}

sets.JA = {}
sets.JA['Alacrity'] = {feet="Pedagogy Loafers +1"}

sets.JA = {}
sets.JA['Focalization'] = {head="Pedagogy Mortarboard"}

--WS sets –-
sets.WS = {}

sets.WS.Myrkr = {
    main={ name="Akademos", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}},
    sub="Enki Strap",
    ammo="Pemphredo Tathlum",
    head={ name="Amalric Coif +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    body="Ros. Jaseran +1",
    hands={ name="Amalric Gages", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
    legs={ name="Amalric Slops", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
    feet={ name="Psycloth Boots", augments={'MP+50','INT+7','"Conserve MP"+6',}},
    neck="Sanctity Necklace",
    waist="Shinjutsu-no-Obi",
    left_ear="Gifted Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    left_ring="Mephitas's Ring",
    right_ring="Mephitas's Ring +1",
    back="Aurist's Cape",
}



-- Midcast ––
sets.midcast = {}	
-- Healing Magic –
sets.midcast.Cure = {
    main={ name="Akademos", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}},
    sub="Enki Strap",
    ammo="Pemphredo Tathlum",
    head={ name="Vanya Hood", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
    body={ name="Kaykaus Bliaut", augments={'MP+60','"Cure" spellcasting time -5%','Enmity-5',}},
    hands={ name="Telchine Gloves", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    legs={ name="Telchine Braconi", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    feet={ name="Kaykaus Boots", augments={'MP+60','"Cure" spellcasting time -5%','Enmity-5',}},
    neck="Incanter's Torque",
    waist="Luminary Sash",
    left_ear="Regal Earring",
    right_ear="Mendi. Earring",
    left_ring="Stikini Ring +1",
    right_ring="Lebeche Ring",
    back="Solemnity Cape",
}

sets.midcast.SelfCure = set_combine(sets.midcast.Cure, {waist="Gishdubar Sash", neck="Phalaina Locket"})


sets.midcast.Regen = {
    main="Bolelabunga",
    sub="Ammurapi Shield",
    ammo="Homiliary",
    head="Arbatel Bonnet +1",
    body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}},
    hands={ name="Telchine Gloves", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    legs={ name="Telchine Braconi", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    feet={ name="Telchine Pigaches", augments={'Spell interruption rate down -10%','Enh. Mag. eff. dur. +10',}},
    neck="Incanter's Torque",
    waist="Gishdubar Sash",
    left_ear="Gifted Earring",
    right_ear="Mendi. Earring",
    left_ring="Etana Ring",
    right_ring="Defending Ring",
    back={ name="Bookworm's Cape", augments={'INT+2','MND+5','Helix eff. dur. +19','"Regen" potency+8',}},
}


-- Enhancing Magic –
sets.midcast.Enhancing = {
    main={ name="Gada", augments={'Enh. Mag. eff. dur. +5','Mag. Acc.+11','DMG:+8',}},
    sub="Ammurapi Shield",
    ammo="Savant's Treatise",
    head={ name="Telchine Cap", augments={'"Cure" potency +6%','Enh. Mag. eff. dur. +9',}},
    body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}},
    hands={ name="Telchine Gloves", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    legs={ name="Telchine Braconi", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    feet={ name="Telchine Pigaches", augments={'Spell interruption rate down -10%','Enh. Mag. eff. dur. +10',}},
	neck="Incanter's Torque",
    waist="Olympus Sash",
    left_ear="Gifted Earring",
    right_ear="Andoaa Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring",
    back="Fi Follet Cape",
}



sets.midcast.Refresh = {
    main={ name="Gada", augments={'Enh. Mag. eff. dur. +5','Mag. Acc.+11','DMG:+8',}},
    sub="Ammurapi Shield",
    ammo="Savant's Treatise",
    head={ name="Amalric Coif +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}},
    hands={ name="Telchine Gloves", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    legs={ name="Telchine Braconi", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    feet={ name="Telchine Pigaches", augments={'Spell interruption rate down -10%','Enh. Mag. eff. dur. +10',}},
	neck="Incanter's Torque",
    waist="Gishdubar Sash",
    left_ear="Gifted Earring",
    right_ear="Digni. Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring",
    back="Grapevine Cape",
}

sets.midcast.Storms = {
    main={ name="Gada", augments={'Enh. Mag. eff. dur. +5','Mag. Acc.+11','DMG:+8',}},
    sub="Ammurapi Shield",
    ammo="Savant's Treatise",
    head={ name="Telchine Cap", augments={'"Cure" potency +6%','Enh. Mag. eff. dur. +9',}},
    body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}},
    hands={ name="Telchine Gloves", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    legs={ name="Telchine Braconi", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    feet={ name="Telchine Pigaches", augments={'Spell interruption rate down -10%','Enh. Mag. eff. dur. +10',}},
	neck="Incanter's Torque",
    waist="Olympus Sash",
    left_ear="Gifted Earring",
    right_ear="Andoaa Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring",
    back="Fi Follet Cape",
}
 

sets.midcast.Stoneskin = {
    main={ name="Akademos", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}},
    sub="Enki Strap",
    ammo="Savant's Treatise",
    head="Befouled Crown",
    body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}},
	hands={ name="Telchine Gloves", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    legs="Haven Hose",
    feet="Regal Pumps",
    neck="Nodens Gorget",
    waist="Siegel Sash",
    left_ear="Friomisi Earring",
    right_ear="Andoaa Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring",
    back="Fi Follet Cape",
}

sets.midcast.Aquaveil = {
    main={ name="Akademos", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}},
    sub="Enki Strap",
    ammo="Savant's Treatise",
    head={ name="Amalric Coif +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}},
	hands={ name="Telchine Gloves", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    llegs={ name="Telchine Braconi", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    feet="Regal Pumps",
    neck="Incanter's Torque",
    waist="Olympus Sash",
    left_ear="Friomisi Earring",
    right_ear="Andoaa Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring",
    back="Fi Follet Cape",
}

	
-- Enfeebling Magic –
sets.midcast.Enfeebling = {
    main={ name="Gada", augments={'Enh. Mag. eff. dur. +5','Mag. Acc.+11','DMG:+8',}},
    sub="Ammurapi Shield",
    ammo="Pemphredo Tathlum",
    head={ name="Merlinic Hood", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','"Fast Cast"+4','Mag. Acc.+13','"Mag.Atk.Bns."+13',}},
    body="Acad. Gown +2",
    hands={ name="Kaykaus Cuffs", augments={'MP+60','MND+10','Mag. Acc.+15',}},
    legs={ name="Chironic Hose", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','"Resist Silence"+6','INT+2','Mag. Acc.+2','"Mag.Atk.Bns."+9',}},
    feet="Acad. Loafers +3",
    neck="Erra Pendant",
    waist="Rumination Sash",
    left_ear="Regal Earring",
    right_ear="Digni. Earring",
    left_ring="Stikini Ring +1",
    right_ring="Kishar Ring",
    back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
	}
	
	sets.midcast.Sleep = {
	main={ name="Gada", augments={'Enh. Mag. eff. dur. +5','Mag. Acc.+11','DMG:+8',}},
    sub="Ammurapi Shield",
	ammo="Pemphredo Tathlum",
    head={ name="Merlinic Hood", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','"Fast Cast"+4','Mag. Acc.+13','"Mag.Atk.Bns."+13',}},
    body="Acad. Gown +2",
    hands={ name="Kaykaus Cuffs", augments={'MP+60','MND+10','Mag. Acc.+15',}},
    legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
    feet="Acad. Loafers +3",
    neck="Erra Pendant",
    waist="Rumination Sash",
    left_ear="Regal Earring",
    right_ear="Digni. Earring",
    left_ring="Evanescence Ring",
    right_ring="Kishar Ring",
    back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
	}

-- Dark Magic –	
sets.midcast.Stun = {
    main={ name="Akademos", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}},
    sub="Enki Strap",
    ammo="Pemphredo Tathlum",
    head={ name="Merlinic Hood", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','"Fast Cast"+4','Mag. Acc.+13','"Mag.Atk.Bns."+13',}},
    body="Shango Robe",
    hands={ name="Merlinic Dastanas", augments={'Attack+20','"Fast Cast"+6','MND+3','"Mag.Atk.Bns."+11',}},
    legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+5','"Fast Cast"+6','DEX+5','"Mag.Atk.Bns."+8',}},
    neck="Voltsurge Torque",
    waist="Luminary Sash",
	left_ear="Enchntr. Earring +1",
    right_ear="Etiolation Earring",
    left_ring="Rahab Ring",
    right_ring="Kishar Ring",
    back={ name="Lugh's Cape", augments={'"Fast Cast"+10',}},
}


-- Drain Aspir Sets –	
sets.midcast.aspir = {
    main={ name="Akademos", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}},
    sub="Enki Strap",
    ammo="Pemphredo Tathlum",
    head={ name="Merlinic Hood", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','"Drain" and "Aspir" potency +10','Mag. Acc.+11','"Mag.Atk.Bns."+9',}},
    body={ name="Merlinic Jubbah", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','"Drain" and "Aspir" potency +10','Mag. Acc.+2','"Mag.Atk.Bns."+6',}},
	hands={ name="Merlinic Dastanas", augments={'Mag. Acc.+16','"Drain" and "Aspir" potency +7','MND+7','"Mag.Atk.Bns."+10',}},
    legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+20','"Drain" and "Aspir" potency +8',}},
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','"Drain" and "Aspir" potency +7','"Mag.Atk.Bns."+4',}},
    neck="Erra Pendant",
    waist="Fucho-no-Obi",
    left_ear="Regal Earring",
    right_ear="Digni. Earring",
    left_ring="Evanescence Ring",
    right_ring="Archon Ring",
    back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}

sets.midcast.klimaform = {
    main={ name="Akademos", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}},
    sub="Enki Strap",
    ammo="Pemphredo Tathlum",
    head={ name="Merlinic Hood", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','"Drain" and "Aspir" potency +10','Mag. Acc.+11','"Mag.Atk.Bns."+9',}},
    body={ name="Merlinic Jubbah", augments={'Mag. Acc.+16 "Mag.Atk.Bns."+16','Magic burst dmg.+11%','STR+1','Mag. Acc.+7','"Mag.Atk.Bns."+8',}},
	hands={ name="Merlinic Dastanas", augments={'Mag. Acc.+16','"Drain" and "Aspir" potency +7','MND+7','"Mag.Atk.Bns."+10',}},
    legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+20','"Drain" and "Aspir" potency +8',}},
    feet="Arbatel Loafers +1", 
    neck="Incanter's Torque",
    waist="Fucho-no-Obi",
    left_ear="Regal Earring",
    right_ear="Digni. Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring",
    back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}

-- Elemental Magic –
sets.midcast.Elemental = {
    main={ name="Akademos", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}},
    sub="Enki Strap",
    ammo="Pemphredo Tathlum",
    head={ name="Merlinic Hood", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','"Fast Cast"+4','Mag. Acc.+13','"Mag.Atk.Bns."+13',}},
    body={ name="Amalric Doublet +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}}, 
    hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    legs={ name="Amalric Slops +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    feet={ name="Amalric Nails +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    neck="Sanctity Necklace",
    waist="Refoccilation Stone",
    left_ear="Regal Earring",
    right_ear="Barkaro. Earring",
    left_ring="Shiva Ring +1",
    right_ring="Shiva Ring +1",
    back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}
sets.midcast.Elemental.Weather = set_combine({sets.midcast.Elemental, waist="Hachirin-no-obi", feet="Arbatel Loafers +1"}) 


sets.midcast.MABB = {
    main={ name="Akademos", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}},
    sub="Enki Strap",
    ammo="Pemphredo Tathlum",
    head={ name="Merlinic Hood", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','"Fast Cast"+4','Mag. Acc.+13','"Mag.Atk.Bns."+13',}},
    body={ name="Merlinic Jubbah", augments={'Mag. Acc.+16 "Mag.Atk.Bns."+16','Magic burst dmg.+11%','STR+1','Mag. Acc.+7','"Mag.Atk.Bns."+8',}},
    hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','Magic burst dmg.+8%','MND+1','Mag. Acc.+15','"Mag.Atk.Bns."+11',}},
    eet={ name="Merlinic Crackows", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','Magic burst dmg.+8%','CHR+6','Mag. Acc.+2',}},
    neck="Mizu. Kubikazari",
    waist="Hachirin-no-Obi",
    left_ear="Regal Earring",
    right_ear="Barkaro. Earring",
    left_ring="Shiva Ring +1",
    right_ring="Mujin Band",
    back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}
sets.midcast.MABB.Weather = set_combine({sets.midcast.MABB, head={ name="Merlinic Hood", augments={'Mag. Acc.+20','Magic burst dmg.+9%','INT+2','"Mag.Atk.Bns."+12',}}, waist="Hachirin-no-obi", feet="Arbatel Loafers +1"}) 


--Helix ––-
sets.midcast.Helix = {
    main={ name="Akademos", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}},
    sub="Enki Strap",
    ammo="Ghastly Tathlum +1",
    head={ name="Merlinic Hood", augments={'Mag. Acc.+20','Magic burst dmg.+9%','INT+2','"Mag.Atk.Bns."+12',}},
    body={ name="Merlinic Jubbah", augments={'Mag. Acc.+16 "Mag.Atk.Bns."+16','Magic burst dmg.+11%','STR+1','Mag. Acc.+7','"Mag.Atk.Bns."+8',}},
    hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','Magic burst dmg.+8%','MND+1','Mag. Acc.+15','"Mag.Atk.Bns."+11',}},
    feet="Arbatel Loafers +1", 
    neck="Mizu. Kubikazari",
    waist="Refoccilation Stone",
    left_ear="Regal Earring",
    right_ear="Barkaro. Earring",
    left_ring="Mallquis Ring",
    right_ring="Mujin Band",
	back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}
   
sets.midcast.Helix.Weather = set_combine({sets.midcast.Helix, feet="Arbatel Loafers +1"})




-- Aftercast ––
sets.aftercast = {}
sets.aftercast.Standard = {
    main={ name="Akademos", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}},
    sub="Enki Strap",
    ammo="Homiliary",
    head="Befouled Crown",
    body="Zendik Robe",
    hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    legs="Assid. Pants +1",
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+21 "Mag.Atk.Bns."+21','Mag. crit. hit dmg. +6%','Mag. Acc.+12','"Mag.Atk.Bns."+9',}},
    neck="Loricate Torque +1",
    waist="Fucho-no-Obi",
    left_ear="Etiolation Earring",
    right_ear="Barkaro. Earring",
    left_ring="Stikini Ring +1",
    right_ring="Defending Ring",
    back="Moonbeam Cape",
}

sets.aftercast.Town = {
    main={ name="Akademos", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}},
    sub="Enki Strap",
    ammo="Homiliary",
    head="Befouled Crown",
    body="Zendik Robe",
    hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    legs="Assid. Pants +1",
    feet="Herald's Gaiters",
    neck="Sanctity Necklace",
    waist="Fucho-no-Obi",
    left_ear="Etiolation Earring",
    right_ear="Barkaro. Earring",
    left_ring="Stikini Ring +1",
    right_ring="Defending Ring",
    back="Moonbeam Cape",
}


-- .::Precast Functions::. ––>
function precast(spell)	
if spell.action_type == 'Magic' then
if spell.skill == 'Elemental Magic' then	
equip(sets.precast.ElemFC)	
elseif spell.english == "Stoneskin" then
equip(sets.precast.Stoneskin)
else
equip(sets.precast.FC)
end
--Job Abilities –	
elseif spell.type == 'JobAbility' then
equip(sets.JA[spell.english])	
--Weapon skills –
elseif spell.type == 'WeaponSkill' then
equip(sets.WS[spell.english])
end	
end


-- .::Midcast Functions::. ––>
function midcast(spell)
if spell.action_type == 'Magic' then
-- Healing Magic –	
if spell.skill == 'Healing Magic' then
if string.find(spell.english,'Cure') then
if spell.target.type=="SELF" then
            equip(sets.midcast.SelfCure)
            send_command('@input /echo Self Cure Set')
        else
            equip(sets.midcast.Cure)
            send_command('@input /echo ST Cure Set')
      
        end
    end
elseif string.find(spell.english,'Cura') then
equip(sets.midcast.Cure)	
end

-- Enfeebling Magic –
if spell.skill == 'Enfeebling Magic' then
equip(sets.midcast.Enfeebling)	
elseif spell.english == 'Sleep' then
equip(sets.midcast.Sleep)
send_command('@input /echo Sleep Set')
end

-- Dark Magic –	
if spell.skill == 'Dark Magic' then
if spell.english == 'Stun' then
equip(sets.midcast['Stun'])
elseif spell.english == 'Klimaform' then
equip(sets.midcast.klimaform)
send_command('@input /echo Klimaform Set')
else
equip(sets.midcast.aspir)
send_command('@input /echo Aspir Set')
weathercheck(spell.element)
end
end

-- Elemental Magic –	
if spell.skill == 'Elemental Magic' then	
if Helix_Spells:contains(spell.name) then
equip(sets.midcast.Helix)
weathercheck(spell.element)
elseif MBB_Mode == 1 then
equip(sets.midcast.MABB)
send_command('@input /echo Burst Set')
weathercheck(spell.element)	
elseif MBB_Mode == 0 then
equip(sets.midcast.Elemental)	
send_command('@input /echo Free Nuke Set')
weathercheck(spell.element)
end	
end
-- Enhancing Magic –
if spell.skill == 'Enhancing Magic' then
if buffactive['Perpetuance'] then
equip(sets.midcast.Enhancing, {hands="Arbatel Bracers +1"})	
elseif spell.english == 'Stoneskin' then
equip(sets.midcast.Stoneskin)
if buffactive["Stoneskin"] then
    windower.send_command('wait 1;cancel 37;')
	end
elseif spell.english == 'Aquaveil' then
equip(sets.midcast.Aquaveil)
elseif spell.english == 'Refresh' then
equip(sets.midcast.Refresh)
elseif string.find(spell.english, 'storm') then
equip(sets.midcast.Storms)
elseif spell.english == 'Phalanx' then
equip(sets.midcast.Enhancing)
elseif spell.english == 'Haste' then
equip(sets.midcast.Enhancing)
elseif spell.english == 'Flurry' then
equip(sets.midcast.Enhancing)
elseif spell.english == 'Embrava' then
equip(sets.midcast.Enhancing)
elseif string.find(spell.english, 'Regen') then
equip(sets.midcast.Regen)
elseif string.find(spell.english, 'Bar') then
equip(sets.midcast.Enhancing)
elseif string.find(spell.english, 'Protect') then
equip(sets.midcast.Enhancing)	
elseif string.find(spell.english, 'Shell') then
equip(sets.midcast.Enhancing)	
end	
end
end
end


---- .::Aftercast Sets::. ---->
function aftercast(spell,action)
    equip(sets.aftercast.Idle)
-- Town Rules --		
	if Town:contains(world.zone) then
        equip(sets.aftercast.Town)	
	    status_change(player.status)		
    end		
	status_change(player.status)	
end	
--- .:: Status Changes ::.. --->
function status_change(new,tab,old)
-- Idle rules --
    if new == 'Idle' then
	    equip(sets.aftercast.Standard)	
-- Town rules --
	    if Town:contains(world.zone) then
            equip(sets.aftercast.Town)	
        end	
	end
end	

--Self Commands – ie. Defender 





function weathercheck(spell_element)
if spell_element == world.weather_element or spell_element == world.day_element then
equip({waist="Hachirin-no-Obi"}, {feet="Arbatel Loafers +1"})
send_command('@input /echo Using Element Obi')
else	
end
end


function self_command(command)
if command == 'change MBB mode' then
if MBB_Mode == 1 then
MBB_Mode = 0
send_command('@input /echo MBB Mode off')	
else
MBB_Mode = 1
send_command('@input /echo MBB Mode on')	
end
end
end
end