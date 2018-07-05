----- Credit: Krystela of Asura | Last Update: 28 july 2016 ---->
---- .:: This was entirely created by me, it's not based off anyone's file ::. ---->
---- Always visit http://pastebin.com/u/KrystelaRose to look for possible updates ---->
---- .:: Please leave credit where it's due ::. ---->
---- .:: If you have any problem contact me via ffxiah: http://www.ffxiah.com/player/Asura/Krystela ::. ---->

--Cardinal Chant:  West of mob = MAB. East = MBB. North = MAcc. 

function user_unload()
    send_command('unbind ^f1')
	send_command('unbind ^f1')
    send_command('unbind ^f9')
    send_command('unbind ^f10')
    send_command('unbind ^f11')	
end
function get_sets()
-- Binds for modes
    send_command('bind ^f1 gs c C1')
	send_command('bind ^f3 gs c C3')
	send_command('bind ^f9 gs c C9')
	send_command('bind ^f10 gs c C10')	
	send_command('bind ^f11 gs c C11')		
-- Modes --
    MagicIndex = 1
    MagicArray = {"Normal", "Mix", "Macc", "Magic Burst","Macc Burst"} -- Press ctrl + F1 to circle through Magic modes --
	LuopanIndex = 1	
    LuopanArray = {"Normal","Regen","PDT","EggDT","EggMP"} -- Press ctrl + F9 to circle through Idle modes --
	EnfeebIndex = 1
	EnfeebArray = {"Macc","Skill"}  -- Press ctrl + F3 to circle through Enfeeb modes --
	Melee = 'OFF' -- Press ctrl + F10 for Weapon Lock--	
    Capacity = 'OFF' -- Press ctrl + F11 to have Capacity cape on while Idle --
	
	--- ..:: Modes functions ::.. --->
