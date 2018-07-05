function get_sets()



	--binds--

send_command('bind !f2 gs equip sets.CP; gs disable back; input /echo <----- CP mantle locked ----->') -- Alt F2 locks CP mantle

send_command('bind ^f2 gs enable back; input /echo <----- CP mantle unlocked ----->') -- Ctrl F2 unlocks CP mantle



send_command('bind !f10 gs c toggle Haste set;')  -- Alt F10 swap DW for different Haste level 0 to 15 to 25

send_command('bind !f8 gs c toggle Melee Weapon set;')  -- Alt F9 swap melee weapon from Melee to Physical range to Magical range

send_command('bind !f9 gs c toggle TP set;') -- Alt F8 swap TP Sets

send_command('bind !f7 gs c toggle pdt set;') -- Alt F7 swap to DT 

send_command('bind !f6 gs c status check;') -- Alt F6 return sets status

send_command('bind !f11 gs c toggle idle set;')  -- Alt F11 swap Idle sets





	--SubJob list--

sets.Haste = {}

sets.Haste.index = {'Low','Mid','High'}

Haste_ind = 1



	--Weapon Sets--

sets.Weapon_melee = {}

sets.Weapon_melee.index = {'Melee','Prange','Mrange'}

Wm_ind = 1

sets.Weapon_melee.Melee = {

}

sets.Weapon_melee.Prange = {



}

sets.Weapon_melee.Mrange = {



}


function weathercheck(spell_element)
if spell_element == world.weather_element or spell_element == world.day_element then
equip({waist="Hachirin-no-Obi"})
send_command('@input /echo Using Element Obi')
else	
end
end

	--Idle Sets--	

sets.Idle = {}

sets.Idle.index = {'Standard','DT'}

Idle_ind = 1

sets.Idle.Standard = {

	head="Dampening Tam",
    body="Hiza. Haramaki +2",
    hands="Kurys Gloves",
    legs="Mummu Kecks +2",
    feet="Hachi. Kyahan +1", 
	neck="Sanctity necklace",
    waist="Flume Belt +1",
    left_ear="Odnowa Earring +1", 
	right_ear="Etiolation Earring",   
    right_ring="Fortified Ring",
    left_ring="Defending Ring",
    back="Moonbeam Cape",

}

sets.Idle.DT = {
	head="Dampening Tam",
    body="Hiza. Haramaki +2",
    hands={ name="Floral Gauntlets", augments={'Rng.Acc.+15','Accuracy+15','"Triple Atk."+3','Magic dmg. taken -4%',}},
    legs="Mummu Kecks +2",
    feet={ name="Herculean Boots", augments={'Weapon skill damage +3%','Magic dmg. taken -2%','Damage taken-5%','Accuracy+16 Attack+16','Mag. Acc.+17 "Mag.Atk.Bns."+17',}}, --7
    neck="Loricate torque +1",
    waist="Flume Belt +1",
	left_ear="Odnowa Earring +1", 
	right_ear="Etiolation Earring",   
    right_ring="Fortified Ring",
    left_ring="Defending Ring",
    back="Moonbeam Cape",
}



	--CP mantle set--

sets.CP = {

    back="Mecisto. Mantle"   

}



	--TP Sets--

sets.TP = {}

sets.TP.index = {'Standard', 'MidAccuracy', 'HighAccuracy', 'Hybrid'}

TP_ind = 1



sets.TP.Standard = {}

sets.TP.Standard.index = {'Low','Mid','High'}

sets.TP.Standard.Low = {
	head="Dampening Tam",
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet={ name="Herculean Boots", augments={'Accuracy+25','"Triple Atk."+4','STR+6','Attack+8',}},
    neck="Moonbeam Nodowa",
    waist="Windbuffet Belt +1",
    left_ear="Suppanomimi",
    right_ear="Brutal Earring",
    left_ring="Haverton Ring +1",
    right_ring="Epona's Ring",
    back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},
}

