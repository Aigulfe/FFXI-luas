--f9 MP more  f10  burst mode



resSpells = S{"Barstonra","Barwatera","Baraera","Barfira","Barblizzara","Barthundra",
"Barstone","Barwater","Baraero","Barfire","Barblizzard","Barthunder"}
Cure_Spells = S{"Cure","Cure II","Cure III","Cure IV","Curaga","Curaga II"}
FC_Spells = S{"Haste","Utsusemi: Ichi","Utsusemi: Ni","Regen","Regen II","Firestorm","Hailstorm","Windstorm","Rainstorm","Sandstorm",
"Thunderstorm","Voidstorm","Aurorastorm","Protect II","Protect III","Shell II","Phalanx"}
AF_Nukes = S{"Stone III","Water III","Aero III","Fire III","Blizzard III","Thunder III",
"Stonega","Stonega II","Stonega III","Waterga","Waterga II","Waterga III","Aeroga","Aeroga II","Aeroga III","Firaga","Firaga II","Firaga III",
"Blizzaga","Blizzaga II","Blizzaga III","Thundaga","Thundaga II","Thundaga III",
"Stoneja","Waterja","Aeroja","Firaja","Blizzaja","Thundaja","Quake II","Flood II","Tornado II","Flare II","Freeze II","Burst II"}
Stone_Spells = S{"Stone","Stone II","Stone III","Stone IV","Stone V","Stone VI","Stonega","Stonega II","Stonega III","Stoneja"}



Gear_Debug = 0
AF_Body_On_ST = 0
MBB_Mode = 0
Death_Mode = 0


--Self Commands – ie. Defender 

function self_command(command)	
if command == 'equip Idle set' then	
if Death_Mode == 0 then
equip(sets.aftercast_Idle)
send_command('@input /echo Idle Set')
else
equip(sets.aftercast_death)
send_command('@input /echo Death Idle Set')
end	
elseif command == 'change debug mode' then
if Gear_Debug == 1 then
Gear_Debug = 0
send_command('@input /echo Debug Mode Set to 0')
else
Gear_Debug = 1
send_command('@input /echo Debug Mode Set to 1')
end
elseif command == 'change MP mode' then
if AF_Body_On_ST == 1 then
AF_Body_On_ST = 0
send_command('@input /echo MP Saving Mode off')
else
AF_Body_On_ST = 1
send_command('@input /echo MP Saving Mode on')
end
elseif command == 'change MBB mode' then
if MBB_Mode == 1 then
MBB_Mode = 0
send_command('@input /echo MBB Mode off')	
else
MBB_Mode = 1
send_command('@input /echo MBB Mode on')	
end
elseif command == 'change Death mode' then
if Death_Mode == 1 then
Death_Mode = 0
send_command('@input /echo Death Mode off')
else
Death_Mode = 1
send_command('@input /echo Death Mode on')
end
end
end

--Aftercast –-

function aftercast(spell)
if Gear_Debug == 0 then
if Death_Mode == 0 then
equip(sets.aftercast_Idle)
send_command('@input /echo Idle Set')
else
equip(sets.aftercast_death)
send_command('@input /echo Death Idle Set')
end	
end
end





--Status Change - ie. Resting

function status_change(new,tab)
if new == 'Idle' then
if Death_Mode == 0 then
equip(sets.aftercast_Idle)
send_command('@input /echo Idle Set')
else
equip(sets.aftercast_death)
send_command('@input /echo Death Idle Set')
end
end
end

--This function is user defined, but never called by GearSwap itself. It's just a user function that's only called from user functions. I wanted to check the weather and equip a weather-based set for some spells, so it made sense to make a function for it instead of replicating the conditional in multiple places.

function weathercheck(spell_element)
if spell_element == world.weather_element or spell_element == world.day_element then
equip({waist="Hachirin-no-Obi"})
send_command('@input /echo Using Element Obi')
else	
end
end

-- Start Functions here
-- Gear Sets
function get_sets()

 
      
		send_command('bind f9 gs c change MP mode')
        send_command('bind f10 gs c change MBB mode')
		send_command('bind f11 gs c change Death mode')
		
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