function self_command(command)	
	if command == 'C1' then -- Magic Acc Cycle --		
        MagicIndex = (MagicIndex % #MagicArray) + 1
        add_to_chat(158,'Magic Set: ' .. MagicArray[MagicIndex])
        status_change(player.status)
	elseif command == 'C3' then -- Enfeeb Acc Cycle --		
        EnfeebIndex = (EnfeebIndex % #EnfeebArray) + 1
        add_to_chat(158,'Enfeeb Set: ' .. EnfeebArray[EnfeebIndex])
        status_change(player.status)
	elseif command == 'C9' then -- Luopan Idle Cycle --		
        LuopanIndex = (LuopanIndex % #LuopanArray) + 1
        add_to_chat(158,'Luopan Idle Set: ' .. LuopanArray[LuopanIndex])
        status_change(player.status)
    elseif command == 'C10' then -- Melee toggle --
        if Melee == 'ON' then
            Melee = 'OFF'
            enable('main', 'sub' ,'range' ,'ammo')				
            add_to_chat(123,'Melee Set: [OFF]')
        else
            Melee = 'ON'
            disable('main', 'sub' ,'range' ,'ammo')			
            add_to_chat(158,'Melee Set: [ON]')
        end
        status_change(player.status)		
    elseif command == 'C11' then -- Capacity toggle --
        if Capacity == 'ON' then
            Capacity = 'OFF'
            add_to_chat(123,'Capacity Set: [OFF]')
        else
            Capacity = 'ON'
            add_to_chat(158,'Capacity Set: [ON]')
        end
        status_change(player.status)
	end	
end	

--- .:: Status Changes ::.. --->
function status_change(new,tab,old)
-- Idle rules --
    if new == 'Idle' then
	    if Capacity == 'ON' then
	        equip(sets.aftercast.Defense, {back="Mecisto. Mantle"})
		    if player.mpp <80 then
                equip(sets.aftercast.Idle, {back="Mecisto. Mantle"})
                if player.mpp <50 then
                    equip(sets.aftercast.Idle, {back="Mecisto. Mantle", waist="Fucho-no-obi"})  
                elseif player.tp >100 then
                    equip(sets.aftercast.Idle, {neck="Chrys. Torque", back="Mecisto. Mantle"}) 	
			    end		
	        elseif pet.isvalid and LuopanArray[LuopanIndex] == 'Normal' then
                equip(sets.aftercast.Luopan, {back="Mecisto. Mantle"})
			    if player.mpp <80 then
                    equip(sets.aftercast.Luopan, {back="Mecisto. Mantle"})
	                if player.mpp <50 then
                        equip(sets.aftercast.Luopan, {back="Mecisto. Mantle", waist="Fucho-no-obi"})	
                    elseif player.tp >100 then
                        equip(sets.aftercast.Luopan, {neck="Chrys. Torque", back="Mecisto. Mantle"}) 
		            end	
		     	end	
			end	
	    elseif pet.isvalid then
            if LuopanArray[LuopanIndex] == 'Normal' then	
                equip(sets.aftercast.Luopan)
			    if player.mpp <50 then
                    equip(sets.aftercast.Luopan, {waist="Fucho-no-obi"})	
                    if player.tp >100 then
                        equip(sets.aftercast.Luopan, {neck="Chrys. Torque"}) 
                    end
			    end			
            elseif LuopanArray[LuopanIndex] == 'Regen' then	
                equip(sets.aftercast.Luopan.Regen)				
            elseif LuopanArray[LuopanIndex] == 'PDT' then	
                equip(sets.aftercast.Luopan.Defense)	
			elseif LuopanArray[LuopanIndex] == 'EggDT' then	
                equip(sets.aftercast.Luopan.EggDT)	
			elseif LuopanArray[LuopanIndex] == 'EggMP' then	
                equip(sets.aftercast.Luopan.EggMP)				
		    end
	    elseif player.mpp <80 then
            equip(sets.aftercast.Idle)
            if player.mpp <50 then
                equip(sets.aftercast.Idle, {waist="Fucho-no-obi"})  
            elseif player.tp >100 then
                equip(sets.aftercast.Idle, {neck="Chrys. Torque"}) 	
		    end	
	    elseif Town:contains(world.zone) then
            equip(sets.aftercast.Town)	
        end			
	elseif new == 'Resting' then
		equip(sets.resting)	
-- TP Status change Rule --		
    elseif new == 'Engaged' then			
	    if player.sub_job == 'DNC' or player.sub_job == 'NIN' then
            equip(sets.engaged.DualWield)	
		else	
            equip(sets.engaged)	
		end			
    end		
end
--- ..:: Pet Status change ::.. --->
function pet_change(pet,gain_or_loss)
    status_change(player.status)
    if not gain_or_loss then
        enable('feet')
		send_command('input /echo ..:: Luopan died ::..')
    end	
end


function weathercheck(spell_element)
if spell_element == world.weather_element or spell_element == world.day_element then
equip({waist="Hachirin-no-Obi"})
send_command('@input /echo Using Element Obi')
else	
end
end

-- Automatically changes Idle gears if you zone in or out of town --
windower.register_event('zone change', function()
	if Town:contains(world.zone) then
        equip(sets.aftercast.Town)
    else
        equip(sets.aftercast.Defense)
    end	
end)
	
-- Set macro book/set --
    send_command('input /macro book 18;wait .1;input /macro set 1') -- set macro book/set here --
---- .::Spellmaps::. ---->			
    enfMND = S{'Paralyze','Slow'}
    enfINT = S{'Blind'}
    eleGeo = S{'Fira', 'Fira II', 'Fira III', 'Blizzara', 'Blizzara II', 'Blizzara III', 'Aerora', 'Aerora II','Aerora III', 'Stonera', 'Stonera II','Stonera III', 'Thundara', 'Thundara II','Thundara III', 'Watera', 'Watera II', 'Watera III'} 	
-- Area mapping --	
    Town = S{"Ru'Lude Gardens","Upper Jeuno","Lower Jeuno","Port Jeuno","Port Windurst","Windurst Waters","Windurst Woods","Windurst Walls","Heavens Tower",
	         "Port San d'Oria","Northern San d'Oria","Southern San d'Oria","Port Bastok","Bastok Markets","Bastok Mines","Metalworks","Aht Urhgan Whitegate",
	         "Tavnazian Safehold","Nashmau","Selbina","Mhaura","Norg","Eastern Adoulin","Western Adoulin","Kazham","Heavens Tower"}
---- Precast ----
    sets.precast = {}
    sets.precast.FC = {
    main="Idris",
    sub="Genmei Shield",
    range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
    head={ name="Merlinic Hood", augments={'"Mag.Atk.Bns."+18','"Fast Cast"+6',}},
    body="Zendik Robe",
    hands={ name="Merlinic Dastanas", augments={'Attack+20','"Fast Cast"+6','MND+3','"Mag.Atk.Bns."+11',}},
    legs="Geomancy Pants +2",
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+5','"Fast Cast"+6','DEX+5','"Mag.Atk.Bns."+8',}},
    neck="Orunmila's Torque",
    waist="Channeler's Stone",
    left_ear="Etiolation Earring",
    right_ear="Enchntr. Earring +1",
    left_ring="Rahab Ring",
    right_ring="Kishar Ring",
    back={ name="Nantosuelta's Cape", augments={'"Fast Cast"+10',}},
}
    sets.precast.Geomancy = {
    main="Idris",
    sub="Genmei Shield",
    range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
    head={ name="Merlinic Hood", augments={'"Mag.Atk.Bns."+18','"Fast Cast"+6',}},
    body="Zendik Robe",
    hands={ name="Merlinic Dastanas", augments={'Attack+20','"Fast Cast"+6','MND+3','"Mag.Atk.Bns."+11',}},
    legs={ name="Bagua Pants +1", augments={'Enhances "Mending Halation" effect',}},
    feet="Azimuth Gaiters +1",
    neck="Incanter's Torque",
    waist="Channeler's Stone",
    left_ear="Enchntr. Earring +1",
    right_ear="Etiolation Earring",
    left_ring="Kishar Ring",
    right_ring="Stikini Ring +1",
    back={ name="Nantosuelta's Cape", augments={'"Fast Cast"+10',}},
}
		
    sets.precast.Cure = set_combine(sets.precast.FC, {right_ear="Mendi. Earring"})
    sets.precast.Enhancing = set_combine(sets.precast.FC, {})
    sets.precast['Stoneskin'] = set_combine(sets.precast.FC, {head="Umuthi Hat", waist="Siegel Sash"})
	sets.precast.Elemental = set_combine(sets.precast.FC, {hands="Bagua Mitaines", right_ear="Barkarole Earring"})
	
---- Job Abilities ----
    sets.JA ={}
    sets.JA['Bolster'] = {body="Bagua Tunic +1"}
	sets.JA['Full Circle'] = {head="Azimuth Hood +1", hands="Bagua Mitaines"}
    sets.JA['Life Cycle'] = {body="Geomancy Tunic +3", back={ name="Nantosuelta's Cape", augments={'"Fast Cast"+10',}},}
	sets.JA['Radial Arcana'] = {feet="Bagua Sandals +1"}
-- WS sets --
	sets.WS = {
    main="Idris",
    sub="Genmei Shield",
	range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
    head="Jhakri Coronal +2",
    body="Jhakri Robe +2",
    hands="Jhakri Cuffs +2",
    legs="Jhakri Slops +2",
    feet="Jhakri Pigaches +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Mache Earring",
    right_ear="Cessance Earring",
    left_ring="Cacoethic Ring +1",
    right_ring="Etana Ring",
    back="Solemnity Cape",
}
    sets.WS['Realmrazer'] = {}
    sets.WS['Exudation'] = {}	
---- Midcast ----
    sets.midcast = {}
    sets.midcast.Recast = {
	    main="Idris",
		sub="Genmei Shield",
        range="Dunna",
		ammo=empty,
        head={ name="Amalric Coif +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        neck="Orunmila's Torque",
        ear1="Loquac. Earring",
        ear2="Barkarole Earring",
        body={ name="Merlinic Jubbah", augments={'"Mag.Atk.Bns."+24','Magic burst dmg.+10%','VIT+2','Mag. Acc.+7',}},
        hands={ name="Merlinic Dastanas", augments={'Attack+20','"Fast Cast"+6','MND+3','"Mag.Atk.Bns."+11',}},
        ring2="Prolix Ring",
		ring1="Defending Ring",
        back={ name="Nantosuelta's Cape", augments={'"Fast Cast"+10',}},
        waist="Witful Belt",
		legs="Geomancy Pants +2",
        feet={ name="Merlinic Crackows", augments={'"Fast Cast"+5','"Mag.Atk.Bns."+3',}},
}
 
-- Healing Magic --
    sets.midcast.Cure = {
    main="Idris",
    sub="Genmei Shield",
    range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
    head={ name="Vanya Hood", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
    body={ name="Vanya Robe", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
    hands={ name="Telchine Gloves", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    legs={ name="Telchine Braconi", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    feet={ name="Vanya Clogs", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}},
    neck="Incanter's Torque",
    waist="Luminary Sash",
    left_ear="Mendi. Earring",
    right_ear="Regal Earring",
    left_ring="Lebeche Ring",
    right_ring="Stikini Ring +1",
    back="Solemnity Cape",
}

sets.midcast.SelfCure = set_combine(sets.midcast.Cure, {waist="Gishdubar Sash", neck="Phalaina Locket"})
	
	
    sets.midcast.Cure.WeaponLock = {
    main="Idris",
    sub="Genmei Shield",
    range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
    head={ name="Vanya Hood", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
    body={ name="Vanya Robe", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
    hands="Revealer's Mitts",
    legs={ name="Telchine Braconi", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    feet={ name="Vanya Clogs", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}},
    neck="Incanter's Torque",
    waist="Gishdubar Sash",
    left_ear="Mendi. Earring",
    right_ear="Handler's Earring +1",
    left_ring="Stikini Ring",
    right_ring="Ephedra Ring",
    back="Solemnity Cape",
}
-- Enhancing Magic --
    sets.midcast.Enhancing = {
    main="Idris",
    sub="Ammurapi Shield",
    range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
    head={ name="Telchine Cap", augments={'"Cure" potency +6%','Enh. Mag. eff. dur. +9',}},
    body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}},
    hands={ name="Telchine Gloves", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    legs={ name="Telchine Braconi", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    feet={ name="Telchine Pigaches", augments={'Spell interruption rate down -10%','Enh. Mag. eff. dur. +10',}},
    neck="Incanter's Torque",
    waist="Olympus Sash",
    left_ear="Handler's Earring +1",
    right_ear="Andoaa Earring",
    left_ring="Stikini Ring",
    right_ring="Stikini Ring +1",
    back="Fi Follet Cape",
}
	sets.midcast.Duration =  sets.midcast.Enhancing		

    sets.midcast['Refresh'] = {
    main="Idris",
    sub="Ammurapi Shield",
    range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
    head={ name="Amalric Coif +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}},
    hands={ name="Telchine Gloves", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    legs={ name="Telchine Braconi", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    feet={ name="Telchine Pigaches", augments={'Spell interruption rate down -10%','Enh. Mag. eff. dur. +10',}},
    neck="Incanter's Torque",
    waist="Gishdubar Sash",
    left_ear="Handler's Earring +1",
    right_ear="Andoaa Earring",
    left_ring="Stikini Ring",
    right_ring="Stikini Ring +1",
    back="Grapevine Cape",
}

    sets.midcast['Aquaveil'] = {
    main="Idris",
    sub="Genmei Shield",
    range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
    head={ name="Amalric Coif +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}},
    hands={ name="Telchine Gloves", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    legs={ name="Telchine Braconi", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    feet={ name="Telchine Pigaches", augments={'Spell interruption rate down -10%','Enh. Mag. eff. dur. +10',}},
    neck="Incanter's Torque",
    waist="Olympus Sash",
    left_ear="Handler's Earring +1",
    right_ear="Andoaa Earring",
    left_ring="Stikini Ring",
    right_ring="Stikini Ring +1",
    back="Fi Follet Cape",
}
    
	sets.midcast['Stoneskin'] = {
    main="Idris",
    sub="Genmei Shield",
    range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
    head="Befouled Crown",
    body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}},
    hands="Revealer's Mitts",
    legs="Haven Hose",
    feet="Regal Pumps",
    neck="Nodens Gorget",
    waist="Siegel Sash",
    left_ear="Regal Earring",
    right_ear="Andoaa Earring",
    left_ring="Stikini Ring",
    right_ring="Stikini Ring +1",
    back="Fi Follet Cape",
}	
-- Enfeebling Magic --
    sets.midcast.Enfeebling = {
    main="Idris",
    sub="Ammurapi Shield",
    range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
    head="Geo. Galero +3",
    body="Geomancy Tunic +3",
    hands="Geo. Mitaines +3",
    legs="Geomancy Pants +2",
    feet="Geo. Sandals +3",
    neck="Erra Pendant",
    waist="Rumination Sash",
    left_ear="Regal Earring",
    right_ear="Digni. Earring",
    left_ring="Kishar Ring",
    right_ring="Stikini Ring +1",
    back={ name="Nantosuelta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}

sets.midcast.EnfeebSkill = {
    main="Idris",
    sub="Ammurapi Shield",
    range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
    head="Befouled Crown",
    body={ name="Vanya Robe", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
    hands="Geo. Mitaines +3",
    legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
    feet="Skaoi Boots",
    neck="Erra Pendant",
    waist="Rumination Sash",
    left_ear="Regal Earring",
    right_ear="Digni. Earring",
    left_ring="Kishar Ring",
    right_ring="Stikini Ring +1",
    back={ name="Nantosuelta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}


 
-- Dark Magic --
    sets.midcast.Dark = {
    main="Idris",
    sub="Ammurapi Shield",
    range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
    head="Geo. Galero +3",
    body="Geomancy Tunic +3",
    hands="Geo. Mitaines +3",
    legs="Azimuth Tights +1",
    feet="Geo. Sandals +3",
    neck="Erra Pendant",
    waist="Casso Sash",
    left_ear="Regal Earring",
    right_ear="Digni. Earring",
    left_ring="Evanescence Ring",
    right_ring="Archon Ring",
    back={ name="Nantosuelta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}
    sets.midcast.Drain = {
    main="Idris",
    sub="Ammurapi Shield",
    range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
    head={ name="Bagua Galero +2", augments={'Enhances "Primeval Zeal" effect',}},
    body={ name="Merlinic Jubbah", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','"Drain" and "Aspir" potency +10','Mag. Acc.+2','"Mag.Atk.Bns."+6',}},
    hands={ name="Merlinic Dastanas", augments={'Mag. Acc.+16','"Drain" and "Aspir" potency +7','MND+7','"Mag.Atk.Bns."+10',}},
    legs="Azimuth Tights +1",
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','"Drain" and "Aspir" potency +7','"Mag.Atk.Bns."+4',}},
    neck="Erra Pendant",
    waist="Fucho-no-Obi",
    left_ear="Regal Earring",
    right_ear="Digni. Earring",
    left_ring="Evanescence Ring",
    right_ring="Archon Ring",
    back={ name="Nantosuelta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}
    sets.midcast.Stun  = {
    main="Idris",
    sub="Ammurapi Shield",
    range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
	head={ name="Merlinic Hood", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','"Fast Cast"+4','Mag. Acc.+13','"Mag.Atk.Bns."+13',}},
    body="Shango Robe",
    hands={ name="Merlinic Dastanas", augments={'Attack+20','"Fast Cast"+6','MND+3','"Mag.Atk.Bns."+11',}},
    legs="Geomancy Pants +2",
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+5','"Fast Cast"+6','DEX+5','"Mag.Atk.Bns."+8',}},
    neck="Voltsurge Torque",
    waist="Luminary Sash",
	left_ear="Enchntr. Earring +1",
    right_ear="Etiolation Earring",
    left_ring="Rahab Ring",
    right_ring="Kishar Ring",
    back={ name="Nantosuelta's Cape", augments={'"Fast Cast"+10',}},
	}

-- Elemental Magic --
    sets.midcast.Elemental = {
    main="Idris",
    sub="Ammurapi Shield",
    range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
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
    back={ name="Nantosuelta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}

sets.midcast.ElementalMix = {
    main="Idris",
    sub="Ammurapi Shield",
    range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
    head={ name="Merlinic Hood", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','"Fast Cast"+4','Mag. Acc.+13','"Mag.Atk.Bns."+13',}},
    body={ name="Amalric Doublet +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    legs={ name="Amalric Slops +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+21 "Mag.Atk.Bns."+21','Mag. crit. hit dmg. +6%','Mag. Acc.+12','"Mag.Atk.Bns."+9',}},
    neck="Sanctity Necklace",
    waist="Refoccilation Stone",
    left_ear="Regal Earring",
    right_ear="Barkaro. Earring",
    left_ring="Shiva Ring +1",
    right_ring="Shiva Ring +1",
    back={ name="Nantosuelta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}

sets.midcast.ElementalMacc = {
    main="Idris",
    sub="Ammurapi Shield",
    range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
    head={ name="Merlinic Hood", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','"Fast Cast"+4','Mag. Acc.+13','"Mag.Atk.Bns."+13',}},
    body={ name="Amalric Doublet +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','Magic burst dmg.+8%','MND+1','Mag. Acc.+15','"Mag.Atk.Bns."+11',}},
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+21 "Mag.Atk.Bns."+21','Mag. crit. hit dmg. +6%','Mag. Acc.+12','"Mag.Atk.Bns."+9',}},
    neck="Sanctity Necklace",
    waist="Refoccilation Stone",
    left_ear="Regal Earring",
    right_ear="Barkaro. Earring",
    left_ring="Shiva Ring +1",
    right_ring="Shiva Ring +1",
    back={ name="Nantosuelta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}
 
	sets.midcast.Elemental.Weather = set_combine(sets.midcast.Elemental, {waist="Hachirin-no-Obi"})
	
	sets.midcast.Elemental.MB = {
    main="Idris",
    sub="Ammurapi Shield",
    range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
    head="Ea Hat",
    body="Ea Houppelande",
    hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    legs="Ea Slops",
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','Magic burst dmg.+8%','CHR+6','Mag. Acc.+2',}},
    neck="Mizu. Kubikazari",
    waist="Refoccilation Stone",
    lleft_ear="Regal Earring",
    right_ear="Barkaro. Earring",
    left_ring="Shiva Ring +1",
    right_ring="Mujin Band",
    back={ name="Nantosuelta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}
	sets.midcast.Elemental.MB.Weather = set_combine(sets.midcast.Elemental.MB, {waist="Hachirin-no-Obi"})
	
	sets.midcast.Elemental.MaccB = {
    main="Idris",
    sub="Ammurapi Shield",
    range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
    head="Ea Hat",
    body="Ea Houppelande",
    hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','Magic burst dmg.+8%','MND+1','Mag. Acc.+15','"Mag.Atk.Bns."+11',}},
    feet={ name="Merlinic Crackows", augments={'Mag. Acc.+22 "Mag.Atk.Bns."+22','Magic burst dmg.+8%','CHR+6','Mag. Acc.+2',}},
    neck="Mizu. Kubikazari",
    waist="Refoccilation Stone",
    left_ear="Regal Earring",
    right_ear="Barkaro. Earring",
    left_ring="Shiva Ring +1",
    right_ring="Mujin Band",
    back={ name="Nantosuelta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}

	sets.midcast.Elemental.MaccB.Weather = set_combine(sets.midcast.Elemental.MaccB, {waist="Hachirin-no-Obi"})

	
	sets.midcast.Elemental.Geo = set_combine(sets.midcast.Elemental, {})	
	
	
-- Geomancy Magic --
    sets.midcast.Geomancy = {
    main="Idris",
    sub="Genmei Shield",
    range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
    head="Azimuth Hood +1",
    body="Azimuth Coat +1",
    hands="Azimuth Gloves +1",
    legs="Azimuth Tights +1",
    feet="Azimuth Gaiters +1",
    neck="Incanter's Torque",
    waist="Austerity Belt +1",
    left_ear="Gifted Earring",
    right_ear="Calamitous Earring",
    left_ring="Defending Ring",
    right_ring="Stikini Ring +1",
    back={ name="Nantosuelta's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Pet: "Regen"+10','Pet: "Regen"+5',}},
}

    sets.midcast.Indi = {
    main="Idris",
    sub="Genmei Shield",
    range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
    head="Azimuth Hood +1",
    body="Azimuth Coat +1",
    hands="Azimuth Gloves +1",
    legs={ name="Bagua Pants +1", augments={'Enhances "Mending Halation" effect',}},
    feet="Azimuth Gaiters +1",
    neck="Incanter's Torque",
    waist="Austerity Belt +1",
    left_ear="Gifted Earring",
    right_ear="Calamitous Earring",
    left_ring="Defending Ring",
    right_ring="Stikini Ring +1",
    back={ name="Nantosuelta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}

---- Aftercast ----
    sets.aftercast = {}
    sets.aftercast.Idle = {
    main="Idris",
    sub="Genmei Shield",
    range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
    head="Befouled Crown",
	body="Jhakri Robe +2",
    hands="Geo. Mitaines +3",
	legs="Assid. Pants +1",
    feet="Geo. Sandals +3",
    neck="Loricate Torque +1",
    waist="Fucho-no-Obi",
    left_ear="Etiolation Earring",
	right_ear="Genmei Earring",
    left_ring="Defending Ring",
    right_ring="Stikini Ring +1",
    back="Moonbeam Cape",
	}
   
   sets.aftercast.Defense = {
	main="Idris",
    sub="Genmei Shield",
    range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
    head="Befouled Crown",
    body="Jhakri Robe +2",
    hands="Geo. Mitaines +3",
    legs="Assid. Pants +1",
    feet="Geo. Sandals +3",
    neck="Loricate Torque +1",
    waist="Fucho-no-Obi",
    left_ear="Etiolation Earring",
	right_ear="Genmei Earring",
    left_ring="Defending Ring",
    right_ring="Fortified Ring",
    back="Moonbeam Cape",
}

    sets.aftercast.Luopan =  {
	main="Idris",
    sub="Genmei Shield",
    range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
    head="Azimuth Hood +1",
    body={ name="Telchine Chas.", augments={'Mag. Evasion+5','Pet: "Regen"+3','Pet: Damage taken -3%',}},
    hands={ name="Telchine Gloves", augments={'Pet: "Regen"+2','Pet: Damage taken -4%',}},
    legs={ name="Telchine Braconi", augments={'Mag. Evasion+15','Pet: "Regen"+2','Pet: Damage taken -3%',}},
    feet={ name="Telchine Pigaches", augments={'Mag. Evasion+25','Pet: "Regen"+3','Pet: Damage taken -4%',}},
    neck="Loricate Torque +1",
    waist="Isa Belt",
    left_ear="Etiolation Earring",
	right_ear="Genmei Earring",
    left_ring="Defending Ring",
    right_ring="Fortified Ring",
    back={ name="Nantosuelta's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Pet: "Regen"+10','Pet: "Regen"+5',}},
}		
    
	sets.aftercast.Luopan.Regen =  {
    main="Idris",
    sub="Genmei Shield",
    range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
    head="Azimuth Hood +1",
    body={ name="Telchine Chas.", augments={'Mag. Evasion+5','Pet: "Regen"+3','Pet: Damage taken -3%',}},
  	hands={ name="Telchine Gloves", augments={'Pet: "Regen"+2','Pet: Damage taken -4%',}},
    legs={ name="Telchine Braconi", augments={'Mag. Evasion+15','Pet: "Regen"+2','Pet: Damage taken -3%',}},
    feet={ name="Telchine Pigaches", augments={'Mag. Evasion+25','Pet: "Regen"+3','Pet: Damage taken -4%',}},
    neck="Loricate Torque +1",
    waist="Isa Belt",
    left_ear="Etiolation Earring",
	right_ear="Genmei Earring",
    left_ring="Defending Ring",
    right_ring="Fortified Ring",
    back={ name="Nantosuelta's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Pet: "Regen"+10','Pet: "Regen"+5',}},
}
    sets.aftercast.Luopan.Defense = {
	main="Idris",
    sub="Genmei Shield",
    range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
    head="Azimuth Hood +1",
    body={ name="Telchine Chas.", augments={'Mag. Evasion+5','Pet: "Regen"+3','Pet: Damage taken -3%',}},
    hands="Geo. Mitaines +3",
    legs={ name="Telchine Braconi", augments={'Mag. Evasion+15','Pet: "Regen"+2','Pet: Damage taken -3%',}},
    feet={ name="Telchine Pigaches", augments={'Mag. Evasion+25','Pet: "Regen"+3','Pet: Damage taken -4%',}},
    neck="Loricate Torque +1",
    waist="Isa Belt",
    left_ear="Etiolation Earring",
	right_ear="Genmei Earring",
    left_ring="Defending Ring",
    right_ring="Stikini Ring +1",
    back={ name="Nantosuelta's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Pet: "Regen"+10','Pet: "Regen"+5',}},
}

sets.aftercast.Luopan.EggDT = {
	main="Idris",
    sub="Genmei Shield",
    range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
    head={ name="Merlinic Hood", augments={'Damage taken-3%','CHR+6','Mag. Acc.+15',}},
    body="Mallquis Saio +2",
    hands="Geo. Mitaines +3",
    legs={ name="Telchine Braconi", augments={'Mag. Evasion+15','Pet: "Regen"+2','Pet: Damage taken -3%',}},
    feet={ name="Telchine Pigaches", augments={'Mag. Evasion+25','Pet: "Regen"+3','Pet: Damage taken -4%',}},
    neck="Loricate Torque +1",
    waist="Isa Belt",
    left_ear="Etiolation Earring",
	right_ear="Genmei Earring",
    left_ring="Defending Ring",
    right_ring="Fortified Ring",
    back="Moonbeam Cape",
}

sets.aftercast.Luopan.EggMP = {
	main="Idris",
    sub="Genmei Shield",
    range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
    head={ name="Merlinic Hood", augments={'Damage taken-3%','CHR+6','Mag. Acc.+15',}},
    body="Mallquis Saio +2",
    hands="Geo. Mitaines +3",
    legs={ name="Telchine Braconi", augments={'Mag. Evasion+15','Pet: "Regen"+2','Pet: Damage taken -3%',}},
    feet="Mallquis Clogs +2",
    neck="Loricate Torque +1",
    waist="Isa Belt",
    left_ear="Etiolation Earring",
	right_ear="Genmei Earring",
    left_ring="Defending Ring",
    right_ring="Fortified Ring",
    back="Moonbeam Cape",
}
	
	
	
	
	
	
    sets.aftercast.Town = {feet="Geo. Sandals +3",}
-- Resting Sets --
    sets.resting = {}
-- Melee Sets --
    sets.engaged = {}
    sets.engaged.DualWield = {}	
end	

---- .::Precast Functions::. ---->
function precast(spell)	
    if spell.action_type == 'Magic' then	
-- Healing Magic --	
        if string.find(spell.english,'Cure') then
	        equip(sets.precast.Cure)
	    elseif string.find(spell.english,'Cura') then
		    equip(sets.precast.Cure)
-- Enhancing Magic --		
        elseif spell.english == 'Stoneskin' then
            equip(sets.precast[spell.english])		
-- Elemental Magic --		
	    elseif spell.english == 'Impact' then
			equip(sets.precast['Impact'])
-- Geomancy Magic --		
        elseif spell.skill == 'Geomancy' then
            equip(sets.precast.Geomancy)
			if string.find(spell.english, 'Indi') then
       			windower.send_command('timers c "Indi-Spell" 300')
			    if buffactive['Entrust'] then
                    equip(sets.precast.Geomancy, {main="Solstice"})				
                end					
			end
        else
		    equip(sets.precast.FC)
        end		
-- Job Abilities --	
    elseif spell.type == 'JobAbility' then
        equip(sets.JA[spell.english])
		if spell.english == 'Radial Arcana' then
		    equip(sets.JA[spell.english])
		end			
-- Weapon skills --
    elseif spell.type == 'WeaponSkill' then
        equip(sets.WS[spell.english])
	end		
end		
---- .::Midcast Functions::. ---->
function midcast(spell)
    if spell.action_type == 'Magic' then
-- Healing Magic --	
        if string.find(spell.english,'Cure') then
	        equip(sets.midcast.Cure)
			if WeaponLock == 'ON' then
                equip(sets.midcast.Cure.WeaponLock)		
			end	
	    elseif string.find(spell.english,'Cura') then
	            equip(sets.midcast.Cure)		
			if WeaponLock == 'ON' then
                equip(sets.midcast.Cure.WeaponLock)		
			end	
-- Enhancing Magic --			
	    elseif spell.english == 'Phalanx' then
	        equip(sets.midcast.Enhancing)
	    elseif string.find(spell.english, 'Bar') then
		    equip(sets.midcast.Enhancing)
        elseif spell.english == 'Stoneskin' then
            equip(sets.midcast[spell.english])
        elseif spell.english == 'Haste' then
            equip(sets.midcast.Duration)
			elseif spell.english == 'Flurry' then
            equip(sets.midcast.Duration)
        elseif spell.english == 'Refresh' then
            equip(sets.midcast.Duration)	
        elseif spell.english == 'Aquaveil' then
            equip(sets.midcast.Duration)				
-- Enfeebling Magic --		
        elseif spell.skill == 'Enfeebling Magic' then
		if EnfeebArray[EnfeebIndex] == 'Macc' then
            equip(sets.midcast.Enfeebling)
  		elseif EnfeebArray[EnfeebIndex] == 'Skill' then
            equip(sets.midcast.EnfeebSkill)
		    end	
-- Dark Magic --		
        elseif string.find(spell.english, 'Aspir') then
            equip(sets.midcast.Drain)
        elseif string.find(spell.english, 'Drain') then
            equip(sets.midcast.Drain)
        elseif spell.english == 'Stun' then
            equip(sets.midcast['Stun'])	
-- Elemental Magic --		
        elseif spell.skill == 'Elemental Magic' then
		    if spell.english == 'Impact' then
				equip(sets.midcast['Impact'])			
	        elseif MagicArray[MagicIndex] == 'Normal' then
		        equip(sets.midcast.Elemental)			
	            if spell.element == world.weather_element or spell.element == world.day_element then	
                    equip(sets.midcast.Elemental.Weather)			
                elseif eleGeo:contains(spell.name) then
                    equip(sets.midcast.Elemental.Geo)	
				end	
			elseif MagicArray[MagicIndex] == 'Mix' then
		        equip(sets.midcast.ElementalMix)			
	            if spell.element == world.weather_element or spell.element == world.day_element then	
                    equip(sets.midcast.Elemental.Weather)			
                elseif eleGeo:contains(spell.name) then
                    equip(sets.midcast.Elemental.Geo)	
				end	
			elseif MagicArray[MagicIndex] == 'Macc' then
		        equip(sets.midcast.ElementalMacc)			
	            if spell.element == world.weather_element or spell.element == world.day_element then	
                    equip(sets.midcast.Elemental.Weather)			
                elseif eleGeo:contains(spell.name) then
                    equip(sets.midcast.Elemental.Geo)	
				end	
	        elseif MagicArray[MagicIndex] == 'Magic Burst' then
                equip(sets.midcast.Elemental.MB)
				if spell.english == 'Impact' then
				    equip(sets.midcast.Impact)				
	            elseif spell.element == world.weather_element or spell.element == world.day_element then	
                    equip(sets.midcast.Elemental.MB.Weather)
				end	
				  elseif MagicArray[MagicIndex] == 'Macc Burst' then
                equip(sets.midcast.Elemental.MaccB)
				if spell.english == 'Impact' then
				    equip(sets.midcast.Impact)				
	            elseif spell.element == world.weather_element or spell.element == world.day_element then	
                    equip(sets.midcast.Elemental.MaccB.Weather)
				end	
			end	
-- Geomancy Magic --		
        elseif spell.skill == 'Geomancy' then
            equip(sets.midcast.Geomancy)
            if string.find(spell.english, 'Indi-') then
			    if buffactive['Entrust'] then
                    equip(sets.midcast.Geomancy, {main="Solstice"})
                end					
			end	
		else
            equip(sets.midcast.Recast)		
	    end
	end		
end	
	
---- .::Aftercast Sets::. ---->
function aftercast(spell,action)
-- Luopan Rules --		
	if pet.isvalid then
        if LuopanArray[LuopanIndex] == 'Normal' then	
            equip(sets.aftercast.Luopan)	
        elseif LuopanArray[LuopanIndex] == 'Regen' then	
            equip(sets.aftercast.Luopan.Regen)				
        elseif LuopanArray[LuopanIndex] == 'PDT' then	
            equip(sets.aftercast.Luopan.Defense)	
		elseif LuopanArray[LuopanIndex] == 'EggDT' then	
                equip(sets.aftercast.Luopan.EggDT)	
		elseif LuopanArray[LuopanIndex] == 'EggMP' then	
                equip(sets.aftercast.Luopan.EggMP)					
		end
		else
		equip(sets.aftercast.Idle)
		end
	

		
-- TP sets Rule --		
	if player.status == 'Engaged' then
	    if player.sub_job == 'DNC' or player.sub_job == 'NIN' then
            equip(sets.engaged.DualWield)	
		else	
            equip(sets.engaged)	
		end	
		end
	  	
-- Town Rules --		
	if Town:contains(world.zone) then
        equip(sets.aftercast.Town)			
    end

end