sets.TP.Standard.Mid = {
	head="Dampening Tam",
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet={ name="Herculean Boots", augments={'Accuracy+25','"Triple Atk."+4','STR+6','Attack+8',}},
    neck="Moonbeam Nodowa",
    waist="Windbuffet Belt +1",
    left_ear="Cessance Earring",
    right_ear="Brutal Earring",
    left_ring="Ilabrat Ring",
    right_ring="Epona's Ring",
    back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},
}

sets.TP.Standard.High = {
	head="Dampening Tam",
    body="Ken. Samue",
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet={ name="Herculean Boots", augments={'Accuracy+25','"Triple Atk."+4','STR+6','Attack+8',}},
    neck="Moonbeam Nodowa",
    waist="Windbuffet Belt +1",
    left_ear="Cessance Earring",
    right_ear="Brutal Earring",
    left_ring="Ilabrat Ring",
    right_ring="Epona's Ring",
    back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},
}



sets.TP.MidAccuracy = {}

sets.TP.MidAccuracy.index = {'Low','Mid','High'}

sets.TP.MidAccuracy.Low = {
	head="Dampening Tam",
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet="Hiza. Sune-Ate +2",
    neck="Moonbeam Nodowa",
    waist="Kentarch Belt +1",
    left_ear="Suppanomimi",
    right_ear="Brutal Earring",
    left_ring="Haverton Ring +1",
    right_ring="Epona's Ring",
    back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},
}

sets.TP.MidAccuracy.Mid = {
	head="Dampening Tam",
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet="Hiza. Sune-Ate +2",
    neck="Moonbeam Nodowa",
    waist="Kentarch Belt +1",
    left_ear="Cessance Earring",
    right_ear="Brutal Earring",
    left_ring="Chirich Ring",
    right_ring="Epona's Ring",
    back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},
}

sets.TP.MidAccuracy.High = {
	head="Dampening Tam",
    body="Ken. Samue",
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet={ name="Herculean Boots", augments={'Accuracy+25','"Triple Atk."+4','STR+6','Attack+8',}},
    neck="Moonbeam Nodowa",
    waist="Kentarch Belt +1",
    left_ear="Cessance Earring",
    right_ear="Brutal Earring",
    left_ring="Chirich Ring",
    right_ring="Epona's Ring",
    back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},
}



sets.TP.HighAccuracy = {}

sets.TP.HighAccuracy.index = {'Low','Mid','High'}

sets.TP.HighAccuracy.Low = {
	head="Dampening Tam",
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs="Ken. Hakama",
    feet="Hiza. Sune-Ate +2",
    neck="Moonbeam Nodowa",
    waist="Olseni Belt",
    left_ear="Digni. Earring",
    right_ear="Telos Earring",
    left_ring="Cacoethic Ring",
    right_ring="Cacoethic Ring +1",
    back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},
}

sets.TP.HighAccuracy.Mid = {	
	head="Dampening Tam",
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs="Ken. Hakama",
    feet="Hiza. Sune-Ate +2",
    neck="Moonbeam Nodowa",
    waist="Olseni Belt",
    left_ear="Digni. Earring",
    right_ear="Telos Earring",
    left_ring="Cacoethic Ring",
    right_ring="Cacoethic Ring +1",
    back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},
}

sets.TP.HighAccuracy.High = {
	head="Dampening Tam",
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs="Ken. Hakama",
    feet="Hiza. Sune-Ate +2",
    neck="Moonbeam Nodowa",
    waist="Olseni Belt",
    left_ear="Digni. Earring",
    right_ear="Telos Earring",
    left_ring="Cacoethic Ring",
    right_ring="Cacoethic Ring +1",
    back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},
}



sets.TP.Hybrid = {}

sets.TP.Hybrid.index = {'Low','Mid','High'}

