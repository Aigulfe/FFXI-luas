
-- F9 for acc toggle, Alt-F9 for racc toggle   f10 for PDT   f11 for MDT  alt-F12 defense OFF 



-------------------------------------------------------------------------------------------------------------------
-- Setup functions for this job.  Generally should not be modified.
-------------------------------------------------------------------------------------------------------------------

--[[
	Custom commands:
	
	gs c qd
		Uses the currently configured shot on the target, with either <t> or <stnpc> depending on setting.
	gs c qd t
		Uses the currently configured shot on the target, but forces use of <t>.
	
	
	Configuration commands:
	
	gs c cycle mainqd
		Cycles through the available steps to use as the primary shot when using one of the above commands.
		
	gs c cycle altqd
		Cycles through the available steps to use for alternating with the configured main shot.
		
	gs c toggle usealtqd
		Toggles whether or not to use an alternate shot.
		
	gs c toggle selectqdtarget
		Toggles whether or not to use <stnpc> (as opposed to <t>) when using a shot.
		
		
	gs c toggle LuzafRing -- Toggles use of Luzaf Ring on and off
	
	Offense mode is melee or ranged.  Used ranged offense mode if you are engaged
	for ranged weaponskills, but not actually meleeing.
	
	Weaponskill mode, if set to 'Normal', is handled separately for melee and ranged weaponskills.
--]]


-- Initialization function for this job file.
function get_sets()
	mote_include_version = 2
	
	-- Load and initialize the include file.
	include('Mote-Include.lua')
end

-- Setup vars that are user-independent.  state.Buff vars initialized here will automatically be tracked.
function job_setup()
	-- QuickDraw Selector
	state.MainQD = M{['description']='Primary Shot', 'Dark Shot', 'Earth Shot', 'Water Shot', 'Wind Shot', 'Fire Shot', 'Ice Shot', 'Thunder Shot'}
	state.AltQD = M{['description']='Secondary Shot', 'Earth Shot', 'Water Shot', 'Wind Shot', 'Fire Shot', 'Ice Shot', 'Thunder Shot', 'Dark Shot'}
	state.UseAltQD = M(false, 'Use Secondary Shot')
	state.SelectQDTarget = M(false, 'Select Quick Draw Target')
	state.IgnoreTargetting = M(false, 'Ignore Targetting')

	state.CurrentQD = M{['description']='Current Quick Draw', 'Main', 'Alt'}
	
	-- Whether to use Luzaf's Ring
	state.LuzafRing = M(true, "Luzaf's Ring")
	-- Whether a warning has been given for low ammo
	state.warned = M(false)

	define_roll_values()
	determine_haste_group()

end

-------------------------------------------------------------------------------------------------------------------
-- User setup functions for this job.  Recommend that these be overridden in a sidecar file.
-------------------------------------------------------------------------------------------------------------------

-- Setup vars that are user-dependent.  Can override this function in a sidecar file.
function user_setup()
	state.OffenseMode:options('Normal', 'LowAcc', 'MidAcc', 'HighAcc', 'Fodder')
	state.RangedMode:options('Normal', 'Acc', 'Fodder')
	state.WeaponskillMode:options('Normal', 'Acc')
	state.CastingMode:options('Normal', 'Resistant')
	state.IdleMode:options('Normal', 'PDT', 'MDT')

	
	
	gear.RAbullet = "Chrono Bullet"
	gear.WSbullet = "Chrono Bullet"
	gear.MAbullet = "Chrono Bullet"
	gear.QDbullet = "Living Bullet"
	options.ammo_warning_limit = 5

	-- Additional local binds  ^ctrl  !alt  @windows   ALT-F12 to turn DEFENSE OFF! 
	send_command('bind ^` input /ja "Double-up" <me>')
	send_command('bind !` input /ja "Bolter\'s Roll" <me>')
	send_command ('bind @` gs c toggle LuzafRing')

	send_command('bind ^- gs c cycleback mainqd')
	send_command('bind ^= gs c cycle mainqd')
	send_command('bind !- gs c cycle altqd')
	send_command('bind != gs c cycleback altqd')
	send_command('bind ^[ gs c toggle selectqdtarget')
	send_command('bind ^] gs c toggle usealtqd')
	send_command('bind ^, input /ja "Spectral Jig" <me>')

	select_default_macro_book()
end


-- Called when this job file is unloaded (eg: job change)
function user_unload()
	send_command('unbind ^`')
	send_command('unbind !`')
	send_command('unbind @`')
	send_command('unbind ^-')
	send_command('unbind ^=')
	send_command('unbind !-')
	send_command('unbind !=')
	send_command('unbind ^[')
	send_command('unbind ^]')
	send_command('unbind ^,')

end



