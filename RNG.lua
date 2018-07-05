function get_sets()
 
        send_command('bind f9 gs c toggle TP set')
        send_command('bind f10 gs c toggle Idle set')
		send_command('bind f11 gs c toggle Ranged set')

       
        function file_unload()
     
 
        send_command('unbind ^f9')
        send_command('unbind ^f10')
        send_command('unbind ^f11')
        send_command('unbind ^f12')
        send_command('unbind ^`')
       
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
       
    sets.Idle.index = {'Standard','DT', 'Cleave'}
    Idle_ind = 1                  
       
    sets.Idle.Standard = {    
	ammo="Chrono Bullet",
    head="Meghanada Visor +2",
    body="Meg. Cuirie +2",
    hands="Meg. Gloves +2",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet={ name="Herculean Boots", augments={'Weapon skill damage +3%','Magic dmg. taken -2%','Damage taken-5%','Accuracy+16 Attack+16','Mag. Acc.+17 "Mag.Atk.Bns."+17',}},
	neck="Loricate Torque +1",
    waist="Flume Belt +1",
    left_ear="Odnowa Earring +1",
    right_ear="Etiolation Earring",
    left_ring="Defending Ring",
    right_ring="Fortified Ring",
    back="Moonbeam Cape",
}
                                                 
    sets.Idle.DT =  {   
	ammo="Chrono Bullet",
    head="Meghanada Visor +2",
    body="Meg. Cuirie +2",
    hands="Meg. Gloves +2",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet={ name="Herculean Boots", augments={'Weapon skill damage +3%','Magic dmg. taken -2%','Damage taken-5%','Accuracy+16 Attack+16','Mag. Acc.+17 "Mag.Atk.Bns."+17',}},
    neck="Loricate Torque +1",
    waist="Flume Belt +1",
    left_ear="Odnowa Earring +1",
    right_ear="Etiolation Earring",
    left_ring="Defending Ring",
    right_ring="Fortified Ring",
    back="Moonbeam Cape",
}
										
	sets.Idle.Cleave = {     
	ammo="Chrono Bullet",
    head="Meghanada Visor +2",
    body="Meg. Cuirie +2",
    hands="Meg. Gloves +2",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet={ name="Herculean Boots", augments={'Weapon skill damage +3%','Magic dmg. taken -2%','Damage taken-5%','Accuracy+16 Attack+16','Mag. Acc.+17 "Mag.Atk.Bns."+17',}},
    neck="Loricate Torque +1",
    waist="Flume Belt +1",
    left_ear="Odnowa Earring +1",
    right_ear="Etiolation Earring",
    left_ring="Defending Ring",
    right_ring="Fortified Ring",
    back="Moonbeam Cape",
}
    --TP Sets--
    sets.TP = {}
 
    sets.TP.index = {'Standard', 'AccuracyLite', 'AccuracyFull', 'DT', 'DTAccuracy', 'CP',}
    --1=Standard, 2 = AccuracyLite, 3=AccuracyFull, 4=DT, 5=DTAccuracy, 7=CP--
				
    TP_ind = 1
	sets.TP.Standard = {  
    ammo="Chrono Bullet",
    head={ name="Dampening Tam", augments={'DEX+10','Accuracy+15','Mag. Acc.+15','Quadruple Attack +3',}},
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet={ name="Herculean Boots", augments={'Accuracy+25','"Triple Atk."+4','STR+6','Attack+8',}},
    neck="Lissome necklace",
    waist="Windbuffet Belt +1",
    left_ear="Sherida Earring",
    right_ear="Brutal Earring",
    left_ring="Haverton Ring +1",
    right_ring="Epona's Ring",
    back={ name="Belenus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}
                                                       
                                                       
    sets.TP.AccuracyLite = { 
    ammo="Chrono Bullet",
    head={ name="Dampening Tam", augments={'DEX+10','Accuracy+15','Mag. Acc.+15','Quadruple Attack +3',}},
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet={ name="Herculean Boots", augments={'Accuracy+25','"Triple Atk."+4','STR+6','Attack+8',}},
    neck="Lissome necklace",
    waist="Windbuffet Belt +1",
    left_ear="Sherida Earring",
    right_ear="Brutal Earring",
    left_ring="Haverton Ring +1",
    right_ring="Chirich Ring",
    back={ name="Belenus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}
       
    sets.TP.AccuracyFull = {
    ammo="Chrono Bullet",
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Meg. Jam. +2",
    neck="Maskirova Torque",
    waist="Olseni Belt",
    left_ear="Digni. Earring",
    right_ear="Telos Earring",
    left_ring="Cacoethic Ring +1",
    right_ring="Cacoethic Ring",
    back={ name="Belenus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}
                                                       
    sets.TP.DT = { 
    ammo="Chrono Bullet",
    head="Meghanada Visor +2",
    body="Meg. Cuirie +2",
    hands="Meg. Gloves +2",
    legs="Mummu Kecks +2",
    feet={ name="Herculean Boots", augments={'Weapon skill damage +3%','Magic dmg. taken -2%','Damage taken-5%','Accuracy+16 Attack+16','Mag. Acc.+17 "Mag.Atk.Bns."+17',}},
    neck="Loricate Torque +1",
    waist="Flume Belt +1",
    left_ear="Odnowa Earring +1",
    right_ear="Etiolation Earring",
    left_ring="Defending Ring",
	right_ring="Patricius Ring",
    back="Moonbeam Cape",
}
                                 
    sets.TP.DTAccuracy = { 
    ammo="Chrono Bullet",
    head="Meghanada Visor +2",
    body="Meg. Cuirie +2",
    hands="Meg. Gloves +2",
    legs="Mummu Kecks +2",
    feet={ name="Herculean Boots", augments={'Weapon skill damage +3%','Magic dmg. taken -2%','Damage taken-5%','Accuracy+16 Attack+16','Mag. Acc.+17 "Mag.Atk.Bns."+17',}},
    neck="Maskirova Torque",
    waist="Flume Belt +1",
    left_ear="Digni. Earring",
    right_ear="Telos Earring",
    left_ring="Defending Ring",
    right_ring="Patricius Ring",
    back="Moonbeam Cape",
}
                                                         
	sets.TP.CP = { 
    ammo="Chrono Bullet",
    head={ name="Dampening Tam", augments={'DEX+10','Accuracy+15','Mag. Acc.+15','Quadruple Attack +3',}},
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet={ name="Herculean Boots", augments={'Accuracy+25','"Triple Atk."+4','STR+6','Attack+8',}},
    neck="Lissome necklace",
    waist="Kentarch Belt +1",
    left_ear="Sherida Earring",
    right_ear="Telos Earring",
    left_ring="Haverton Ring +1",
    right_ring="Epona's Ring",
    back={ name="Mecisto. Mantle", augments={'Cap. Point+49%','HP+17','Rng.Acc.+2','DEF+6',}},
}

									
    --Weaponskill Sets--
    sets.WS = {}
       
									  
	sets.Evisceration = {}
       
    sets.Evisceration.index = {'Attack'}
    SavageBlade_ind = 1
       
    sets.Evisceration.Attack = {                 
	ammo="Chrono Bullet",
    head="Meghanada Visor +2",
    body="Abnoba Kaftan",
    hands="Meg. Gloves +2",
    legs={ name="Herculean Trousers", augments={'Accuracy+29','Crit.hit rate+3','MND+3','Attack+7',}},
    feet={ name="Herculean Boots", augments={'Accuracy+18 Attack+18','Crit.hit rate+4','DEX+5','Accuracy+9',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    right_ear="Ishvara Earring",
    left_ring="Regal Ring",
    right_ring="Ilabrat Ring",
    back={ name="Belenus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}
                                                           
                                                                                                                       
    sets.AeolianEdge = {}
       
	sets.AeolianEdge.index = {'Attack'}
    AeolianEdge_ind = 1
    
	sets.AeolianEdge = {                 
	ammo="Chrono Bullet",
    head={ name="Herculean Helm", augments={'"Mag.Atk.Bns."+29','Accuracy+5 Attack+5','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
    body={ name="Carm. Sc. Mail +1", augments={'Attack+20','"Mag.Atk.Bns."+12','"Dbl.Atk."+4',}},
    hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
    legs={ name="Herculean Trousers", augments={'"Mag.Atk.Bns."+20','CHR+10','Mag. Acc.+19 "Mag.Atk.Bns."+19',}},
    feet={ name="Herculean Boots", augments={'Weapon skill damage +3%','Magic dmg. taken -2%','Damage taken-5%','Accuracy+16 Attack+16','Mag. Acc.+17 "Mag.Atk.Bns."+17',}},
    neck="Baetyl Pendant",
    waist="Eschan Stone",
    left_ear="Friomisi Earring",
    right_ear="Ishvara Earring",
    left_ring="Shiva Ring +1",
    right_ring="Dingir Ring",
    back={ name="Belenus's Cape", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','Weapon skill damage +10%',}},
}
               
	sets.Trueflight = {}
       
    sets.Trueflight.index = {'Attack'}
    Trueflight_ind = 1
         
	sets.Trueflight ={    
    ammo="Chrono Bullet",
    head={ name="Herculean Helm", augments={'"Mag.Atk.Bns."+29','Accuracy+5 Attack+5','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
    body={ name="Carm. Sc. Mail +1", augments={'Attack+20','"Mag.Atk.Bns."+12','"Dbl.Atk."+4',}},
    hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
    legs={ name="Herculean Trousers", augments={'"Mag.Atk.Bns."+20','CHR+10','Mag. Acc.+19 "Mag.Atk.Bns."+19',}},
    feet={ name="Herculean Boots", augments={'Weapon skill damage +3%','Magic dmg. taken -2%','Damage taken-5%','Accuracy+16 Attack+16','Mag. Acc.+17 "Mag.Atk.Bns."+17',}},
    neck="Baetyl Pendant",
    waist="Eschan Stone",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    right_ear="Friomisi Earring",
    left_ring="Regal Ring",
    right_ring="Dingir Ring",
    back={ name="Belenus's Cape", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
}

							
	sets.WildFire = {}
       
    sets.WildFire.index = {'Attack'}
    WildFire_ind = 1					
			
	sets.WildFire = {
	ammo="Chrono Bullet",
    head={ name="Herculean Helm", augments={'"Mag.Atk.Bns."+29','Accuracy+5 Attack+5','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
    body={ name="Carm. Sc. Mail +1", augments={'Attack+20','"Mag.Atk.Bns."+12','"Dbl.Atk."+4',}},
    hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
    legs={ name="Herculean Trousers", augments={'"Mag.Atk.Bns."+20','CHR+10','Mag. Acc.+19 "Mag.Atk.Bns."+19',}},
    feet={ name="Herculean Boots", augments={'Weapon skill damage +3%','Magic dmg. taken -2%','Damage taken-5%','Accuracy+16 Attack+16','Mag. Acc.+17 "Mag.Atk.Bns."+17',}},
    neck="Baetyl Pendant",
    waist="Eschan Stone",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    right_ear="Ishvara Earring",
    left_ring="Shiva Ring +1",
    right_ring="Dingir Ring",
    back={ name="Belenus's Cape", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
}
		
		
	sets.LastStand = {}
       
    sets.LastStand.index = {'Attack'}
    LastStand_ind = 1					
			
	sets.LastStand = {
	ammo="Chrono Bullet",
    head="Orion Beret +3",
    body="Orion Jerkin +3",
    hands="Meg. Gloves +2",
    legs={ name="Arc. Braccae +3", augments={'Enhances "Eagle Eye Shot" effect',}},
    feet={ name="Arcadian Socks +3", augments={'Enhances "Stealth Shot" effect',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    right_ear="Telos Earring",
    left_ring="Regal Ring",
    right_ring="Dingir Ring",
    back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%',}},
}

sets.SlugShot = {}
       
    sets.SlugShot.index = {'Attack'}
    SlugShot_ind = 1					
			
	sets.SlugShot = {
	ammo="Chrono Bullet",
    head="Orion Beret +3",
    body="Meg. Cuirie +2",
    hands="Meg. Gloves +2",
    legs={ name="Arc. Braccae +3", augments={'Enhances "Eagle Eye Shot" effect',}},
    feet={ name="Arcadian Socks +3", augments={'Enhances "Stealth Shot" effect',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    right_ear="Telos Earring",
    left_ring="Regal Ring",
    right_ring="Dingir Ring",
    back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%',}},
}
										  
	--Ranged Attack ---
	sets.Ranged = {}
	sets.Ranged.index = {'Standard', 'AccuracyLite', 'AccuracyFull', 'Fodder', 'Crit'}
    --1=Standard, 2 = AccuracyLite, 3=AccuracyFull, 4=Fodder, 5=Crit--
	Ranged_ind = 1

	sets.Ranged.Standard =  { 
	ammo="Chrono Bullet",
    head={ name="Arcadian Beret +3", augments={'Enhances "Recycle" effect',}},
    body="Orion Jerkin +3",
    hands={ name="Adhemar Wrist. +1", augments={'AGI+12','Rng.Acc.+20','Rng.Atk.+20',}},
    legs={ name="Adhemar Kecks +1", augments={'AGI+12','Rng.Acc.+20','Rng.Atk.+20',}},
    feet={ name="Arcadian Socks +3", augments={'Enhances "Stealth Shot" effect',}},
    neck="Iskur Gorget",
    waist="Kwahu Kachina Belt",
    left_ear="Enervating Earring",
    right_ear="Telos Earring",
    left_ring="Ilabrat Ring",
    right_ring="Chirich Ring",
    back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Rng.Acc.+10','"Store TP"+10',}},
}

sets.Ranged.AccuracyLite =  { 
	ammo="Chrono Bullet",
    head={ name="Arcadian Beret +3", augments={'Enhances "Recycle" effect',}},
    body="Orion Jerkin +3",
    hands={ name="Adhemar Wrist. +1", augments={'AGI+12','Rng.Acc.+20','Rng.Atk.+20',}},
    legs={ name="Adhemar Kecks +1", augments={'AGI+12','Rng.Acc.+20','Rng.Atk.+20',}},
    feet={ name="Arcadian Socks +3", augments={'Enhances "Stealth Shot" effect',}},
    neck="Iskur Gorget",
    waist="Kwahu Kachina Belt",
    left_ear="Enervating Earring",
    right_ear="Telos Earring",
    left_ring="Regal Ring",
    right_ring="Ilabrat Ring",
    back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Rng.Acc.+10','"Store TP"+10',}},
}

sets.Ranged.AccuracyFull =  { 
	ammo="Chrono Bullet",
    head="Orion Beret +3",
    body="Orion Jerkin +3",
    hands={ name="Adhemar Wrist. +1", augments={'AGI+12','Rng.Acc.+20','Rng.Atk.+20',}},
    legs={ name="Adhemar Kecks +1", augments={'AGI+12','Rng.Acc.+20','Rng.Atk.+20',}},
    feet="Meg. Jam. +2",
    neck="Iskur Gorget",
    waist="Kwahu Kachina Belt",
    left_ear="Enervating Earring",
    right_ear="Telos Earring",
    left_ring="Regal Ring",
    right_ring="Cacoethic Ring +1",
    back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Rng.Acc.+10','"Store TP"+10',}},
}

sets.Ranged.Fodder =  { 
	ammo="Chrono Bullet",
    head={ name="Arcadian Beret +3", augments={'Enhances "Recycle" effect',}},
    body="Orion Jerkin +3",
    hands={ name="Adhemar Wrist. +1", augments={'AGI+12','Rng.Acc.+20','Rng.Atk.+20',}},
    legs={ name="Adhemar Kecks +1", augments={'AGI+12','Rng.Acc.+20','Rng.Atk.+20',}},
    feet={ name="Arcadian Socks +3", augments={'Enhances "Stealth Shot" effect',}},
    neck="Iskur Gorget",
    waist="Yemaya Belt",
    left_ear="Enervating Earring",
    right_ear="Telos Earring",
    left_ring="Ilabrat Ring",
    right_ring="Chirich Ring",
    back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Rng.Acc.+10','"Store TP"+10',}},
}

sets.Ranged.Crit =  { 
	ammo="Chrono Bullet",
    head="Meghanada Visor +2",
    body="Mummu Jacket +2",
	hands="Mummu Wrists +1",
	legs="Darraigner's Brais",
	feet={ name="Arcadian Socks +3", augments={'Enhances "Stealth Shot" effect',}},
    neck="Iskur Gorget",
    waist="Kwahu Kachina Belt",
    left_ear="Enervating Earring",
    right_ear="Telos Earring",
    left_ring="Haverton Ring +1",
    right_ring="Mummu Ring",
    back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Crit.hit rate+10',}},
}
		
    --Utility Sets--
    sets.Utility = {}
       
    sets.Utility.Weather = {waist="Hachirin-no-obi"}
 
    sets.Utility.MB = {head="Helios Band",body="Samnuha coat",ear1="Static Earring",ring1="Locus Ring",ring2="Mujin Band"}
 
       
    sets.Utility.Stoneskin = {head="Haruspex hat",neck="Stone Gorget",ear1="Loquac. earring",ear2="Earthcry earring",
                                                          body="Assim. jubbah +1",hands="Stone Mufflers",ring1="Rahab ring",
                                                          back="Swith cape",waist="Siegel sash",legs="Haven hose",feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}} }
                                                         
    sets.Utility.Phalanx = {head="Haruspex hat",neck="Colossus's torque",ear1="Loquac. earring",ear2="Augment. earring",
                                                    body="Assim. jubbah +1",hands="Ayao's gages",ring1="Rahab ring",
                                                        back="Swith cape",waist="Pythia sash +1",legs="Portent pants",feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}} }
                                                       
    sets.Utility.Steps = {
	ammo="Chrono Bullet",
    head="Meghanada Visor +2",
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Meg. Jam. +2",
    neck="Maskirova Torque",
    waist="Eschan Stone",
    left_ear="Digni. Earring",
    right_ear="Telos Earring",
    left_ring="Cacoethic Ring +1",
    right_ring="Cacoethic Ring",
    back={ name="Belenus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}
                                                 
	sets.Utility.Sleeping = {neck="Opo-Opo Necklace"}
  
                                             

    --Precast Sets--
    sets.precast = {}
	
	--Job Ability Sets--
    sets.precast.JA = {}
    sets.precast.JA['Bounty Shot'] = {                  hands="Amini glovelettes +1"}
    sets.precast.JA['Unlimited Shot'] = {               feet="Amini bottillons +1"}
    sets.precast.JA['Camouflage'] = {                   body="Orion Jerkin +3"}
    sets.precast.JA['Shadowbind'] = {                   hands="Orion Bracers +3"}
    sets.precast.JA['Sharpshot'] = {                    legs="Orion Braccae +1"}
    sets.precast.JA['Scavenge'] = {                     feet="Orion Socks +1"}
    sets.precast.JA['Barrage'] = {                      hands="Orion Bracers +3"}  
	
	sets.precast.JA['Eagle-Sye Shot'] = { 
	ammo="Chrono Bullet",
    head="Meghanada Visor +2",
    body="Mummu Jacket +2",
	hands="Mummu Wrists +1",
	legs={ name="Arc. Braccae +3", augments={'Enhances "Eagle Eye Shot" effect',}},
	feet="Mummu Gamash. +1",
    neck="Iskur Gorget",
    waist="Kwahu Kachina Belt",
    left_ear="Enervating Earring",
    right_ear="Telos Earring",
    left_ring="Haverton Ring +1",
    right_ring="Begrudging Ring",
    back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Crit.hit rate+10',}},
	}
       
    sets.precast.FC = {}
       
    sets.precast.FC.Standard = {  
	ammo="Chrono Bullet",
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
    body={ name="Taeon Tabard", augments={'"Fast Cast"+5','"Snapshot"+5',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
    legs={ name="Rawhide Trousers", augments={'MP+50','"Fast Cast"+5','"Refresh"+1',}},
    feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
    neck="Orunmila's Torque",
    waist="Kentarch Belt +1",
    left_ear="Enchntr. Earring +1",
    right_ear="Etiolation Earring",
    left_ring="Rahab Ring",
    right_ring="Prolix Ring",
    back={ name="Belenus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}

sets.precast.Waltz = {
	head="Mummu Bonnet +2",
    body="Orion Jerkin +3",
    hands="Meg. Gloves +2",
    legs={ name="Herculean Trousers", augments={'Rng.Atk.+8','"Waltz" potency +9%','Attack+5',}},
    feet={ name="Rawhide Boots", augments={'HP+50','Accuracy+15','Evasion+20',}},
    neck="Unmoving Collar +1",
    waist="Aristo Belt",
    left_ear="Enchntr. Earring +1",
    right_ear="Handler's Earring +1",
    left_ring="Asklepian Ring",
    right_ring="Valseur's Ring",
    back="Aisance Mantle",
}

	sets.precast.RA = {}
	
	sets.precast.RA.Standard = {
	ammo="Chrono Bullet",
    head={ name="Taeon Chapeau", augments={'"Snapshot"+4','"Snapshot"+5',}},
    body="Amini Caban +1",
    hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
    legs={ name="Adhemar Kecks", augments={'AGI+10','"Rapid Shot"+10','Enmity-5',}},
    feet="Meg. Jam. +2",
    neck="Iskur Gorget",
    waist="Impulse Belt",
    left_ear="Enervating Earring",
    right_ear="Telos Earring",
    left_ring="Haverton Ring +1",
    right_ring="Dingir Ring",
    back={ name="Belenus's Cape", augments={'"Snapshot"+10',}},
}
		
	--Ninja Magic Sets--
    sets.NINMagic = {}
       
								
	sets.NINMagic.Utsusemi ={
    ammo="Chrono Bullet",
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
    body={ name="Samnuha Coat", augments={'Mag. Acc.+11','"Mag.Atk.Bns."+10','"Fast Cast"+3',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
    legs={ name="Rawhide Trousers", augments={'MP+50','"Fast Cast"+5','"Refresh"+1',}},
    feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
    neck="Magoraga Beads",
    waist="Kentarch Belt +1",
    left_ear="Enchntr. Earring +1",
    right_ear="Etiolation Earring",
    left_ring="Rahab Ring",
    right_ring="Prolix Ring",
    back={ name="Belenus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}  
   

end

function precast(spell)
        if spell.action_type == 'Magic' then
                equip(sets.precast.FC.Standard)
         end
       if spell.action_type == 'Ranged Attack' then
			equip(sets.precast.RA.Standard)
			send_command('@input /echo Ranged Precast Set')	
			if buffactive['Double Shot'] then
				equip{sets.precast.RA.Standard}
				equip({head="Oshosi Mask", body={ name="Arc. Jerkin +3", augments={'Enhances "Snapshot" effect',}}, hands="Oshosi Gloves", legs="Oshosi Trousers",})
				send_command('@input /echo Double Pre Set')
            end
		end
		
		if spell.english == 'Evisceration' then
                equip(sets.Evisceration[sets.Evisceration.index[Evisceration_ind]])
        end
        if spell.english == 'Aeolian Edge' then
                equip(sets.AeolianEdge)
        end	
		if spell.english == 'Trueflight' then
			equip(sets.Trueflight)
			send_command('@input /echo Trueflight Set')
			 if spell.element == world.day_element or spell.element == world.weather_element then
                              equip(sets.Utility.Weather)
                        end
		end
		
		if spell.english == 'Wildfire' then
			equip(sets.WildFire)
			send_command('@input /echo WildFire Set')
			 if spell.element == world.day_element or spell.element == world.weather_element then
                              equip(sets.Utility.Weather)
                        end
		end
		
		if spell.english == 'Last Stand' then	
			equip(sets.LastStand)
			send_command('@input /echo Last Stand Set')
		end
		
		if spell.english == 'Slug Shot' then	
			equip(sets.SlugShot)
			send_command('@input /echo Slug Shot Set')
		end
		 
        if spell.english == 'Box Step'  or spell.english =='Quick Step' then
                equip(sets.Utility.Steps)
        end
       
	   if spell.english == 'Curing Waltz III'  or spell.english =='Curing Waltz II' then
                equip(sets.precast.Waltz)
        end
	   
	   if spell.english == "Bounty Shot" then 
	         equip(sets.precast.JA['Bounty Shot'])
	   end
       if spell.english == "Unlimited Shot" then 
              equip(sets.precast.JA['Unlimited Shot'])
       end
	   if spell.english == "Double Shot" then 
              equip(sets.precast.JA['Unlimited Shot'])
       end
	   if spell.english == "Camouflage" then 
              equip(sets.precast.JA['Camouflage'])
       end
	   if spell.english == "Shadowbind" then 
              equip(sets.precast.JA['Shadowbind'])
       end
	   if spell.english == "Sharpshot" then 
              equip(sets.precast.JA['Sharpshot'])
       end
	   if spell.english == "Scavenge" then 
              equip(sets.precast.JA['Scavenge'])
       end
	   if spell.english == "Barrage" then 
              equip(sets.precast.JA['Barrage'])
       end
	   if spell.english == "Eagle-Eye Shot" then	
			  equip(sets.precast.JA['Eagle-Sye Shot'])
		end
end


function midcast(spell,act)
	   if spell.action_type == 'Ranged Attack' then
				equip(sets.Ranged[sets.Ranged.index[Ranged_ind]])
				send_command('@input /echo Ranged Attack Set')
				if buffactive['Barrage'] then
					equip (sets.Ranged.AccuracyFull)
					send_command('@input /echo Barrage Set')
					end
				if buffactive['Double Shot'] then
					equip(sets.Ranged[sets.Ranged.index[Ranged_ind]])
					equip({head="Oshosi Mask", body={ name="Arc. Jerkin +3", augments={'Enhances "Snapshot" effect',}}, hands="Oshosi Gloves", legs="Oshosi Trousers",})
				send_command('@input /echo Double Mid Set')
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
				send_command('@input /echo TP Set')
				
        else
                equip(sets.Idle[sets.Idle.index[Idle_ind]])
				send_command('@input /echo Idle Set')
        end
		if buffactive['doom'] then
					equip(sets.Utility.Doom)
		end
		if buffactive['terror'] or buffactive['stun'] or buffactive['sleep']	then 
					equip(sets.TP.DT)
		end

       
        if spell.action_type == 'Weaponskill' then
                add_to_chat(158,'TP Return: ['..tostring(player.tp)..']')
        end
end
 
function status_change(new,old)
        if new == 'Engaged' then
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
		elseif command == 'toggle Ranged set' then
                Ranged_ind = Ranged_ind +1
                if Ranged_ind > #sets.Ranged.index then Ranged_ind = 1 end
                send_command('@input /echo <----- Ranged Set changed to '..sets.Ranged.index[Ranged_ind]..' ----->')
                equip(sets.Ranged[sets.Ranged.index[Ranged_ind]])
        elseif command == 'toggle Req set' then
                Requiescat_ind = Requiescat_ind +1
                if Requiescat_ind > #sets.Requiescat.index then Requiescat_ind = 1 end
                send_command('@input /echo <----- Requiescat Set changed to '..sets.Requiescat.index[Requiescat_ind]..' ----->')
        elseif command == 'toggle CDC set' then
                ChantDuCygne_ind = ChantDuCygne_ind +1
                if ChantDuCygne_ind > #sets.ChantDuCygne.index then ChantDuCygne_ind = 1 end
                send_command('@input /echo <----- Chant du Cygne Set changed to '..sets.ChantDuCygne.index[ChantDuCygne_ind]..' ----->')
        elseif command == 'toggle Rea set' then
                Realmrazer_ind = Realmrazer_ind +1
                if Realmrazer_ind > #sets.Realmrazer.index then Realmrazer_ind = 1 end
                send_command('@input /echo <----- Realmrazer Set changed to '..sets.Realmrazer.index[Realmrazer_ind]..' ----->')
        elseif command == 'toggle MB set' then
                Burst_ind = Burst_ind +1
                if Burst_ind > #sets.Burst.index then Burst_ind = 1 end
                send_command('@input /echo [MB Set changed to '..sets.Burst.index[Burst_ind]..']')
        elseif command == 'equip TP set' then
                equip(sets.TP[sets.TP.index[TP_ind]])
        elseif command == 'equip Idle set' then
                equip(sets.Idle[sets.Idle.index[Idle_ind]])
        end
end

function select_default_macro_book()
    set_macro_page(1, 7)
end