sets.TP.Hybrid.Low = {
	head={ name="Ryuo Somen", augments={'HP+50','"Store TP"+4','"Subtle Blow"+7',}},
    body="Hiza. Haramaki +2",
    hands={ name="Floral Gauntlets", augments={'Rng.Acc.+15','Accuracy+15','"Triple Atk."+3','Magic dmg. taken -4%',}},
    legs="Mummu Kecks +2",
    feet={ name="Herculean Boots", augments={'Weapon skill damage +3%','Magic dmg. taken -2%','Damage taken-5%','Accuracy+16 Attack+16','Mag. Acc.+17 "Mag.Atk.Bns."+17',}},
    neck="Loricate Torque +1",
    waist="Flume Belt +1",
    left_ear="Suppanomimi",
    right_ear="Odnowa Earring +1",
    left_ring="Defending Ring",
    right_ring="Epona's Ring",
    back="Moonbeam Cape",
	}

sets.TP.Hybrid.Mid = {
	head={ name="Ryuo Somen", augments={'HP+50','"Store TP"+4','"Subtle Blow"+7',}},
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Floral Gauntlets", augments={'Rng.Acc.+15','Accuracy+15','"Triple Atk."+3','Magic dmg. taken -4%',}},
    legs="Mummu Kecks +2",
    feet={ name="Herculean Boots", augments={'Weapon skill damage +3%','Magic dmg. taken -2%','Damage taken-5%','Accuracy+16 Attack+16','Mag. Acc.+17 "Mag.Atk.Bns."+17',}},
    neck="Loricate Torque +1",
    waist="Flume Belt +1",
    left_ear="Genmei Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Defending Ring",
    right_ring="Epona's Ring",
    back="Moonbeam Cape",
	}

sets.TP.Hybrid.High = {
	head="Dampening Tam",
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Floral Gauntlets", augments={'Rng.Acc.+15','Accuracy+15','"Triple Atk."+3','Magic dmg. taken -4%',}},
    legs="Mummu Kecks +2",
    feet={ name="Herculean Boots", augments={'Weapon skill damage +3%','Magic dmg. taken -2%','Damage taken-5%','Accuracy+16 Attack+16','Mag. Acc.+17 "Mag.Atk.Bns."+17',}},
    neck="Loricate Torque +1",
    waist="Flume Belt +1",
    left_ear="Genmei Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Defending Ring",
    right_ring="Epona's Ring",
    back="Moonbeam Cape",
	}

	--Defence Sets--

set.PDT = {
	head="Dampening Tam",
    body="Ken. Samue",
    hands="Kurys Gloves",
    legs="Mummu Kecks +2",
    feet={ name="Herculean Boots", augments={'Weapon skill damage +3%','Magic dmg. taken -2%','Damage taken-5%','Accuracy+16 Attack+16','Mag. Acc.+17 "Mag.Atk.Bns."+17',}},
    neck="Loricate Torque +1",
    waist="Flume Belt +1",
    left_ear="Genmei Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Defending Ring",
    right_ring="Fortified Ring",
    back="Moonbeam Cape",
	}

set.MDT = {
	head="Dampening Tam",
    body="Hiza. Haramaki +2",
    hands="Kurys Gloves",
    legs="Mummu Kecks +2",
    feet={ name="Herculean Boots", augments={'Weapon skill damage +3%','Magic dmg. taken -2%','Damage taken-5%','Accuracy+16 Attack+16','Mag. Acc.+17 "Mag.Atk.Bns."+17',}},
    neck="Loricate Torque +1",
    waist="Flume Belt +1",
    left_ear="Etiolation Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Defending Ring",
    right_ring="Fortified Ring",
    back="Moonbeam Cape",
	}

	--Weaponskill Sets--

sets.WS = {}

sets.WS.index = {'Attack','Accuracy'}

WS_ind = 1



sets.MultiHit = {}