sets.aftercast_death = {
main={ name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}},
sub="Niobid Strap",
ammo="Ghastly Tathlum",
head="Pixie Hairpin +1",
body={ name="Amalric Doublet +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
feet={ name="Merlinic Crackows", augments={'Mag. Acc.+5','"Fast Cast"+6','DEX+5','"Mag.Atk.Bns."+8',}},
neck="Orunmila's Torque",
waist="Channeler's Stone",
left_ear="Etiolation Earring",
right_ear="Barkarole Earring",
left_ring="Mephitas's Ring +1",
right_ring="Etana Ring",
back={ name="Taranus's Cape", augments={'MP+60','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}},
}

sets.aftercast_Idle_refresh = {
main={ name="Lathi"},
    sub="Niobid Strap",
    ammo="Pemphredo Tathlum",
    head="Befouled Crown",
    body="Jhakri Robe +2",
    hands={ name="Amalric Gages", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
    legs="Assid. Pants +1",
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','Magic burst dmg.+8%','CHR+6','Mag. Acc.+2',}},
    neck="Loricate Torque +1",
    waist="Fucho-no-Obi",
    left_ear="Etiolation Earring",
    right_ear="Barkaro. Earring",
    left_ring="Stikini Ring +1",
    right_ring="Defending Ring",
    back={ name="Taranus's Cape", augments={'MP+60','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}},
}




sets.aftercast_Move = sets.aftercast_Idle_refresh

sets.aftercast_Idle = sets.aftercast_Idle_refresh


sets.precast_Cure = {
    main={ name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}},
    sub="Niobid Strap",
    ammo="Impatiens",
    head={ name="Merlinic Hood", augments={'"Mag.Atk.Bns."+18','"Fast Cast"+6',}},
    body="Zendik Robe",
    hands={ name="Merlinic Dastanas", augments={'Attack+20','"Fast Cast"+6','MND+3','"Mag.Atk.Bns."+11',}},
    legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+5','"Fast Cast"+6','DEX+5','"Mag.Atk.Bns."+8',}},
    neck="Orunmila's Torque",
    waist="Witful Belt",
    left_ear="Enchntr. Earring +1",
    right_ear="Mendi. Earring",
    left_ring="Rahab Ring",
    right_ring="Kishar Ring",
    back={ name="Taranus's Cape", augments={'MP+60','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}}}

sets.precast_FastCast = {
    main={ name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}},
    sub="Niobid Strap",
    ammo="Sapience Orb",
    head={ name="Merlinic Hood", augments={'"Mag.Atk.Bns."+18','"Fast Cast"+6',}},
    body="Zendik Robe",
    hands={ name="Merlinic Dastanas", augments={'Attack+20','"Fast Cast"+6','MND+3','"Mag.Atk.Bns."+11',}},
    legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+5','"Fast Cast"+6','DEX+5','"Mag.Atk.Bns."+8',}},
    neck="Orunmila's Torque",
    waist="Channeler's Stone",
    left_ear="Enchntr. Earring +1",
    right_ear="Barkarole Earring",
    left_ring="Rahab Ring",
    right_ring="Kishar Ring",
    back={ name="Taranus's Cape", augments={'MP+60','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}}}

sets.precast_Death = {
main={ name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}},
sub="Niobid Strap",
ammo="Ghastly Tathlum",
head="Pixie Hairpin +1",
body="Zendik Robe",
hands={ name="Amalric Gages", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
feet={ name="Merlinic Crackows", augments={'Mag. Acc.+5','"Fast Cast"+6','DEX+5','"Mag.Atk.Bns."+8',}},
neck="Orunmila's Torque",
waist="Channeler's Stone",
left_ear="Etiolation Earring",
right_ear="Barkarole Earring",
left_ring="Mephitas's Ring +1",
right_ring="Kishar Ring",
back={ name="Taranus's Cape", augments={'MP+60','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}},
}

sets.precast_Haste = {
    main={ name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}},
    sub="Niobid Strap",
    ammo="Sapience Orb",
    head={ name="Merlinic Hood", augments={'"Mag.Atk.Bns."+18','"Fast Cast"+6',}},
    body="Zendik Robe",
    hands={ name="Merlinic Dastanas", augments={'Attack+20','"Fast Cast"+6','MND+3','"Mag.Atk.Bns."+11',}},
    legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+5','"Fast Cast"+6','DEX+5','"Mag.Atk.Bns."+8',}},
    neck="Orunmila's Torque",
    waist="Siegel Sash",
    left_ear="Loquac. Earring",
    right_ear="Enchntr. Earring +1",
    left_ring="Rahab Ring",
    right_ring="Kishar Ring",
    back={ name="Taranus's Cape", augments={'MP+60','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}}}
	
	sets.precast_EnhancingMagic = {
    main={ name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}},
    sub="Niobid Strap",
    ammo="Sapience Orb",
    head={ name="Merlinic Hood", augments={'"Mag.Atk.Bns."+18','"Fast Cast"+6',}},
    body="Zendik Robe",
    hands={ name="Merlinic Dastanas", augments={'Attack+20','"Fast Cast"+6','MND+3','"Mag.Atk.Bns."+11',}},
    legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+5','"Fast Cast"+6','DEX+5','"Mag.Atk.Bns."+8',}},
    neck="Orunmila's Torque",
	waist="Siegel Sash",
    left_ear="Loquac. Earring",
    right_ear="Enchntr. Earring +1",
    left_ring="Rahab Ring",
    right_ring="Kishar Ring",
    back={ name="Taranus's Cape", augments={'MP+60','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}}}
	
	


sets.Resting = {
    main={ name="Lathi"},
    sub="Niobid Strap",
    ammo="Pemphredo Tathlum",
    head="Befouled Crown",
    body="Jhakri Robe +2",
    hands={ name="Amalric Gages", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
    legs="Assid. Pants +1",
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','Magic burst dmg.+8%','CHR+6','Mag. Acc.+2',}},
    neck="Sanctity Necklace",
    waist="Fucho-no-Obi",
    left_ear="Gifted Earring",
    right_ear="Barkaro. Earring",
    left_ring="Etana Ring",
    right_ring="Defending Ring",
    back="Solemnity Cape",}

sets.midcast_EnfeeblingMagic = {
	main={ name="Lathi"},
    sub="Niobid Strap",
    ammo="Pemphredo Tathlum",
    head={ name="Merlinic Hood", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','"Fast Cast"+4','Mag. Acc.+13','"Mag.Atk.Bns."+13',}},
    body="Spaekona's Coat +2",
    hands="Lurid Mitts",
    legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
    feet="Skaoi Boots",
    neck="Erra Pendant",
    waist="Rumination Sash",
    left_ear="Regal Earring",
    right_ear="Digni. Earring",
    left_ring="Stikini Ring +1",
    right_ring="Kishar Ring",
    back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}

sets.sleep = {
	main={ name="Lathi"},
    sub="Niobid Strap",
    ammo="Pemphredo Tathlum",
    head={ name="Merlinic Hood", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','"Fast Cast"+4','Mag. Acc.+13','"Mag.Atk.Bns."+13',}},
    body="Spaekona's Coat +2",
    hands={ name="Arch. Gloves +1", augments={'Reduces Ancient Magic II casting time',}},
    legs="Spae. Tonban +2",
    feet="Skaoi Boots",
    neck="Erra Pendant",
    waist="Rumination Sash",
    left_ear="Regal Earring",
    right_ear="Digni. Earring",
    left_ring="Evanescence Ring",
    right_ring="Kishar Ring",
    back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}

sets.midcast_DarkMagic = {
    main={ name="Lathi"},
    sub="Niobid Strap",
    ammo="Pemphredo Tathlum",
    head={ name="Merlinic Hood", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','"Fast Cast"+4','Mag. Acc.+13','"Mag.Atk.Bns."+13',}},
    body={ name="Merlinic Jubbah", augments={'Mag. Acc.+16 "Mag.Atk.Bns."+16','Magic burst dmg.+11%','STR+1','Mag. Acc.+7','"Mag.Atk.Bns."+8',}},
    hands={ name="Arch. Gloves +1", augments={'Reduces Ancient Magic II casting time',}},
    legs="Spae. Tonban +2",
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+21 "Mag.Atk.Bns."+21','Mag. crit. hit dmg. +6%','Mag. Acc.+12','"Mag.Atk.Bns."+9',}},
    neck="Erra Pendant",
    waist="Casso Sash",
    left_ear="Regal Earring",
    right_ear="Digni. Earring",
    left_ring="Evanescence Ring",
    right_ring="Stikini Ring",
    back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}

sets.midcast_EnhancingMagic = {
    main={ name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}},
    sub="Niobid Strap",
    ammo="Pemphredo Tathlum",
    head={ name="Telchine Cap", augments={'"Cure" potency +6%','Enh. Mag. eff. dur. +9',}},
    body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}},
    hands={ name="Telchine Gloves", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    legs={ name="Telchine Braconi", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    feet={ name="Telchine Pigaches", augments={'Spell interruption rate down -10%','Enh. Mag. eff. dur. +10',}},
    neck="Incanter's Torque",
    waist="Olympus Sash",
    left_ear="Mendi. Earring",
    right_ear="Andoaa Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring",
    back="Fi Follet Cape",}
	

	sets.midcast_Refresh = {
    main={ name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}},
    sub="Niobid Strap",
    ammo="Pemphredo Tathlum",
    head={ name="Amalric Coif +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}},
    hands={ name="Telchine Gloves", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    legs={ name="Telchine Braconi", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    feet={ name="Telchine Pigaches", augments={'Spell interruption rate down -10%','Enh. Mag. eff. dur. +10',}},
    neck="Incanter's Torque",
    waist="Gishdubar Sash",
    left_ear="Mendi. Earring",
    right_ear="Andoaa Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring",
    back="Grapevine Cape",}
	
	sets.midcast_Aquaveil = {
    main={ name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}},
    sub="Niobid Strap",
    ammo="Pemphredo Tathlum",
    head={ name="Amalric Coif +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}},
    hands={ name="Telchine Gloves", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    legs={ name="Telchine Braconi", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    feet={ name="Telchine Pigaches", augments={'Spell interruption rate down -10%','Enh. Mag. eff. dur. +10',}},
    neck="Incanter's Torque",
    waist="Olympus Sash",
    left_ear="Mendi. Earring",
    right_ear="Andoaa Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring",
    back="Fi Follet Cape",}
	
	sets.midcast_Stoneskin = {
    main={ name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}},
    sub="Niobid Strap",
    ammo="Pemphredo Tathlum",
    head={ name="Telchine Cap", augments={'"Cure" potency +6%','Enh. Mag. eff. dur. +9',}},
    body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}},
    hands={ name="Telchine Gloves", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
	legs="Haven Hose",
    feet={ name="Telchine Pigaches", augments={'Spell interruption rate down -10%','Enh. Mag. eff. dur. +10',}},
    neck="Nodens Gorget",
    waist="Siegel Sash",
    left_ear="Mendi. Earring",
    right_ear="Andoaa Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring",
    back="Fi Follet Cape",}
	

sets.midcast_Duration = {
main={ name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}},
sub="Niobid Strap",
ammo="Pemphredo Tathlum",
head={ name="Telchine Cap", augments={'"Cure" potency +6%','Enh. Mag. eff. dur. +9',}},
    body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}},
    hands={ name="Telchine Gloves", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    legs={ name="Telchine Braconi", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    feet={ name="Telchine Pigaches", augments={'Spell interruption rate down -10%','Enh. Mag. eff. dur. +10',}},
neck="Incanter's Torque",
waist="Olympus Sash",
left_ear="Regal Earring",
right_ear="Friomisi Earring",
left_ring="Shiva Ring +1",
right_ring="Shiva Ring +1",
back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}

sets.midcast_MAB = {
    main={ name="Lathi"},
    sub="Niobid Strap",
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
    back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}

sets.midcast_MABB = {
    main={ name="Lathi"},
    sub="Niobid Strap",
    ammo="Pemphredo Tathlum",
    head="Ea Hat",
    body="Ea Houppelande",
    hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    legs="Ea Slops",
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','Magic burst dmg.+8%','CHR+6','Mag. Acc.+2',}},
    neck="Mizu. Kubikazari",
    waist="Hachirin-no-Obi",
    left_ear="Regal Earring",
    right_ear="Barkaro. Earring",
    left_ring="Shiva Ring +1",
    right_ring="Mujin Band",
    back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}

sets.midcast_Death = {
main={ name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}},
sub="Niobid Strap",
ammo="Ghastly Tathlum",
head="Pixie Hairpin +1",
body={ name="Merlinic Jubbah", augments={'Mag. Acc.+16 "Mag.Atk.Bns."+16','Magic burst dmg.+11%','STR+1','Mag. Acc.+7','"Mag.Atk.Bns."+8',}},
    hands={ name="Amalric Gages", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
    legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','Magic burst dmg.+8%','MND+1','Mag. Acc.+15','"Mag.Atk.Bns."+11',}},
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','Magic burst dmg.+8%','CHR+6','Mag. Acc.+2',}},
neck="Mizu. Kubikazari",
waist="Hachirin-no-Obi",
left_ear="Etiolation Earring",
right_ear="Barkarole Earring",
left_ring="Mephitas's Ring +1",
right_ring="Mujin Band",
back={ name="Taranus's Cape", augments={'MP+60','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}

sets.midcast_Drain = {
    main={ name="Lathi"},
    sub="Niobid Strap",
    ammo="Pemphredo Tathlum",
    head={ name="Merlinic Hood", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','"Drain" and "Aspir" potency +10','Mag. Acc.+11','"Mag.Atk.Bns."+9',}},
    body={ name="Merlinic Jubbah", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','"Drain" and "Aspir" potency +10','Mag. Acc.+2','"Mag.Atk.Bns."+6',}},
    hands={ name="Merlinic Dastanas", augments={'Mag. Acc.+16','"Drain" and "Aspir" potency +7','MND+7','"Mag.Atk.Bns."+10',}},
    legs="Spae. Tonban +2",
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','"Drain" and "Aspir" potency +7','"Mag.Atk.Bns."+4',}},
    neck="Erra Pendant",
    waist="Fucho-no-Obi",
    left_ear="Regal Earring",
    right_ear="Digni. Earring",
    left_ring="Stikini Ring +1",
    right_ring="Evanescence Ring",
    back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}

sets.midcast_Comet = {
    main={ name="Lathi"},
    sub="Niobid Strap",
    ammo="Pemphredo Tathlum",
    head="Pixie Hairpin +1",
    body={ name="Merlinic Jubbah", augments={'Mag. Acc.+16 "Mag.Atk.Bns."+16','Magic burst dmg.+11%','STR+1','Mag. Acc.+7','"Mag.Atk.Bns."+8',}},
    hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','Magic burst dmg.+8%','MND+1','Mag. Acc.+15','"Mag.Atk.Bns."+11',}},
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','Magic burst dmg.+8%','CHR+6','Mag. Acc.+2',}},
    neck="Sanctity Necklace",
    waist="Refoccilation Stone",
    left_ear="Regal Earring",
    right_ear="Barkaro. Earring",
    left_ring="Shiva Ring +1",
    right_ring="Stikini Ring",
    back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}

sets.midcast_AF = {
    main={ name="Lathi"},
    sub="Niobid Strap",
    ammo="Pemphredo Tathlum",
    head={ name="Merlinic Hood", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','"Fast Cast"+4','Mag. Acc.+13','"Mag.Atk.Bns."+13',}},
	body="Spae. Coat +1",
    hands={ name="Amalric Gages", augments={'INT+10','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
    legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','Magic burst dmg.+8%','MND+1','Mag. Acc.+15','"Mag.Atk.Bns."+11',}},
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','Magic burst dmg.+8%','CHR+6','Mag. Acc.+2',}},
    neck="Mizu. Kubikazari",
    waist="Hachirin-no-Obi",
    left_ear="Regal Earring",
    right_ear="Barkaro. Earring",
    left_ring="Shiva Ring +1",
    right_ring="Mujin Band",
    back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}
	

sets.midcast_Impact = {
main={ name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}},
sub="Niobid Strap",
ammo="Pemphredo Tathlum",
body="Twilight Cloak",
hands={ name="Amalric Gages", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
legs={ name="Amalric Slops", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
feet={ name="Merlinic Crackows", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','Phys. dmg. taken -3%','Mag. Acc.+15',}},
neck="Saevus Pendant +1",
waist="Yamabuki-no-Obi",
left_ear="Regal Earring",
right_ear="Friomisi Earring",
left_ring="Shiva Ring +1",
right_ring="Shiva Ring +1",
back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}




sets.midcast_Cure = {
    main={ name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}},
    sub="Niobid Strap",
    ammo="Pemphredo Tathlum",
    head={ name="Vanya Hood", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
    body={ name="Vanya Robe", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
    hands={ name="Telchine Gloves", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    legs={ name="Telchine Braconi", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    feet={ name="Vanya Clogs", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}},
    neck="Incanter's Torque",
    waist="Luminary Sash",
    left_ear="Mendi. Earring",
    right_ear="Regal Earring",
    left_ring="Stikini Ring +1",
    right_ring="Lebeche Ring",
    back="Solemnity Cape",}
	
	sets.midcast_Self_Cure = set_combine(sets.midcast_Cure, {waist="Gishdubar Sash", neck="Phalaina Locket"})
	
sets.stun = {
    main={ name="Lathi"},
    sub="Niobid Strap",
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
    back={ name="Taranus's Cape", augments={'MP+60','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}}
	}


	--Job Ability Sets--
	
	sets.JA = {}
	
	sets.JA.ManaWall = {feet="Wicce Sabots +1",back={ name="Taranus's Cape", augments={'MP+60','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}}
	}

--Weaponskill Sets–
sets.WS = {}
sets.WS.Myrkr = {
    main={ name="Lathi", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}},
    sub="Niobid Strap",
    ammo="Ghastly Tathlum",
    head={ name="Amalric Coif", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
    body="Ros. Jaseran +1",
    hands={ name="Amalric Gages", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
    legs={ name="Amalric Slops", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
    feet={ name="Psycloth Boots", augments={'MP+50','INT+7','"Conserve MP"+6',}},
    neck="Sanctity Necklace",
    waist="Shinjutsu-no-Obi",
    left_ear="Etiolation Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    left_ring="Mephitas's Ring",
    right_ring="Mephitas's Ring +1",
    back="Bane Cape",
}

end

--Precast –-

function precast(spell)	
if Death_Mode == 1 then
equip(sets.precast_Death)
send_command('@input /echo Death Precast Set')	
elseif Death_Mode == 0 then
if Cure_Spells:contains(spell.name) then
equip(sets.precast_Cure)
send_command('@input /echo Cure Precast Set')	
elseif FC_Spells:contains(spell.name) then
equip(sets.precast_EnhancingMagic)
send_command('@input /echo Enhance Precast Set')
elseif spell.name == 'Impact' then
equip(sets.precast_FastCast)
equip({body="Twilight cloak"})
send_command('@input /echo Impact Precast Set')	
elseif spell.name == 'Stun' then
equip(sets.precast_FastCast)
send_command('@input /echo Stun Precast Set')	
elseif spell.name == 'Death' then
equip(sets.precast_Death)
send_command('@input /echo Death FC Set')
elseif spell.name == 'Refresh' then
equip(sets.precast_Haste)
elseif spell.name == 'Haste' then
equip(sets.precast_Haste)
else
equip(sets.precast_FastCast)
send_command('@input /echo Precast Set')	
end

if spell.english == 'Myrkr' then
equip(sets.WS.Myrkr)
send_command('@input /echo Myrkr Set')
end

if spell.english == 'Mana Wall' then
equip(sets.JA.ManaWall)
end

end
-- MidCast –-
function midcast(spell)
if Cure_Spells:contains(spell.name) then 
        if spell.target.type=="SELF" then
            equip(sets.midcast_Self_Cure)
            send_command('@input /echo Self Cure Set')
			weathercheck(spell.element)
        else
            equip(sets.midcast_Cure)
            send_command('@input /echo ST Cure Set')
            weathercheck(spell.element)
        end
    end
-- Dark Magic –	
if spell.skill == 'Dark Magic' then
if spell.english == 'Death' then
equip(sets.midcast_Death)
send_command('@input /echo Death Set')
elseif spell.english == 'Stun' then
equip(sets.stun)
send_command('@input /echo Stun Set')
else
equip(sets.midcast_Drain)
send_command('@input /echo Drain/Aspir Set')
weathercheck(spell.element)
end
elseif spell.skill == 'Enfeebling Magic' then
equip(sets.midcast_EnfeeblingMagic)
send_command('@input /echo Enfeebling Set')
elseif spell.english == 'Sleep' then
equip(sets.sleep)
send_command('@input /echo Sleep Set')
end

if spell.skill == 'Enhancing Magic' then	
if FC_Spells:contains(spell.name) then
equip(sets.midcast_Duration)
elseif spell.name == 'Refresh' then
equip(sets.midcast_Refresh)
send_command('@input /echo Refresh Set')
elseif spell.name == 'Aquaveil' then
equip(sets.midcast_Aquaveil)
send_command('@input /echo Aquaveil Set')
elseif spell.name == 'Stoneskin' then
equip(sets.midcast_Stoneskin)
send_command('@input /echo Stoneskin Set')
	if buffactive["Stoneskin"] then
    windower.send_command('wait 1;cancel 37;')
	end
else
equip(sets.midcast_EnhancingMagic)
send_command('@input /echo Enhancing Regular Set')
end
end

if spell.skill == 'Elemental Magic' then
if spell.name == 'Impact' then	
equip(sets.midcast_Impact)
send_command('@input /echo Impact Set')
weathercheck(spell.element)	
elseif Stone_Spells:contains(spell.name) then
if MBB_Mode == 1 then
equip(sets.midcast_MABB)
equip({neck="Quanpur Necklace"})
send_command('@input /echo Stone Neck MBB Set')
weathercheck(spell.element)
else
equip(sets.midcast_MAB)
equip({neck="Quanpur Necklace"})
send_command('@input /echo Stone Set')
weathercheck(spell.element)
end
else	
if AF_Body_On_ST == 1 then
if MBB_Mode == 1 then
equip(sets.midcast_MABB)	
equip({body="Spaekona's coat +2"})
send_command('@input /echo AF Body MBB Set')
weathercheck(spell.element)
else
equip(sets.midcast_MAB)	
equip({body="Spaekona's coat +2"})
send_command('@input /echo AF Body Elemental Set')
weathercheck(spell.element)
end
else
if MBB_Mode == 1 then
if spell.name == 'Comet' then
equip(sets.midcast_Comet)	
send_command('@input /echo MBB Comet Set')
weathercheck(spell.element)
else
equip(sets.midcast_MABB)
send_command('@input /echo MBB Elemental Set')
weathercheck(spell.element)	
end
else
if Death_Mode == 1 then
if spell.name == 'Refresh' then
equip(sets.midcast_Death)	
send_command('@input /echo Death-Buff Set')
weathercheck(spell.element)
else
equip(sets.midcast_Duration)
equip({head="Amalric coif"})
send_command('@input /echo Refresh Set')
weathercheck(spell.element)	
end
else
if Death_Mode == 1 then
if spell.name == 'Haste' then
equip(sets.midcast_Death)	
send_command('@input /echo Death-Buff Set')
weathercheck(spell.element)
else
equip(sets.midcast_Duration)
send_command('@input /echo Duration Set')
weathercheck(spell.element)	
end
else
if spell.name == 'Comet' then
equip(sets.midcast_Comet)	
send_command('@input /echo Comet Set')
weathercheck(spell.element)
else
equip(sets.midcast_MAB)	
send_command('@input /echo Elemental Set')
weathercheck(spell.element)
end
end	
end




end
end
end

else
end
end	















end

