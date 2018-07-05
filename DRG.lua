-- Get Sets: Everything in this section is run as soon as you change jobs.
function get_sets()
	sets = {}
	petcast = false
	
	BrigDEXSTP = { name="Brigantia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10',}}
	BrigSTRDA = { name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}}
	
	-- Regular Sets --
	sets.Idle = {
	ammo="Staunch Tathlum",
    head={ name="Valorous Mask", augments={'Accuracy+21 Attack+21','Weapon skill damage +3%','INT+1','Accuracy+9','Attack+10',}},
    body="Arke Corazza",
    hands="Sulev. Gauntlets +2",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet={ name="Amm Greaves", augments={'HP+50','VIT+10','Accuracy+15','Damage taken-2%',}},
    neck="Loricate Torque +1",
    waist="Flume Belt +1",
    left_ear="Etiolation Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Defending Ring",
    right_ring="Moonbeam Ring",
    back="Moonbeam Cape",
}
	
	sets.TP = {}
	sets.TP.index = {'Standard', 'Accuracy', 'Physical DT', 'Magic DT'}
	--1=Standard, 2=TPAcc, 3=PDT, 4=MDT--
	TP_ind = 1 -- Standard set is the Default

	sets.TP['Standard'] = {
	ammo="Ginsen",
    head="Flam. Zucchetto +2",
    body={ name="Valorous Mail", augments={'Accuracy+20','"Dbl.Atk."+3','STR+11','Attack+12',}},
    hands="Sulev. Gauntlets +2",
    legs={ name="Valor. Hose", augments={'Accuracy+14 Attack+14','"Dbl.Atk."+3','DEX+5','Accuracy+12',}},
    feet="Flam. Gambieras +2",
    neck="Shulmanu Collar",
    waist="Ioskeha Belt +1",
    left_ear="Brutal Earring",
    right_ear="Sherida Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Flamma Ring",
    back={ name="Brigantia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10',}},
}
	sets.TP['Accuracy'] = {		
	ammo="Amar Cluster",
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
    body={ name="Valorous Mail", augments={'Accuracy+20','"Dbl.Atk."+3','STR+11','Attack+12',}},
    hands="Sulev. Gauntlets +2",
    legs="Carmine Cuisses +1",
    feet="Flam. Gambieras +2",
    neck="Shulmanu Collar",
    waist="Olseni Belt",
    left_ear="Mache Earring",
    right_ear="Telos Earring",
    left_ring="Cacoethic Ring +1",
    right_ring="Flamma Ring",
    back={ name="Brigantia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10',}},
}                                                    
	sets.TP['Physical DT'] = {
	ammo="Ginsen",
    head="Sulevia's Mask +2",
    body="Arke Corazza",
    hands="Sulev. Gauntlets +2",
    legs="Sulev. Cuisses +2",
    feet={ name="Amm Greaves", augments={'HP+50','VIT+10','Accuracy+15','Damage taken-2%',}},
    neck="Loricate Torque +1",
    waist="Ioskeha Belt +1",
    left_ear="Cessance Earring",
    right_ear="Sherida Earring",
    left_ring="Defending Ring",
    right_ring="Moonbeam Ring",
    back="Moonbeam Cape",
}                             
	sets.TP['Magic DT'] = {
ammo="Ginsen",
    head="Sulevia's Mask +2",
    body="Arke Corazza",
    hands="Sulev. Gauntlets +2",
    legs="Sulev. Cuisses +2",
    feet={ name="Amm Greaves", augments={'HP+50','VIT+10','Accuracy+15','Damage taken-2%',}},
    neck="Loricate Torque +1",
    waist="Ioskeha Belt +1",
    left_ear="Etiolation Earring",
    right_ear="Sherida Earring",
    left_ring="Defending Ring",
    right_ring="Moonbeam Ring",
    back="Moonbeam Cape",
}

							  
	sets.WS = {}						  
	-- Can add a set for each WS by making a new set: sets.WS["Raiden Thrust"] or sets.WS["Geirskogul"] for example
	sets.WS["Default"] = {
	ammo="Amar Cluster",
    head="Sulevia's Mask +2",
    body={ name="Valorous Mail", augments={'Accuracy+20','"Dbl.Atk."+3','STR+11','Attack+12',}},
    hands={ name="Valorous Mitts", augments={'Attack+24','Weapon skill damage +2%','STR+10','Accuracy+13',}},
    legs="Vishap Brais +3",
    feet="Sulev. Leggings +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    right_ear="Ishvara Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Regal Ring",
    back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
}	
	sets.WS["Drakesbane"] = {
	ammo="Knobkierrie",
	head={ name="Valorous Mask", augments={'Accuracy+21 Attack+21','Weapon skill damage +3%','INT+1','Accuracy+9','Attack+10',}},
    body="Sulevia's Plate. +2",
    hands="Flam. Manopolas +2",
    legs="Pelt. Cuissots +1",
    feet="Thereoid Greaves",
    neck="Caro Necklace",
    waist="Prosilio Belt +1",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    right_ear="Ishvara Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Begrudging Ring",
    back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
}
	sets.WS["Stardiver"] = {
	ammo="Knobkierrie",
    head="Flam. Zucchetto +2",
    body="Sulevia's Plate. +2",
    hands="Sulev. Gauntlets +2",
    feet="Sulevia's Leggings +2",
    feet="Flam. Gambieras +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    right_ear="Sherida Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Regal Ring",
    back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},
}
	
	sets.WS["Camlann's Torment"] = {
	ammo="Knobkierrie",
    head={ name="Valorous Mask", augments={'Accuracy+21 Attack+21','Weapon skill damage +3%','INT+1','Accuracy+9','Attack+10',}},
    body="Sulevia's Plate. +2",
    hands={ name="Valorous Mitts", augments={'Attack+24','Weapon skill damage +2%','STR+10','Accuracy+13',}},
    legs="Vishap Brais +3",
    feet="Sulev. Leggings +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    right_ear="Ishvara Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Regal Ring",
    back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
}

sets.WS["Leg Sweep"] = {
	ammo="Pemphredo Tathlum",
    head="Flam. Zucchetto +2",
    body="Flamma Korazin +2",
    hands="Flam. Manopolas +2",
    legs="Flamma Dirs +2",
    feet="Flam. Gambieras +2",
    neck="Sanctity Necklace",
    waist="Eschan Stone",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    left_ear="Enchntr. Earring +1",
    left_ring="Niqmaddu Ring",
    right_ring="Regal Ring",
    back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
}

	sets.WS["Sonic Thrust"] = sets.WS["Camlann's Torment"]
	
	sets.WS["Impulse Drive"] = {
	ammo="Knobkierrie",
	head={ name="Valorous Mask", augments={'Accuracy+21 Attack+21','Weapon skill damage +3%','INT+1','Accuracy+9','Attack+10',}},
    body={ name="Valorous Mail", augments={'Accuracy+24 Attack+24','Weapon skill damage +2%','STR+6','Accuracy+10',}},
    hands={ name="Valorous Mitts", augments={'Attack+24','Weapon skill damage +2%','STR+10','Accuracy+13',}},
    legs="Vishap Brais +3",
    feet="Sulev. Leggings +2",
    neck="Caro Necklace",
    waist="Prosilio Belt +1",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    right_ear="Ishvara Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Regal Ring",
    back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
}
	
	
	sets.WS["Accuracy"] = {ammo="Amar Cluster",
					head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},neck="Fotia Gorget",ear1="Telos Earring",ear2="Sherida Earring",
					body="Sulevia's Plate. +1",hands="Emi. Gauntlets +1",ring1="Regal Ring",ring2="Rufescent Ring",
					back=BrigSTRDA,waist="Fotia Belt",legs="Carmine Cuisses +1", feet="Emi. Gambieras +1"}
	sets.WS["Sanguine Blade"] = {ammo="Ghastly Tathlum",
					  head="Jumalik Helm",neck="Fotia Gorget",ear1="Friomisi Earring",ear2="Ishvara Earring",
					  body="Found. Breastplate",hands="Founder's Gauntlets",ring1="Archon Ring",ring2="Shiva Ring +1",
					  back=BrigSTRDA,waist="Fotia Belt",legs="Founder's Hose",feet="Founder's Greaves"} 
			  
    -- Job Ability Sets --
	sets.JA = {}
	sets.JA["Jump"] = {
	ammo="Ginsen",
    head="Flam. Zucchetto +2",
    body="Pelt. Plackart +1",
    hands="Sulev. Gauntlets +2",
    legs={ name="Valor. Hose", augments={'Accuracy+24 Attack+24','INT+10','Accuracy+8',}},
    feet="Flam. Gambieras +2",
    neck="Shulmanu Collar",
    waist="Ioskeha Belt +1",
    left_ear="Cessance Earring",
    right_ear="Sherida Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Petrov Ring",
    back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
}
	sets.JA["Jump Accuracy"] = sets.JA["Jump"]
	
	sets.JA["Spirit Jump"] = {
	ammo="Ginsen",
    head="Flam. Zucchetto +2",
    body="Pelt. Plackart +1",
    hands="Sulev. Gauntlets +2",
    legs="Pelt. Cuissots +1",
    feet="Flam. Gambieras +2",
    neck="Shulmanu Collar",
    waist="Ioskeha Belt +1",
    left_ear="Cessance Earring",
    right_ear="Sherida Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Petrov Ring",
    back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
}
	
	sets.JA["Soul Jump"] = sets.JA["Spirit Jump"]
	
	
	sets.JA["Call Wyvern"] = {body="Wym. Mail +1",}
	
	sets.JA["Angon"] = {ammo="Angon",hands={ name="Wym. Fng. Gnt. +2", augments={'Enhances "Angon" effect',}},} 
	-- Angon, Relic Hands, and that dumb earring in Mamook if you feel like it
	
	sets.JA["Ancient Circle"] = {legs="Vishap Brais +3"} 
	-- Ancient Circle normally: 3 minute duration, Damage+15% DT-15% DragonKiller+15% against Dragons (10% vs. NMs)
	-- Ancient Circle with AF1: 4.5 minute duration, Damage+17% DT-17% DragonKiller+17% against Dragons (11% vs. NMs)
	
	sets.JA["Spirit Link"] = {head="Vishap Armet +1",ear1="Pratik Earring",hands="Pel. Vambraces +1",feet="Ptero. Greaves +1"} 
	-- Spirit Link/Empathy gear go here; note that Relic Feet will cause a 100% Wyvern to still drain HP (unless leveling up
	
	sets.JA["Spirit Surge"] = {neck="Chanoix's Gorget",ear1="Anastasi Earring",ear2="Lancer's Earring",
					body="Ptero. Mail +1",hands="Despair Fin. Gaunt.", 
					back="Updraft Mantle",legs="Vishap Brais +3",feet="Ptero. Greaves +1"} 
	-- Augmented Relic Body affects duration; Wyvern Max HP affects Spirit Surge's Max HP effect on you
	
	sets.JA["Steady Wing"] = {neck="Chanoix's Gorget",ear1="Anastasi Earring",ear2="Lancer's Earring",
					body="Emicho Haubert",hands="Despair Fin. Gaunt.", 
					back="Updraft Mantle",legs="Vishap Brais +3",feet="Ptero. Greaves +1"} 
	-- Wyvern Max HP strongly affects Steady Wing's Stoneskin effect
	
	-- Casting Sets --
	sets.FastCast = {
	ammo="Sapience Orb",
    --head
    body={ name="Taeon Tabard", augments={'"Fast Cast"+5','"Snapshot"+5',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
    legs="Arjuna Breeches",
    feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
    neck="Orunmila's Torque",
    waist="Kentarch Belt +1",
    left_ear="Etiolation Earring",
    right_ear="Enchntr. Earring +1",
    left_ring="Rahab Ring",
    right_ring="Lebeche Ring",
    back={ name="Brigantia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10',}},
}
	-- Can add more FC and Quick Magic here for spells; AF1 Head recommended in case of GearSwap error, at least for faster spells
	
	sets.Midcast = {
	ammo="Ginsen",
    head="Sulevia's Mask +2",
    body="Arke Corazza",
    hands="Sulev. Gauntlets +2",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet={ name="Amm Greaves", augments={'HP+50','VIT+10','Accuracy+15','Damage taken-2%',}},
    neck="Loricate Torque +1",
    waist="Flume Belt +1",
    left_ear="Cessance Earring",
    right_ear="Mache Earring",
    left_ring="Cacoethic Ring +1",
    right_ring="Defending Ring",
    back={ name="Brigantia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10',}},
}
	-- AF1 Head strongly advised for Healing Breath trigger
	-- HP or defensive stuff for Healing Breath; can use Fast Cast or Magic Acc. or whatever if you want too
	
	sets.HealingBreath = {ammo="Staunch Tathlum",
				   head="Ptero. Armet +1",neck="Lancer's Torque",ear1="Anastasi Earring",ear2="Lancer's Earring",
				   body="Emicho Haubert",hands="Despair Fin. Gaunt.",
				   back="Updraft Mantle",waist="Glassblower's Belt",legs="Vishap Brais +3",feet="Ptero. Greaves +1"}
	sets.ElementalBreath = sets.HealingBreath
	Breath = sets.HealingBreath
	-- Healing Breath is modified by Wyvern Max HP and Wyvern: Breath+
	-- Elemental Breaths are modified by Wyvern Current HP, Wyvern: Breath+, and Pet: Magic Accuracy
	-- Remove Status Breaths are presumably affected by nothing
end


-- Precast: JA and WS should be defined here, Fast Cast and such for magic. 
function precast(spell)
	if spell.type == "WeaponSkill" then
		if TP_ind == 2 then -- If using your Accuracy set, use the Accuracy WS set
		equip(sets.WS['Accuracy'])
		elseif sets.WS[spell.name] then -- If you made a set for a WS and then use it,
		equip(sets.WS[spell.name])  -- it'll equip that set for that WS only
		else
		equip(sets.WS["Default"]) -- otherwise, it'll use this set instead
		end
	elseif spell.action_type == 'Magic' then 
		equip(sets.FastCast)
	elseif spell.name == 'Dismiss' and pet.hpp < 100 then		
		cancel_spell() -- Dismiss resets the Call Wyvern recast IF your Wyvern is at 100% HP; largely pointless otherwise
		windower.add_to_chat(50,'  '..pet.name..' is below full HP (<pethpp>), cancelling Dismiss!')
	elseif spell.name == 'Call Wyvern' then
		if pet.isvalid then
			cancel_spell() -- Uses Spirit Link instead when your Wyvern is already present
			send_command('input /ja "Spirit Link" <me>')
		else
			equip(sets.JA["Call Wyvern"]) -- Relic Body goes here; can just use Spirit Surge set if you have it augmented
		end
	elseif spell.name == 'Spirit Link' then
		if pet.isvalid then
			equip(sets.JA["Spirit Link"])
		else
			cancel_spell() -- Uses Call Wyvern instead when your Wyvern isn't present
			send_command('input /ja "Call Wyvern" <me>')
		end
	elseif sets.JA[spell.name] then 
		equip(sets.JA[spell.name])
	end
end            
 
-- Midcast: For magic, this section affects your spell's potency, accuracy, etc. Unnecessary for JA/WS.
function midcast(spell)
	if spell.action_type == 'Magic' then 
        equip(sets.Midcast)
	end
end

-- Pet Change: Occurs when your Pet is summoned or killed.
function pet_change(pet,gain)
	if gain == false and pet.name then
		-- General announcement for when your Wyvern is killed, Dimissed, or eaten by Spirit Surge
		windower.add_to_chat(50,' *** '..string.upper(pet.name)..' IS DEAD YO ***')
	end
end

-- Pet Midcast: If GearSwap sees your pet readying a WS, this occurs
function pet_midcast(spell)
	if string.find(spell.name,' Breath') then
		if string.find(spell.name,'Healing') then 
		Breath = sets.HealingBreath
		else
		Breath = sets.ElementalBreath
		end
		petcast = true
		equip_current()		
		windower.send_command('wait 1.2;gs c petcast')
		-- Wyvern Breath Delay: 1.25s http://forum.square-enix.com/ffxi/threads/47481
		-- Remove Status should still be 1s: http://forum.square-enix.com/ffxi/threads/44090
		-- pet_aftercast won't run if your Wyvern's WS is interrupted (disengaging, stunned, Amnesia, etc.), so I recommend this

	end
end
 
-- Aftercast: Occurs following the use of any WS, JA, Spell, Item, or Ranged Attack
function aftercast(spell)
	equip_current()
end

-- Status Change: When Engaging, Disengaging, Resting, Standing Up, etc.
function status_change()
	equip_current()
end

-- Pet Status Change
function pet_status_change(new,old)
	if new ~= "Engaged" then
	petcast = false
	end
end

-- A custom function that equips a set based on whether you're engaged or not.
function equip_current()
	if player.status == 'Engaged' then
		equip(sets.TP[sets.TP.index[TP_ind]])
	else
		equip(sets.Idle)
	end
	if petcast == true then 
		equip(Breath) -- This will equip your Breath gear on top of whichever other set you're currently wearing.
	end
end
 
-- Manual commands sent in-game with //gs c <command>
function self_command(command)
	if command == 'toggle TP set' then
		TP_ind = TP_ind +1
		if TP_ind > #sets.TP.index then TP_ind = 1 end
		windower.add_to_chat(1,'<----- TP Set changed to '..sets.TP.index[TP_ind]..' ----->')
		equip_current()
	elseif command == 'reverse TP set' then
		TP_ind = TP_ind -1
		if TP_ind == 0 then TP_ind = #sets.TP.index end
		windower.add_to_chat(1,'<----- TP Set changed to '..sets.TP.index[TP_ind]..' ----->')
		equip_current()
	elseif command == 'petcast' and petcast then -- This command reverts to your regular gear 1.2 seconds after a Breath by default
		petcast = false
		equip_current() 
	end
end