sets.MultiHit.Attack = { 
	head={ name="Dampening Tam", augments={'DEX+10','Accuracy+15','Mag. Acc.+15','Quadruple Attack +3',}},
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet={ name="Herculean Boots", augments={'Accuracy+25','"Triple Atk."+4','STR+6','Attack+8',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
	right_ear="Brutal Earring",
    left_ring="Regal Ring",
    right_ring="Epona's Ring",
    back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},
}   

sets.MultiHit.Accuracy = {
	head="Ken. Jinpachi",
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs="Ken. Hakama",
    feet={ name="Herculean Boots", augments={'Accuracy+25','"Triple Atk."+4','STR+6','Attack+8',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Cessance Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    left_ring="Regal Ring",
    right_ring="Epona's Ring",
    back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},
}   



sets.OneHit = {}

sets.OneHit.Attack ={
	head={ name="Herculean Helm", augments={'Accuracy+13','VIT+2','Weapon skill damage +8%','Accuracy+10 Attack+10',}},
    body={ name="Herculean Vest", augments={'Accuracy+17 Attack+17','Weapon skill damage +2%','STR+9',}},
    hands={ name="Ryuo Tekko", augments={'DEX+10','Accuracy+20','"Dbl.Atk."+3',}},
    legs="Hiza. Hizayoroi +2",
    feet={ name="Herculean Boots", augments={'Accuracy+24 Attack+24','Weapon skill damage +3%','STR+4','Accuracy+9','Attack+3',}},
    neck="Caro Necklace",
    waist="Grunfeld Rope",
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    left_ring="Ilabrat Ring",
    right_ring="Regal Ring",
    back={ name="Andartia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
}

sets.OneHit.Accuracy ={
	head={ name="Herculean Helm", augments={'Accuracy+13','VIT+2','Weapon skill damage +8%','Accuracy+10 Attack+10',}},
    body={ name="Herculean Vest", augments={'Accuracy+17 Attack+17','Weapon skill damage +2%','STR+9',}},
    hands={ name="Ryuo Tekko", augments={'DEX+10','Accuracy+20','"Dbl.Atk."+3',}},
    legs="Hiza. Hizayoroi +2",
    feet={ name="Herculean Boots", augments={'Accuracy+24 Attack+24','Weapon skill damage +3%','STR+4','Accuracy+9','Attack+3',}},
    neck="Caro Necklace",
    waist="Grunfeld Rope",
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    left_ring="Ilabrat Ring",
    right_ring="Regal Ring",
    back={ name="Andartia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
}

sets.Crit = {}

sets.Crit.Attack ={
	head="Mummu Bonnet +2",
    body="Mummu Jacket +2",
    hands={ name="Ryuo Tekko", augments={'DEX+10','Accuracy+20','"Dbl.Atk."+3',}},
    legs="Mummu Kecks +2",
    feet="Mummu Gamash. +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    left_ring="Regal Ring",
    right_ring="Mummu Ring",
    back={ name="Andartia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
}

sets.Crit.Accuracy ={
	head="Mummu Bonnet +2",
    body="Mummu Jacket +2",
    hands={ name="Ryuo Tekko", augments={'DEX+10','Accuracy+20','"Dbl.Atk."+3',}},
    legs="Mummu Kecks +2",
    feet="Mummu Gamash. +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    left_ring="Regal Ring",
    right_ring="Mummu Ring",
    back={ name="Andartia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
}


sets.Hyb = {}

sets.Hyb.Attack ={
	head={ name="Herculean Helm", augments={'"Mag.Atk.Bns."+29','Accuracy+5 Attack+5','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
    body={ name="Samnuha Coat", augments={'Mag. Acc.+12','"Mag.Atk.Bns."+12','"Dual Wield"+3',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
    legs="Hiza. Hizayoroi +2",
    feet={ name="Herculean Boots", augments={'Weapon skill damage +3%','Magic dmg. taken -2%','Damage taken-5%','Accuracy+16 Attack+16','Mag. Acc.+17 "Mag.Atk.Bns."+17',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Friomisi Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    left_ring="Regal Ring",
    right_ring="Dingir Ring",
    back={ name="Andartia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
}

sets.Hyb.Accuracy ={
	head={ name="Herculean Helm", augments={'"Mag.Atk.Bns."+29','Accuracy+5 Attack+5','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
    body={ name="Samnuha Coat", augments={'Mag. Acc.+12','"Mag.Atk.Bns."+12','"Dual Wield"+3',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
    legs="Hiza. Hizayoroi +2",
    feet={ name="Herculean Boots", augments={'Weapon skill damage +3%','Magic dmg. taken -2%','Damage taken-5%','Accuracy+16 Attack+16','Mag. Acc.+17 "Mag.Atk.Bns."+17',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Friomisi Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    left_ring="Regal Ring",
    right_ring="Dingir Ring",
    back={ name="Andartia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
}



sets.OtherWS = {}

sets.OtherWS.Attack ={
	head={ name="Dampening Tam", augments={'DEX+10','Accuracy+15','Mag. Acc.+15','Quadruple Attack +3',}},
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet={ name="Herculean Boots", augments={'Accuracy+25','"Triple Atk."+4','STR+6','Attack+8',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Brutal Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    left_ring="Regal Ring",
    right_ring="Epona's Ring",
    back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},
}   

sets.OtherWS.Accuracy = {
	head={ name="Dampening Tam", augments={'DEX+10','Accuracy+15','Mag. Acc.+15','Quadruple Attack +3',}},
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet={ name="Herculean Boots", augments={'Accuracy+25','"Triple Atk."+4','STR+6','Attack+8',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Brutal Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    left_ring="Regal Ring",
    right_ring="Epona's Ring",
    back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},
}   



sets.AeolianEdge = {}

sets.AeolianEdge = {
	head={ name="Herculean Helm", augments={'"Mag.Atk.Bns."+29','Accuracy+5 Attack+5','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
    body={ name="Samnuha Coat", augments={'Mag. Acc.+12','"Mag.Atk.Bns."+12','"Dual Wield"+3',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
    legs={ name="Herculean Trousers", augments={'"Mag.Atk.Bns."+20','CHR+10','Mag. Acc.+19 "Mag.Atk.Bns."+19',}},
    feet={ name="Herculean Boots", augments={'Mag. Acc.+19 "Mag.Atk.Bns."+19','STR+5','"Mag.Atk.Bns."+8',}},
    neck="Sanctity Necklace",
    waist="Eschan Stone",
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    left_ring="Shiva Ring +1",
    right_ring="Dingir Ring",
    back={ name="Andartia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
}



	

	--Job Ability Sets--

sets.JA = {}





--Magic Sets---



sets.Magic ={}

sets.Magic.Utsu = {
	head={ name="Herculean Helm", augments={'Weapon Skill Acc.+13','Mag. Acc.+11 "Mag.Atk.Bns."+11','"Fast Cast"+5','Accuracy+18 Attack+18',}},
    body={ name="Taeon Tabard", augments={'"Fast Cast"+5','"Snapshot"+5',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
    legs={ name="Rawhide Trousers", augments={'MP+50','"Fast Cast"+5','"Refresh"+1',}},
    feet="Hattori Kyahan +1",
    neck="Magoraga Beads",
    waist="Windbuffet Belt +1",
    left_ear="Enchntr. Earring +1",
    right_ear="Etiolation Earring",
    left_ring="Kishar Ring",
    right_ring="Rahab Ring",
    back={ name="Andartia's Mantle", augments={'"Fast Cast"+10',}},
}

sets.Magic.Self = {
	head={ name="Herculean Helm", augments={'Weapon Skill Acc.+13','Mag. Acc.+11 "Mag.Atk.Bns."+11','"Fast Cast"+5','Accuracy+18 Attack+18',}},
    body={ name="Taeon Tabard", augments={'"Fast Cast"+5','"Snapshot"+5',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
    legs={ name="Rawhide Trousers", augments={'MP+50','"Fast Cast"+5','"Refresh"+1',}},
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+6','"Fast Cast"+6','INT+4',}},
    neck="Orunmila's Torque",
    waist="Windbuffet Belt +1",
    left_ear="Enchntr. Earring +1",
    right_ear="Etiolation Earring",
    left_ring="Kishar Ring",
    right_ring="Rahab Ring",
    back={ name="Andartia's Mantle", augments={'"Fast Cast"+10',}},
}


sets.Magic.Migawari = {
	body="Hattori Ningi +1",
	back={ name="Andartia's Mantle", augments={'"Fast Cast"+10',}},
}


sets.Magic.Nuke = {
	head={ name="Herculean Helm", augments={'Rng.Acc.+22','"Mag.Atk.Bns."+19','Magic burst dmg.+11%','Accuracy+13 Attack+13','Mag. Acc.+10 "Mag.Atk.Bns."+10',}},
    body={ name="Samnuha Coat", augments={'Mag. Acc.+12','"Mag.Atk.Bns."+12','"Dual Wield"+3',}},
    hands={ name="Herculean Gloves", augments={'Mag. Acc.+19 "Mag.Atk.Bns."+19','Magic burst dmg.+6%','STR+3','Mag. Acc.+8','"Mag.Atk.Bns."+14',}},
    legs={ name="Herculean Trousers", augments={'"Mag.Atk.Bns."+20','CHR+10','Mag. Acc.+19 "Mag.Atk.Bns."+19',}},
    feet={ name="Herculean Boots", augments={'Mag. Acc.+19 "Mag.Atk.Bns."+19','STR+5','"Mag.Atk.Bns."+8',}},
    neck="Sanctity Necklace",
    waist="Eschan Stone",
    left_ear="Friomisi Earring",
    right_ear="Hecate's Earring",
    left_ring="Shiva Ring +1",
    right_ring="Shiva Ring +1",
    back={ name="Andartia's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+1','"Mag.Atk.Bns."+10',}},
}



sets.Magic.Debuff={
	head={ name="Herculean Helm", augments={'"Mag.Atk.Bns."+29','Accuracy+5 Attack+5','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
    body="Mummu Jacket +2", 
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
    legs="Mummu Kecks +2",
    feet={ name="Herculean Boots", augments={'Mag. Acc.+19 "Mag.Atk.Bns."+19','STR+5','"Mag.Atk.Bns."+8',}},
    neck="Incanter's Torque",
    waist="Eschan Stone",
    left_ear="Digni. Earring",
    right_ear="Enchntr. Earring +1",
    left_ring="Kishar Ring",
    right_ring="Stikini Ring",
    back={ name="Andartia's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+1','"Mag.Atk.Bns."+10',}},
}

	--Low special gear--

sets.obi = set_combine(sets.Magic.Nuke, {waist='Hachirin-no-Obi'})






	--Precast Sets--

sets.snapshot = {

	  head="Amini Gapette", -- 7

            body="Oshosi Vest", -- 7

            hands="Carmine Finger Gauntlets", --8

            back="Lutian Cape", -- 2

            legs="Adhemar Kecks",

            waist="Impulse Belt", -- 2

            feet="Meg. Jam. +1" -- 8

}	

sets.precast = {}	

sets.precast.FC = {
	head={ name="Herculean Helm", augments={'Weapon Skill Acc.+13','Mag. Acc.+11 "Mag.Atk.Bns."+11','"Fast Cast"+5','Accuracy+18 Attack+18',}},
    body={ name="Taeon Tabard", augments={'"Fast Cast"+5','"Snapshot"+5',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
    legs={ name="Rawhide Trousers", augments={'MP+50','"Fast Cast"+5','"Refresh"+1',}},
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+6','"Fast Cast"+6','INT+4',}},
    neck="Orunmila's Torque",
    waist="Windbuffet Belt +1",
    left_ear="Enchntr. Earring +1",
    right_ear="Etiolation Earring",
    left_ring="Kishar Ring",
    right_ring="Rahab Ring",
    back={ name="Andartia's Mantle", augments={'"Fast Cast"+10',}},
}

sets.precast.FC.Utsusemi = set_combine(sets.precast.FC, {neck="Magoraga Beads",})

end



function precast(spell)

	
	if spell.action_type == 'Magic' 
		then equip(sets.precast.FC)
	end
	
	if spell.type == 'Ranged Attack' then

		equip(sets.snapshot)

	elseif spell.type == 'WeaponSkill' 

		then if spell.english == 'Evisceration' or spell.english == 'Blade: Shun' or spell.english == 'Blade: Jin' or spell.english == 'Blade: Ku' 

					then equip(sets.MultiHit[sets.WS.index[WS_ind]])

				elseif spell.english == 'Blade: Hi' or spell.english == 'Blade: Ten' or spell.english == 'Blade: Chi'  or spell.english == 'Blade: Kamu' or spell.english == 'Blade: Yu' 

					then equip(sets.OneHit[sets.WS.index[WS_ind]])
				
				elseif spell.english == 'Blade: Hi'  

					then equip(sets.Crit[sets.WS.index[WS_ind]])
					
				elseif spell.english == 'Blade: Chi'  or spell.english == 'Blade: To' 

					then equip(sets.Hyb[sets.WS.index[WS_ind]])
					
				elseif spell.english == 'Aeolian Edge' 
					
					then equip(sets.AeolianEdge)

				elseif spell.type == 'Weaponskill' 

					then equip(sets.OtherWS[sets.WS.index[WS_ind]])

				end


		end

	

end

	

function midcast(spell,act)

	if spell.english == 'Utsusemi: Ichi' or spell.english =='Utsusemi: Ni' or spell.english =='Utsusemi: San' 
		then equip(sets.Magic.Utsu)
	elseif spell.english == 'Kakka: Ichi' or spell.english == 'Gekka: Ichi' or spell.english == 'Yain: Ichi' or spell.english == 'Myoshu: Ichi' or spell.english == 'Monomi: Ichi' or spell.english == 'Tonko: Ni'
		then equip(sets.Magic.Self)
	
	elseif spell.english == 'Aisha: Ichi' or spell.english == 'Yurin: Ichi' or spell.english == 'Hojo: Ni' or spell.english == 'Jubaku: Ichi' or spell.english == 'Kurayami: Ni' 
		then equip(sets.Magic.Debuff)
		weathercheck(spell.element)
		
	elseif spell.english == 'Migawari: Ichi'
		then equip(sets.Magic.Migawari)

	elseif spell.action_type =='Magic'
			then equip(sets.Magic.Nuke)
			weathercheck(spell.element)
	end

end



function aftercast(spell)

	if player.status == 'Engaged' 

		then equip(set_combine(sets.TP[sets.TP.index[TP_ind]][sets.Haste.index[Haste_ind]],sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]]))

	else

		equip(set_combine(sets.Idle[sets.Idle.index[Idle_ind]]))

	end

		

end



function status_change(new,old)

	if new == 'Engaged' 

		then equip(set_combine(sets.TP[sets.TP.index[TP_ind]][sets.Haste.index[Haste_ind]],sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]]))

	else

		equip(set_combine(sets.Idle[sets.Idle.index[Idle_ind]]))

	end

end



function self_command(command)

	if command == 'toggle TP set'

		then TP_ind = TP_ind +1

		if TP_ind > #sets.TP.index 

			then TP_ind = 1 

		end

		send_command('@input /echo <----- TP Set changed to '..sets.TP.index[TP_ind]..' ----->')

		if TP_ind > 1 

			then WS_ind = 2

		else WS_ind = 1 

		end

		send_command('@input /echo <----- WS set changed to '..sets.WS.index[WS_ind]..' ----->')

		send_command('@input /echo <----- Haste Set changed to '..sets.Haste.index[Haste_ind]..' ----->')

		equip(set_combine(sets.TP[sets.TP.index[TP_ind]][sets.Haste.index[Haste_ind]],sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]]))

	elseif command == 'toggle Haste set'

		then Haste_ind = Haste_ind +1

		if Haste_ind > #sets.Haste.index

			then Haste_ind = 1

		end

		send_command('@input /echo <----- TP Set changed to '..sets.TP.index[TP_ind]..' ----->')

		send_command('@input /echo <----- WS set changed to '..sets.WS.index[WS_ind]..' ----->')

		send_command('@input /echo <----- Haste Set changed to '..sets.Haste.index[Haste_ind]..' ----->')

		equip(set_combine(sets.TP[sets.TP.index[TP_ind]][sets.Haste.index[Haste_ind]],sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]]))

	elseif command == 'toggle Melee Weapon set'

		then Wm_ind = Wm_ind +1

		if Wm_ind > #sets.Weapon_melee.index

			then Wm_ind = 1

		end

		send_command('@input /echo <----- Melee weapon changed to '..sets.Weapon_melee.index[Wm_ind]..' ----->')

		send_command('@input /echo <----- Range weapon changed to '..sets.Weapon_range.index[Wr_ind]..' ----->')

		equip(set_combine(sets.TP[sets.TP.index[TP_ind]][sets.Haste.index[Haste_ind]],sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]]))

	elseif command == 'toggle Range Weapon set'

		then Wr_ind = Wr_ind +1

		if Wr_ind > #sets.Weapon_range.index

			then Wr_ind = 1

		end

		send_command('@input /echo <----- Melee weapon changed to '..sets.Weapon_melee.index[Wm_ind]..' ----->')

		send_command('@input /echo <----- Range weapon changed to '..sets.Weapon_range.index[Wr_ind]..' ----->')

		equip(set_combine(sets.TP[sets.TP.index[TP_ind]][sets.Haste.index[Haste_ind]],sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]]))

	elseif command == 'toggle DW set'

		then DW_mode_ind = DW_mode_ind +1

		if DW_mode_ind > #sets.DW_mode.index

			then DW_mode_ind = 1

		end

		send_command('@input /echo <----- DW status changed to '..sets.DW_mode.index[DW_mode_ind]..' ----->')

		equip(set_combine(sets.TP[sets.TP.index[TP_ind]][sets.Haste.index[Haste_ind]],sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]]))

	elseif command == 'toggle idle set' then

		Idle_ind = Idle_ind +1

		if Idle_ind > #sets.Idle.index then Idle_ind = 1 end

		send_command('@input /echo <----- Idle Set changed to '..sets.Idle.index[Idle_ind]..' ----->')

		equip(set_combine(sets.Idle[sets.Idle.index[Idle_ind]]))

	elseif command == 'toggle pdt set' then

		equip(set.PDT)

		send_command('@input /echo <----- PDT set Equipped ----->')

	elseif command == 'toggle mdt set' then

		equip(set.MDT)

		send_command('@input /echo <----- MDT set Equipped ----->')

	elseif command == 'status check' 

		then send_command('@input /echo <----- Melee weapon changed to '..sets.Weapon_melee.index[Wm_ind]..' ----->')

			send_command('@input /echo <----- Range weapon changed to '..sets.Weapon_range.index[Wr_ind]..' ----->')

			send_command('@input /echo <----- Haste Set changed to '..sets.Haste.index[Haste_ind]..' ----->')

			send_command('@input /echo <----- TP Set changed to '..sets.TP.index[TP_ind]..' ----->')

			send_command('@input /echo <----- WS set changed to '..sets.WS.index[WS_ind]..' ----->')

	end

end