-- Define sets and vars used by this job file.
function init_gear_sets()
	--------------------------------------
	-- Start defining the sets
	--------------------------------------
	
	--Weapons--
		
		sets.Weapons = {}
		
		sets.Weapons.Index = {'TPGun', 'Fomal', 'Comp', 'Odin'}
		Weapons_ind = 1
		
		sets.Weapons.TPGun = {main ="Hepatizon Sapara +1", sub ="Hepatizon Sapara +1", range = "Ataktos"}
		
		sets.Weapons.Fomal = {main ="Fettering Blade", sub ="Odium", range = "Fomalhaut"}
		
		sets.Weapons.Comp = {range = "Compensator"}
		
		sets.Weapons.Odin = {main ="Kustawi +1", sub ="Kustawi", range = "Fomalhaut"}
	
	
	-- Precast Sets
	
	
	sets.precast.JA['Snake Eye'] = {legs={ name="Lanun Trews +3", augments={'Enhances "Snake Eye" effect',}},}
	sets.precast.JA['Wild Card'] = {feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},}
	sets.precast.JA['Random Deal'] = {body={ name="Lanun Frac +3", augments={'Enhances "Loaded Deck" effect',}},}

	
	sets.precast.CorsairRoll = {
--		range="Compensator",
		head={ name="Lanun Tricorne +2", augments={'Enhances "Winning Streak" effect',}},
		body="Meg. Cuirie +2",
		hands="Chasseur's Gants +1",
		legs="Meg. Chausses +2",
		feet={ name="Herculean Boots", augments={'Weapon skill damage +3%','Magic dmg. taken -2%','Damage taken-5%','Accuracy+16 Attack+16','Mag. Acc.+17 "Mag.Atk.Bns."+17',}},
		neck="Regal Necklace",
		left_ear="Odnowa Earring +1",
		right_ear="Etiolation Earring",
		left_ring="Defending Ring",
		right_ring="Fortified Ring",
		waist="Flume Belt +1",
		back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}
	
	sets.precast.CorsairRoll["Caster's Roll"] = set_combine(sets.precast.CorsairRoll, {legs="Chas. Culottes"})
	sets.precast.CorsairRoll["Courser's Roll"] = set_combine(sets.precast.CorsairRoll, {feet="Chass. Bottes +1"})
	sets.precast.CorsairRoll["Blitzer's Roll"] = set_combine(sets.precast.CorsairRoll, {head="Chass. Tricorne +1"})
	sets.precast.CorsairRoll["Tactician's Roll"] = set_combine(sets.precast.CorsairRoll, {body="Chasseur's Frac +1"})
	sets.precast.CorsairRoll["Allies' Roll"] = set_combine(sets.precast.CorsairRoll, {hands="Chasseur's Gants +1"})
	
	sets.precast.LuzafRing = set_combine(sets.precast.CorsairRoll, {right_ring="Luzaf's Ring"})
	sets.precast.FoldDoubleBust = {hands="Lanun Gants +1"}
	
	sets.precast.CorsairShot = {}

	sets.precast.Waltz = {
	head="Mummu Bonnet +2",
    body="Laksa. Frac +3",
    hands="Meg. Gloves +2",
    legs={ name="Herculean Trousers", augments={'Rng.Atk.+8','"Waltz" potency +9%','Attack+5',}},
    feet={ name="Rawhide Boots", augments={'HP+50','Accuracy+15','Evasion+20',}},
    neck="Unmoving Collar +1",
    waist="Aristo Belt",
    left_ear="Enchntr. Earring +1",
    right_ear="Handler's Earring +1",
    left_ring="Asklepian Ring",
    right_ring="Valseur's Ring",
    back={ name="Camulus's Mantle", augments={'CHR+20','Accuracy+20 Attack+20','"Waltz" potency +10%',}},
}

	sets.precast.Waltz['Healing Waltz'] = sets.precast.Waltz
	
	sets.precast.FC = {
		head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
		body={ name="Taeon Tabard", augments={'"Fast Cast"+5','"Snapshot"+5',}},
		hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
		legs={ name="Rawhide Trousers", augments={'MP+50','"Fast Cast"+5','"Refresh"+1',}},
		feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
		neck="Orunmila's Torque",
		waist="Windbuffet Belt +1",
		left_ear="Enchntr. Earring +1",
		right_ear="Etiolation Earring",
		left_ring="Rahab Ring",
		right_ring="Kishar Ring",
		back={ name="Camulus's Mantle", augments={'"Fast Cast"+10',}},
}

	sets.precast.FC.Utsusemi = set_combine(sets.precast.FC, {neck="Magoraga Beads",})

	sets.precast.RA = {
		ammo=gear.RAbullet,
		head={ name="Taeon Chapeau", augments={'"Snapshot"+4','"Snapshot"+5',}},
		body="Oshosi Vest",
		hands="Lanun Gants +1",
		legs={ name="Adhemar Kecks", augments={'AGI+10','"Rapid Shot"+10','Enmity-5',}},
		feet="Meg. Jam. +2",
		neck="Iskur Gorget",
		waist="Impulse Belt",
		left_ear="Enervating Earring",
		right_ear="Telos Earring",
		left_ring="Haverton Ring +1",
		right_ring="Dingir Ring",
		back={ name="Camulus's Mantle", augments={'"Snapshot"+10',}},
}
	   
	-- Weaponskill sets
	-- Default set for any weaponskill that isn't any more specifically defined
	sets.precast.WS = {
		ammo=gear.WSbullet,
		head={ name="Lanun Tricorne +3", augments={'Enhances "Winning Streak" effect',}},
		body="Laksa. Frac +3",
		hands="Meg. Gloves +2",
		legs="Meg. Chausses +2",
		feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Enervating Earring",
		right_ear="Telos Earring",
		left_ring="Regal Ring",
		right_ring="Cacoethic Ring +1",
		back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%',}},
}

	sets.precast.WS.Acc = sets.precast.WS

	-- Specific weaponskill sets.  Uses the base set if an appropriate WSMod version isn't found.

	sets.precast.WS["Last Stand"] = {ammo=gear.WSbullet,
		head={ name="Lanun Tricorne +3", augments={'Enhances "Winning Streak" effect',}},
		body="Laksa. Frac +3",
		hands="Meg. Gloves +2",
		legs={ name="Lanun Trews +3", augments={'Enhances "Snake Eye" effect',}},
		feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
		right_ear="Telos Earring",
		left_ring="Regal Ring",
		right_ring="Dingir Ring",
		back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%',}},
}
--enmity down version
sets.precast.WS["Last Stand2"] = {
		ammo=gear.WSbullet,
		head={ name="Lanun Tricorne +3", augments={'Enhances "Winning Streak" effect',}},
		body="Laksa. Frac +3",
		hands="Meg. Gloves +2",
		legs={ name="Lanun Trews +3", augments={'Enhances "Snake Eye" effect',}},
		feet="Oshosi Leggings",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
		right_ear="Telos Earring",
		left_ring="Cacoethic Ring",
		right_ring="Cacoethic Ring +1",
		back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%',}},
}


	sets.precast.WS['Last Stand'].Acc = set_combine(sets.precast.WS['Last Stand'], {
		right_ring="Cacoethic Ring +1",
		})
		
		sets.precast.WS['Slug Shot'] = {
		ammo=gear.WSbullet,
		head="Mummu Bonnet +2",
		body="Laksa. Frac +3",
		hands="Mummu Wrists +1",
		legs="Mummu Kecks +2",
		feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Enervating Earring",
		right_ear="Telos Earring",
		left_ring="Regal Ring",
		right_ring="Dingir Ring",
		back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%',}},
}

	sets.precast.WS['Wildfire'] = {
		ammo="Living Bullet",
		head={ name="Herculean Helm", augments={'"Mag.Atk.Bns."+29','Accuracy+5 Attack+5','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
		body={ name="Lanun Frac +3", augments={'Enhances "Loaded Deck" effect',}},
		hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
		legs={ name="Herculean Trousers", augments={'"Mag.Atk.Bns."+20','CHR+10','Mag. Acc.+19 "Mag.Atk.Bns."+19',}},
		feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},
		neck="Baetyl Pendant",
		waist="Eschan Stone",
		left_ear="Hecate's Earring",
		right_ear="Friomisi Earring",
		left_ring="Arvina Ringlet +1",
		right_ring="Dingir Ring",
		back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
}

	sets.precast.WS['Hot Shot'] = {
		ammo="Living Bullet",
		head={ name="Herculean Helm", augments={'"Mag.Atk.Bns."+29','Accuracy+5 Attack+5','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
		body={ name="Lanun Frac +3", augments={'Enhances "Loaded Deck" effect',}},
		hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
		legs={ name="Herculean Trousers", augments={'"Mag.Atk.Bns."+20','CHR+10','Mag. Acc.+19 "Mag.Atk.Bns."+19',}},
		feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
		right_ear="Friomisi Earring",
		left_ring="Regal Ring",
		right_ring="Dingir Ring",
		back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%',}},
}
	
	sets.precast.WS['Leaden Salute'] = 	{
		ammo="Living Bullet",
		head="Pixie Hairpin +1",
		body={ name="Lanun Frac +3", augments={'Enhances "Loaded Deck" effect',}},
		hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
		legs={ name="Herculean Trousers", augments={'"Mag.Atk.Bns."+20','CHR+10','Mag. Acc.+19 "Mag.Atk.Bns."+19',}},
		feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},
		neck="Baetyl Pendant",
		waist="Eschan Stone",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
		right_ear="Friomisi Earring",
		left_ring="Archon Ring",
		right_ring="Dingir Ring",
		back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
}

sets.Obi = {waist="Hachirin-no-Obi"}

sets.precast.WS['Starburst'] = 	{
		ammo=gear.WSbullet,
		head="Pixie Hairpin +1",
		body="Laksa. Frac +3",
		hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
		legs={ name="Herculean Trousers", augments={'"Mag.Atk.Bns."+20','CHR+10','Mag. Acc.+19 "Mag.Atk.Bns."+19',}},
		feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},
		neck="Baetyl Pendant",
		waist="Eschan Stone",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
		right_ear="Friomisi Earring",
		left_ring="Archon Ring",
		right_ring="Dingir Ring",
		back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
}
		
	sets.precast.WS['Evisceration'] = {
		head={ name="Adhemar Bonnet", augments={'DEX+10','AGI+10','Accuracy+15',}},
		body="Meg. Cuirie +2",
		hands={ name="Herculean Gloves", augments={'Accuracy+27','Crit.hit rate+4','DEX+8',}},
		legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
		feet={ name="Herculean Boots", augments={'Accuracy+18 Attack+18','Crit.hit rate+4','DEX+5','Accuracy+9',}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Mache Earring",
		right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
		left_ring="Regal Ring",
		right_ring="Ilabrat Ring",
		back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}

sets.precast.WS['Aeolian Edge'] = {
	ammo="Living Bullet",
	head={ name="Herculean Helm", augments={'"Mag.Atk.Bns."+29','Accuracy+5 Attack+5','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
    body={ name="Lanun Frac +3", augments={'Enhances "Loaded Deck" effect',}},
    hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
    legs={ name="Herculean Trousers", augments={'"Mag.Atk.Bns."+20','CHR+10','Mag. Acc.+19 "Mag.Atk.Bns."+19',}},
	feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},   
    neck="Baetyl Pendant",
    waist="Eschan Stone",
    left_ear="Friomisi Earring",
    right_ear="Moonshade Earring",
    left_ring="Shiva Ring +1",
    right_ring="Dingir Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
}

	sets.precast.WS['Savage Blade'] = {
		head={ name="Herculean Helm", augments={'Accuracy+13','VIT+2','Weapon skill damage +8%','Accuracy+10 Attack+10',}},
		body="Laksa. Frac +3",
		hands="Meg. Gloves +2",
		legs="Meg. Chausses +2",
		feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},
		neck="Caro Necklace",
		waist="Prosilio Belt +1",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
		right_ear="Ishvara Earring",
		left_ring="Rufescent Ring",
		right_ring="Regal Ring",
		back={ name="Camulus's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
}
		
	sets.precast.WS['Savage Blade'].Acc = set_combine(sets.precast.WS['Savage Blade'], {
		head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
		legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
		neck="Decimus Torque",
		left_ring="Rufescent Ring",
		})

	sets.precast.WS['Swift Blade'] = {
	head={ name="Dampening Tam", augments={'DEX+10','Accuracy+15','Mag. Acc.+15','Quadruple Attack +3',}},
	body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs="Meg. Chausses +2",
    feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Brutal Earring",
    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
    left_ring="Regal Ring",
    right_ring="Epona's Ring",
    back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}
		
	sets.precast.WS['Requiescat'] = {
	head={ name="Carmine Mask", augments={'Accuracy+10','DEX+10','MND+15',}},
    body={ name="Carm. Scale Mail", augments={'Accuracy+10','DEX+10','MND+15',}},
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs="Meg. Chausses +2",
    feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Brutal Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    left_ring="Regal Ring",
    right_ring="Epona's Ring",
    back={ name="Camulus's Mantle", augments={'MND+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
}

	sets.precast.WS['Requiescat'].Acc = set_combine(sets.precast.WS['Requiescat'], {
		neck="Decimus Torque",
		})

	-- Midcast Sets
	sets.midcast.FastRecast = {
		ear1="Enchntr. Earring +1",
		ear2="Etiolation Earring",
		}

	sets.midcast.Cure = {
		legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
		feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
		neck="Phalaina Locket",
		ear2="Mendi. Earring",
		Ring1="Lebeche Ring",
		ring2="Sirona's Ring",
		waist="Gishdubar Sash",
		back="Solemnity Cape",
		}	

	sets.midcast.Utsusemi = {}

	sets.midcast.CorsairShot = {
		ammo="Living Bullet",
		head={ name="Herculean Helm", augments={'"Mag.Atk.Bns."+29','Accuracy+5 Attack+5','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
		body={ name="Lanun Frac +3", augments={'Enhances "Loaded Deck" effect',}},
		hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
		legs={ name="Herculean Trousers", augments={'"Mag.Atk.Bns."+20','CHR+10','Mag. Acc.+19 "Mag.Atk.Bns."+19',}},
		feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},
		neck="Baetyl Pendant",
		waist="Eschan Stone",
		left_ear="Friomisi Earring",
		right_ear="Hecate's Earring",
		left_ring="Shiva Ring +1",
		right_ring="Dingir Ring",
		back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}


	sets.midcast.CorsairShot['Light Shot'] = {
	ammo="Living Bullet",
	head="Laksa. Tricorne +3",
    body="Mummu Jacket +2",
    hands="Mummu Wrists +2",
    legs="Mummu Kecks +2",
    feet="Laksa. Boots +3",
    neck="Sanctity Necklace",
    waist="Kwahu Kachina Belt",
    left_ear="Gwati Earring",
    right_ear="Digni. Earring",
    left_ring="Regal Ring",
    right_ring="Dingir Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}
		

	sets.midcast.CorsairShot['Dark Shot'] = {
	ammo="Living Bullet",
	head="Laksa. Tricorne +3",
    body="Mummu Jacket +2",
    hands="Mummu Wrists +2",
    legs="Mummu Kecks +2",
    feet="Laksa. Boots +3",
    neck="Sanctity Necklace",
    waist="Kwahu Kachina Belt",
    left_ear="Gwati Earring",
    right_ear="Digni. Earring",
    left_ring="Regal Ring",
    right_ring="Archon Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
}


	-- Ranged gear
	sets.midcast.RA = {
		ammo=gear.RAbullet,	
		head={ name="Lanun Tricorne +3", augments={'Enhances "Winning Streak" effect',}},
		body="Mummu Jacket +2",
		hands={ name="Adhemar Wrist. +1", augments={'AGI+12','Rng.Acc.+20','Rng.Atk.+20',}},
		legs={ name="Adhemar Kecks +1", augments={'AGI+12','Rng.Acc.+20','Rng.Atk.+20',}},
		feet="Meg. Jam. +2",
		neck="Iskur Gorget",
		waist="Eschan Stone",
		left_ear="Enervating Earring",
		right_ear="Telos Earring",
		left_ring="Ilabrat Ring",
		right_ring="Dingir Ring",
		back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Rng.Acc.+10','"Store TP"+10',}},
}

	sets.midcast.RA.Acc = {
	ammo=gear.RAbullet,	
		head="Laksa. Tricorne +3",
		body="Laksa. Frac +3",
		hands={ name="Adhemar Wrist. +1", augments={'AGI+12','Rng.Acc.+20','Rng.Atk.+20',}},
		legs={ name="Adhemar Kecks +1", augments={'AGI+12','Rng.Acc.+20','Rng.Atk.+20',}},
		feet="Meg. Jam. +2",
		neck="Iskur Gorget",
		waist="Kwahu Kachina Belt",
		left_ear="Enervating Earring",
		right_ear="Telos Earring",
		left_ring="Regal Ring",
		right_ring="Haverton Ring +1",
		back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Rng.Acc.+10','"Store TP"+10',}},
}
--enmity down version
sets.midcast.RA.Acc2 = {
	ammo=gear.RAbullet,	
		head="Laksa. Tricorne +3",
		body="Laksa. Frac +3",
		hands={ name="Adhemar Wrist. +1", augments={'AGI+12','Rng.Acc.+20','Rng.Atk.+20',}},
		legs="Laksa. Trews +3",
		feet="Oshosi Leggings",
		neck="Iskur Gorget",
		waist="Kwahu Kachina Belt",
		left_ear="Enervating Earring",
		right_ear="Telos Earring",
		left_ring="Cacoethic Ring",
		right_ring="Cacoethic Ring +1",
		back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Rng.Acc.+10','"Store TP"+10',}},
}

	sets.midcast.RA.Fodder = {
	ammo=gear.RAbullet,	
		head={ name="Lanun Tricorne +3", augments={'Enhances "Winning Streak" effect',}},
		body="Mummu Jacket +2",
		hands={ name="Adhemar Wrist. +1", augments={'AGI+12','Rng.Acc.+20','Rng.Atk.+20',}},
		legs={ name="Adhemar Kecks +1", augments={'AGI+12','Rng.Acc.+20','Rng.Atk.+20',}},
		feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},
		neck="Iskur Gorget",
		waist="Yemaya Belt",
		left_ear="Enervating Earring",
		right_ear="Telos Earring",
		left_ring="Regal Ring",
		right_ring="Dingir Ring",
		back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Rng.Acc.+10','"Store TP"+10',}},
}


      sets.TripleShot = {
		ammo=gear.RAbullet,	
		head="Oshosi Mask", 
		body="Chasseur's Frac +1", 
		hands="Oshosi Gloves", 
		legs="Oshosi Trousers",
		feet="Oshosi Leggings",
		neck="Iskur Gorget",
		waist="Eschan Stone",
		left_ear="Enervating Earring",
		right_ear="Telos Earring",
		left_ring="Regal Ring",
		right_ring="Dingir Ring",
		back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Rng.Acc.+10','"Store TP"+10',}},
}

	
	-- Sets to return to when not performing an action.
	
	-- Resting sets
	sets.resting = {}
	
	-- Idle sets
	sets.idle = {
		ammo=gear.RAbullet,
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

	sets.idle.PDT = {
		head="Meghanada Visor +2",
		body="Meg. Cuirie +2",
		hands="Meg. Gloves +2",
		legs="Meg. Chausses +2",
		feet={ name="Herculean Boots", augments={'Weapon skill damage +3%','Magic dmg. taken -2%','Damage taken-5%','Accuracy+16 Attack+16','Mag. Acc.+17 "Mag.Atk.Bns."+17',}},
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ear="Odnowa Earring +1",
		right_ear="Etiolation Earring",
		left_ring="Defending Ring",
		right_ring="Fortified Ring",
		back="Moonbeam Cape",
}

	sets.idle.MDT = set_combine (sets.idle.PDT, {head="Dampening Tam", hands="Kurys Gloves", legs="Mummu Kecks +2",})

	sets.idle.Town = sets.idle

	
	-- Defense sets
	sets.defense.PDT = {
		head="Meghanada Visor +2",
		body="Meg. Cuirie +2",
		hands="Meg. Gloves +2",
		legs="Meg. Chausses +2",
		feet={ name="Herculean Boots", augments={'Weapon skill damage +3%','Magic dmg. taken -2%','Damage taken-5%','Accuracy+16 Attack+16','Mag. Acc.+17 "Mag.Atk.Bns."+17',}},
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ear="Cessance Earring",
		right_ear="Suppanomimi",
		left_ring="Defending Ring",
		right_ring="Fortified Ring",
		back="Moonbeam Cape",
}

	sets.defense.MDT = {
		head="Dampening Tam", --4
		body="Meg. Cuirie +2",
		hands={ name="Floral Gauntlets", augments={'Rng.Acc.+15','Accuracy+15','"Triple Atk."+3','Magic dmg. taken -4%',}},  --4
		legs="Mummu Kecks +2", --4
		feet={ name="Herculean Boots", augments={'Weapon skill damage +3%','Magic dmg. taken -2%','Damage taken-5%','Accuracy+16 Attack+16','Mag. Acc.+17 "Mag.Atk.Bns."+17',}}, --7
		neck="Loricate Torque +1", --6
		waist="Flume Belt +1",
		left_ear="Odnowa Earring +1", --2
		right_ear="Etiolation Earring", --3
		left_ring="Defending Ring", --10
		right_ring="Fortified Ring", --5
		back="Moonbeam Cape", --5
		}
		
	sets.defense.none = {
		ammo=gear.RAbullet,
		head={ name="Dampening Tam", augments={'DEX+10','Accuracy+15','Mag. Acc.+15','Quadruple Attack +3',}},
		body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
		feet={ name="Herculean Boots", augments={'Accuracy+25','"Triple Atk."+4','STR+6','Attack+8',}},
		neck="Iskur Gorget",
		waist="Windbuffet Belt +1",
		left_ear="Cessance Earring",
		right_ear="Brutal Earring",
		left_ring="Haverton Ring +1",
		right_ring="Epona's Ring",
		back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}
	

	sets.Kiting = {legs="Carmine Cuisses +1"}

	-- Engaged sets

	-- Variations for TP weapon and (optional) offense/defense modes.  Code will fall back on previous
	-- sets if more refined versions aren't defined.
	-- If you create a set with both offense and defense modes, the offense mode should be first.
	-- EG: sets.engaged.Dagger.Accuracy.Evasion
	
	-- Normal melee group
	sets.engaged = {
		ammo=gear.RAbullet,
		head={ name="Dampening Tam", augments={'DEX+10','Accuracy+15','Mag. Acc.+15','Quadruple Attack +3',}},
		body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
		feet={ name="Herculean Boots", augments={'Accuracy+25','"Triple Atk."+4','STR+6','Attack+8',}},
		neck="Iskur Gorget",
		waist="Windbuffet Belt +1",
		left_ear="Brutal Earring",
		right_ear="Cessance Earring",
		left_ring="Haverton Ring +1",
		right_ring="Epona's Ring",
		back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}
	--CRIT set for mamool ambu 1/18
	sets.engaged.crit = {
	ammo=gear.RAbullet,
	head="Mummu Bonnet +2",
    body="Mummu Jacket +2",
    hands="Mummu Wrists +2",
    legs="Mummu Kecks +2",
    feet="Oshosi Leggings",
    neck="Lissome Necklace",
    waist="Windbuffet Belt +1",
    left_ear="Brutal Earring",
    right_ear="Cessance Earring",
    left_ring="Hetairoi Ring",
    right_ring="Mummu Ring",
    back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}

	sets.engaged.LowAcc = {
		ammo=gear.RAbullet,
		head={ name="Dampening Tam", augments={'DEX+10','Accuracy+15','Mag. Acc.+15','Quadruple Attack +3',}},
		body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
		feet={ name="Herculean Boots", augments={'Accuracy+25','"Triple Atk."+4','STR+6','Attack+8',}},
		neck="Lissome necklace",
		waist="Windbuffet Belt +1",
		left_ear="Brutal Earring",
		right_ear="Cessance Earring",
		left_ring="Haverton Ring +1",
		right_ring="Epona's Ring",
		back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}
	
	sets.engaged.MidAcc = {
		ammo=gear.RAbullet,
		head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
		body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		legs="Meg. Chausses +2",
		feet={ name="Herculean Boots", augments={'Accuracy+25','"Triple Atk."+4','STR+6','Attack+8',}},
		neck="Decimus Torque",
		waist="Kentarch Belt +1",
		left_ear="Telos Earring",
		right_ear="Cessance Earring",
		left_ring="Haverton Ring +1",
		right_ring="Cacoethic Ring +1",
		back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}
	

	sets.engaged.HighAcc = {
		ammo=gear.RAbullet,
		head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
		body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
		feet="Meg. Jam. +2",
		neck="Decimus Torque",
		waist="Olseni Belt",
		left_ear="Digni. Earring",
		right_ear="Telos Earring",
		left_ring="Cacoethic Ring",
		right_ring="Cacoethic Ring +1",
		back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}

	sets.engaged.Fodder = sets.engaged
	

	sets.engaged.HighHaste = {
		ammo=gear.RAbullet,
		head={ name="Dampening Tam", augments={'DEX+10','Accuracy+15','Mag. Acc.+15','Quadruple Attack +3',}},
		body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		legs="Meg. Chausses +2",
		feet={ name="Herculean Boots", augments={'Accuracy+25','"Triple Atk."+4','STR+6','Attack+8',}},
		neck="Lissome necklace",
		waist="Windbuffet Belt +1",
		left_ear="Cessance Earring",
		right_ear="Brutal Earring",
		left_ring="Haverton Ring +1",
		right_ring="Epona's Ring",
		back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}

	sets.engaged.HighHaste2 = {
	ammo=gear.RAbullet,
	head="Mummu Bonnet +2",
    body="Mummu Jacket +2",
    hands="Mummu Wrists +2",
    legs="Mummu Kecks +2",
    feet="Oshosi Leggings",
    neck="Lissome Necklace",
    waist="Windbuffet Belt +1",
    left_ear="Brutal Earring",
    right_ear="Cessance Earring",
    left_ring="Hetairoi Ring",
    right_ring="Mummu Ring",
    back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}

	sets.engaged.HighHaste.LowAcc = sets.engaged.HighHaste

	sets.engaged.HighHaste.MidAcc = set_combine(sets.engaged.HighHaste, {
		head="Meghanada Visor +2",
		waist="Eschan Stone",
		right_ring="Cacoethic Ring +1",})

	sets.engaged.HighHaste.HighAcc = set_combine(sets.engaged.HighHaste.MidAcc, {
		head="Meghanada Visor +2",
		legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
		feet="Meg. Jam. +2",
		waist="Olseni Belt",
		left_ear="Mache Earring",
		right_ear="Telos Earring",
		left_ring="Cacoethic Ring",
 })

	sets.engaged.HighHaste.Fodder = sets.engaged.HighHaste

	sets.engaged.MaxHaste = sets.engaged.HighHaste

	sets.engaged.MaxHaste.LowAcc = sets.engaged.HighHaste

	sets.engaged.MaxHaste.MidAcc = set_combine(sets.engaged.HighHaste, {
		head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
		waist="Eschan Stone",
		right_ring="Cacoethic Ring +1",})

	sets.engaged.MaxHaste.HighAcc = set_combine(sets.engaged.HighHaste.MidAcc, {
		head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
		legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
		feet="Meg. Jam. +2",
		waist="Olseni Belt",
		left_ear="Mache Earring",
		left_ring="Cacoethic Ring",
 })

	sets.engaged.MaxHaste.Fodder = sets.engaged.HighHaste

end


-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for standard casting events.
-------------------------------------------------------------------------------------------------------------------




-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
-- Set eventArgs.useMidcastGear to true if we want midcast gear equipped on precast.
function job_precast(spell, action, spellMap, eventArgs)
	-- Check that proper ammo is available if we're using ranged attacks or similar.
	if spell.action_type == 'Ranged Attack' or spell.type == 'WeaponSkill' or spell.type == 'CorsairShot' then
		do_bullet_checks(spell, spellMap, eventArgs)
	end

	-- gear sets
	if (spell.type == 'CorsairRoll' or spell.english == "Double-Up") and state.LuzafRing.value then
		equip(sets.precast.LuzafRing)
		end
	if spell.type == 'CorsairShot' and state.CastingMode.value == 'Resistant' then
		classes.CustomClass = 'Acc'
		end
	if spell.english == 'Fold' and buffactive['Bust'] == 2 then
		if sets.precast.FoldDoubleBust then
			equip(sets.precast.FoldDoubleBust)
			eventArgs.handled = true
	end
		end
end


function job_post_precast(spell, action, spellMap, eventArgs)
    -- Equip obi if weather/day matches for WS/Quick Draw.
    if spell.type == 'WeaponSkill' then
        if spell.english == 'Leaden Salute' then
            if world.weather_element == 'Dark' or world.day_element == 'Dark' then
                equip(sets.Obi)
            end
        elseif spell.english == 'Wildfire' and (world.weather_element == 'Fire' or world.day_element == 'Fire') then
            equip(sets.Obi)
		elseif spell.english == 'Hot Shot' then
		equip(sets.precast.WS['Hot Shot'])
		end
    end
end
 
function job_post_midcast(spell, action, spellMap, eventArgs)
    if spell.type == 'CorsairShot' then
        if spell.english == "Light Shot" and spell.english == "Dark Shot" then
            equip(sets.Obi)
        end
    end
	if spell.action_type == 'Ranged Attack' and buffactive['Triple Shot'] then
        equip(sets.TripleShot)
    end
end

-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
function job_aftercast(spell, action, spellMap, eventArgs)
	if spell.type == 'CorsairRoll' and not spell.interrupted then
		display_roll_info(spell)
	end
end

function job_status_change(new_status, old_status)
	if new_status == 'Engaged' then
		determine_haste_group()
	end
end

-------------------------------------------------------------------------------------------------------------------
-- User code that supplements standard library decisions.
-------------------------------------------------------------------------------------------------------------------

-- Return a customized weaponskill mode to use for weaponskill sets.
-- Don't return anything if you're not overriding the default value.

function job_update(cmdParams, eventArgs)
	determine_haste_group()
end

-- Set eventArgs.handled to true if we don't want the automatic display to be run.

function job_update(cmdParams, eventArgs)
	determine_haste_group()
end

function display_current_job_state(eventArgs)

end

function get_custom_wsmode(spell, spellMap, default_wsmode)
	if buffactive['Transcendancy'] then
		return 'Brew'
	end
end


-- Called by the 'update' self-command, for common needs.
-- Set eventArgs.handled to true if we don't want automatic equipping of gear.
function job_update(cmdParams, eventArgs)
	if newStatus == 'Engaged' and player.equipment.main == 'Chatoyant Staff' then
		state.OffenseMode:set('Ranged')
	end
end

-- Handle auto-targetting based on local setup.
function job_auto_change_target(spell, action, spellMap, eventArgs)
	if spell.type == 'CorsairShot' then
		if state.IgnoreTargetting.value == true then
			state.IgnoreTargetting:reset()
			eventArgs.handled = true
		end
		
		eventArgs.SelectNPCTargets = state.SelectQDTarget.value
	end
end


-- Set eventArgs.handled to true if we don't want the automatic display to be run.
function display_current_job_state(eventArgs)
	local msg = ''
	
	msg = msg .. 'Offense/Ranged: ['..state.OffenseMode.current..'/'..state.RangedMode.current
	msg = msg .. '], WS: ['..state.WeaponskillMode.current..']'

	if state.DefenseMode.value ~= 'None' then
		local defMode = state[state.DefenseMode.value ..'DefenseMode'].current
		msg = msg .. ', Defense: ('..state.DefenseMode.value..' '..defMode..')'
	end
	
	if state.Kiting.value then
		msg = msg .. ', Kiting'
	end

	msg = msg .. ', ['..state.MainQD.current

	if state.UseAltQD.value == true then
		msg = msg .. '/'..state.AltQD.current
	end
	
	msg = msg .. ']'
	
	add_to_chat(122, msg)

	eventArgs.handled = true
end

-------------------------------------------------------------------------------------------------------------------
-- User self-commands.
-------------------------------------------------------------------------------------------------------------------

-- Called for custom player commands.
function job_self_command(cmdParams, eventArgs)
	if cmdParams[1] == 'qd' then
		if cmdParams[2] == 't' then
			state.IgnoreTargetting:set()
		end

		local doQD = ''
		if state.UseAltQD.value == true then
			doQD = state[state.CurrentQD.current..'QD'].current
			state.CurrentQD:cycle()
		else
			doQD = state.MainQD.current
		end		
		
		send_command('@input /ja "'..doQD..'" <t>')
	end
end	



-------------------------------------------------------------------------------------------------------------------
-- Utility functions specific to this job.
-------------------------------------------------------------------------------------------------------------------

function determine_haste_group()
	-- We have three groups of DW in gear: Charis body, Charis neck + DW earrings, and Patentia Sash.

	-- For high haste, we want to be able to drop one of the 10% groups (body, preferably).
	-- High haste buffs:
	-- 2x Marches + Haste
	-- 2x Marches + Haste Samba
	-- 1x March + Haste + Haste Samba
	-- Embrava + any other haste buff
	
	-- For max haste, we probably need to consider dropping all DW gear.
	-- Max haste buffs:
	-- Embrava + Haste/March + Haste Samba
	-- 2x March + Haste + Haste Samba

	classes.CustomMeleeGroups:clear()
	
	if buffactive.embrava and (buffactive.haste or buffactive.march) then
		classes.CustomMeleeGroups:append('MaxHaste')
	elseif buffactive.march == 2 and buffactive.haste then
		classes.CustomMeleeGroups:append('MaxHaste')
	elseif buffactive.embrava and (buffactive.haste or buffactive.march) then
		classes.CustomMeleeGroups:append('HighHaste')
	elseif buffactive.march == 1 and buffactive.haste then
		classes.CustomMeleeGroups:append('HighHaste')
	elseif buffactive.march == 2 and buffactive.haste then
		classes.CustomMeleeGroups:append('HighHaste')
	end
end

function define_roll_values()
	rolls = {
		["Corsair's Roll"]   = {lucky=5, unlucky=9, bonus="Experience Points"},
		["Ninja Roll"]	   = {lucky=4, unlucky=8, bonus="Evasion"},
		["Hunter's Roll"]	= {lucky=4, unlucky=8, bonus="Accuracy"},
		["Chaos Roll"]	   = {lucky=4, unlucky=8, bonus="Attack"},
		["Magus's Roll"]	 = {lucky=2, unlucky=6, bonus="Magic Defense"},
		["Healer's Roll"]	= {lucky=3, unlucky=7, bonus="Cure Potency Received"},
		["Drachen Roll"]	  = {lucky=4, unlucky=8, bonus="Pet Magic Accuracy/Attack"},
		["Choral Roll"]	  = {lucky=2, unlucky=6, bonus="Spell Interruption Rate"},
		["Monk's Roll"]	  = {lucky=3, unlucky=7, bonus="Subtle Blow"},
		["Beast Roll"]	   = {lucky=4, unlucky=8, bonus="Pet Attack"},
		["Samurai Roll"]	 = {lucky=2, unlucky=6, bonus="Store TP"},
		["Evoker's Roll"]	= {lucky=5, unlucky=9, bonus="Refresh"},
		["Rogue's Roll"]	 = {lucky=5, unlucky=9, bonus="Critical Hit Rate"},
		["Warlock's Roll"]   = {lucky=4, unlucky=8, bonus="Magic Accuracy"},
		["Fighter's Roll"]   = {lucky=5, unlucky=9, bonus="Double Attack Rate"},
		["Puppet Roll"]	 = {lucky=3, unlucky=7, bonus="Pet Magic Attack/Accuracy"},
		["Gallant's Roll"]   = {lucky=3, unlucky=7, bonus="Defense"},
		["Wizard's Roll"]	= {lucky=5, unlucky=9, bonus="Magic Attack"},
		["Dancer's Roll"]	= {lucky=3, unlucky=7, bonus="Regen"},
		["Scholar's Roll"]   = {lucky=2, unlucky=6, bonus="Conserve MP"},
		["Naturalist's Roll"]	   = {lucky=3, unlucky=7, bonus="Enh. Magic Duration"},
		["Runeist's Roll"]	   = {lucky=4, unlucky=8, bonus="Magic Evasion"},
		["Bolter's Roll"]	= {lucky=3, unlucky=9, bonus="Movement Speed"},
		["Caster's Roll"]	= {lucky=2, unlucky=7, bonus="Fast Cast"},
		["Courser's Roll"]   = {lucky=3, unlucky=9, bonus="Snapshot"},
		["Blitzer's Roll"]   = {lucky=4, unlucky=9, bonus="Attack Delay"},
		["Tactician's Roll"] = {lucky=5, unlucky=8, bonus="Regain"},
		["Allies's Roll"]	= {lucky=3, unlucky=10, bonus="Skillchain Damage"},
		["Miser's Roll"]	 = {lucky=5, unlucky=7, bonus="Save TP"},
		["Companion's Roll"] = {lucky=2, unlucky=10, bonus="Pet Regain and Regen"},
		["Avenger's Roll"]   = {lucky=4, unlucky=8, bonus="Counter Rate"},
	}
end

function display_roll_info(spell)
	rollinfo = rolls[spell.english]
	local rollsize = (state.LuzafRing.value and 'Large') or 'Small'

	if rollinfo then
		add_to_chat(104, '[ Lucky: '..tostring(rollinfo.lucky)..' / Unlucky: '..tostring(rollinfo.unlucky)..' ] '..spell.english..': '..rollinfo.bonus..' ('..rollsize..') ')
	end
end


-- Determine whether we have sufficient ammo for the action being attempted.
function do_bullet_checks(spell, spellMap, eventArgs)
	local bullet_name
	local bullet_min_count = 1
	
	if spell.type == 'WeaponSkill' then
		if spell.skill == "Marksmanship" then
			if spell.element == 'None' then
				-- physical weaponskills
				bullet_name = gear.WSbullet
			else
				-- magical weaponskills
				bullet_name = gear.MAbullet
			end
		else
			-- Ignore non-ranged weaponskills
			return
		end
	elseif spell.type == 'CorsairShot' then
		bullet_name = gear.QDbullet
	elseif spell.action_type == 'Ranged Attack' then
		bullet_name = gear.RAbullet
		if buffactive['Triple Shot'] then
			bullet_min_count = 3
		end
	end
	
	local available_bullets = player.inventory[bullet_name] or player.wardrobe[bullet_name]
	
	-- If no ammo is available, give appropriate warning and end.
	if not available_bullets then
		if spell.type == 'CorsairShot' and player.equipment.ammo ~= 'empty' then
			add_to_chat(104, 'No Quick Draw ammo left.  Using what\'s currently equipped ('..player.equipment.ammo..').')
			return
		elseif spell.type == 'WeaponSkill' and player.equipment.ammo == gear.RAbullet then
--			add_to_chat(104, 'No weaponskill ammo left.  Using what\'s currently equipped (standard ranged bullets: '..player.equipment.ammo..').')
			return
		else
			add_to_chat(104, 'No ammo ('..tostring(bullet_name)..') available for that action.')
			eventArgs.cancel = true
			return
		end
	end
	
	-- Don't allow shooting or weaponskilling with ammo reserved for quick draw.
	if spell.type ~= 'CorsairShot' and bullet_name == gear.QDbullet and available_bullets.count <= bullet_min_count then
		add_to_chat(104, 'No ammo will be left for Quick Draw.  Cancelling.')
		eventArgs.cancel = true
		return
	end
	
	-- Low ammo warning.
	if spell.type ~= 'CorsairShot' and state.warned.value == false
		and available_bullets.count > 1 and available_bullets.count <= options.ammo_warning_limit then
		local msg = '*****  LOW AMMO WARNING: '..bullet_name..' *****'
		--local border = string.repeat("*", #msg)
		local border = ""
		for i = 1, #msg do
			border = border .. "*"
		end
		
		add_to_chat(104, border)
		add_to_chat(104, msg)
		add_to_chat(104, border)

		state.warned:set()
	elseif available_bullets.count > options.ammo_warning_limit and state.warned then
		state.warned:reset()
	end
end



function status_change(new,old)
	if new == 'Engaged' then
		equip(sets.TP[sets.TP.index[TP_ind2]])
	else
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
	end
end





-- Select default macro book on initial load or subjob change.
function select_default_macro_book()
	set_macro_page(1, 17)
end
