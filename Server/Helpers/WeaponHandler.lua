Quaternius = {
	Weapons = {
		AssaultRifle_01 = function(location, rotation)
			return Weapon(
				location or Vector(),
				rotation or Rotator(),
				"PolygonWorld::SK_AssaultRifle_01",	-- Model
				0,						-- Collision (Normal)
				true,					-- Gravity Enabled
				25,						-- Ammo in the Clip
				1000,					-- Ammo in the Bag
				25,						-- Clip Capacity
				20,						-- Base Damage
				40,						-- Spread
				1,						-- Bullet Count (1 for common weapons, > 1 for shotguns)
				25,						-- Ammo to Reload (Ammo Clip for common weapons, 1 for shotguns)
				20000,					-- Max Bullet Distance
				20000,					-- Bullet Speed (visual only)
				Color(100, 58, 0),		-- Bullet Color
				0.75,					-- Sight's FOV multiplier
				Vector(-5, 0, -17.5),	-- Sight Location
				Rotator(-1, 0, 0),		-- Sight Rotation
				Vector(30, 0, 8.5),		-- Left Hand Location
				Rotator(0, 60, 90),		-- Left Hand Rotation
				Vector(-6, 0, 0),		-- Right Hand Offset
				HandlingMode.DoubleHandedWeapon,
				0.09,					-- Cadence (1 shot at each 0.15seconds)
				true,					-- Can Hold Use (keep pressing to keep firing, common to automatic weapons)
				false,					-- Need to release to Fire (common to Bows)
				"NanosWorld::P_Bullet_Trail",							-- Bullet Trail Particle
				"NanosWorld::P_Weapon_BarrelSmoke",						-- Barrel Particle
				"NanosWorld::P_Weapon_Shells_762x39",					-- Shells Particle
				"NanosWorld::A_Rifle_Dry",								-- Weapon's Dry Sound
				"NanosWorld::A_Rifle_Load",								-- Weapon's Load Sound
				"NanosWorld::A_Rifle_Unload",							-- Weapon's Unload Sound
				"NanosWorld::A_AimZoom",								-- Weapon's Zooming Sound
				"NanosWorld::A_Rattle",									-- Weapon's Aiming Sound
				"NanosWorld::A_AK74U_Shot",								-- Weapon's Shot Sound
				"NanosWorld::AM_Mannequin_Reload_Rifle",				-- Character's Reloading Animation
				"NanosWorld::AM_Mannequin_Sight_Fire",					-- Character's Aiming Animation
				"NanosWorld::SM_AP5_Mag_Empty",						-- Magazine Mesh
				CrosshairType.Regular
			)
		end,

		AssaultRifle_02 = function(location, rotation)
			return Weapon(
				location or Vector(),
				rotation or Rotator(),
				"PolygonWorld::SK_AssaultRifle_02",	-- Model
				0,						-- Collision (Normal)
				true,					-- Gravity Enabled
				30,						-- Ammo in the Clip
				1000,					-- Ammo in the Bag
				30,						-- Clip Capacity
				30,						-- Base Damage
				30,						-- Spread
				1,						-- Bullet Count (1 for common weapons, > 1 for shotguns)
				30,						-- Ammo to Reload (Ammo Clip for common weapons, 1 for shotguns)
				20000,					-- Max Bullet Distance
				20000,					-- Bullet Speed (visual only)
				Color(100, 58, 0),		-- Bullet Color
				0.5,					-- Sight's FOV multiplier
				Vector(-5, 0, -19),	-- Sight Location
				Rotator(-1, 0, 0),		-- Sight Rotation
				Vector(30, 0, 8.5),		-- Left Hand Location
				Rotator(0, 60, 90),		-- Left Hand Rotation
				Vector(-6, 0, 0),		-- Right Hand Offset
				HandlingMode.DoubleHandedWeapon,
				0.09,					-- Cadence (1 shot at each 0.15seconds)
				true,					-- Can Hold Use (keep pressing to keep firing, common to automatic weapons)
				false,					-- Need to release to Fire (common to Bows)
				"NanosWorld::P_Bullet_Trail",							-- Bullet Trail Particle
				"NanosWorld::P_Weapon_BarrelSmoke",						-- Barrel Particle
				"NanosWorld::P_Weapon_Shells_762x39",					-- Shells Particle
				"NanosWorld::A_Rifle_Dry",								-- Weapon's Dry Sound
				"NanosWorld::A_Rifle_Load",								-- Weapon's Load Sound
				"NanosWorld::A_Rifle_Unload",							-- Weapon's Unload Sound
				"NanosWorld::A_AimZoom",								-- Weapon's Zooming Sound
				"NanosWorld::A_Rattle",									-- Weapon's Aiming Sound
				"NanosWorld::A_AK74U_Shot",								-- Weapon's Shot Sound
				"NanosWorld::AM_Mannequin_Reload_Rifle",				-- Character's Reloading Animation
				"NanosWorld::AM_Mannequin_Sight_Fire",					-- Character's Aiming Animation
				"NanosWorld::SM_AK47_Mag_Empty",						-- Magazine Mesh
				CrosshairType.Regular
			)
		end,

		AssaultRifle_03 = function(location, rotation)
			return Weapon(
				location or Vector(),
				rotation or Rotator(),
				"PolygonWorld::SK_AssaultRifle_03",	-- Model
				0,						-- Collision (Normal)
				true,					-- Gravity Enabled
				30,						-- Ammo in the Clip
				1000,					-- Ammo in the Bag
				30,						-- Clip Capacity
				30,						-- Base Damage
				30,						-- Spread
				1,						-- Bullet Count (1 for common weapons, > 1 for shotguns)
				30,						-- Ammo to Reload (Ammo Clip for common weapons, 1 for shotguns)
				20000,					-- Max Bullet Distance
				20000,					-- Bullet Speed (visual only)
				Color(100, 58, 0),		-- Bullet Color
				0.5,					-- Sight's FOV multiplier
				Vector(-5, 0, -19),	-- Sight Location
				Rotator(-1, 0, 0),		-- Sight Rotation
				Vector(30, 0, 8.5),		-- Left Hand Location
				Rotator(0, 60, 90),		-- Left Hand Rotation
				Vector(-6, 0, 0),		-- Right Hand Offset
				HandlingMode.DoubleHandedWeapon,
				0.1,					-- Cadence (1 shot at each 0.15seconds)
				true,					-- Can Hold Use (keep pressing to keep firing, common to automatic weapons)
				false,					-- Need to release to Fire (common to Bows)
				"NanosWorld::P_Bullet_Trail",							-- Bullet Trail Particle
				"NanosWorld::P_Weapon_BarrelSmoke",						-- Barrel Particle
				"NanosWorld::P_Weapon_Shells_762x39",					-- Shells Particle
				"NanosWorld::A_Rifle_Dry",								-- Weapon's Dry Sound
				"NanosWorld::A_Rifle_Load",								-- Weapon's Load Sound
				"NanosWorld::A_Rifle_Unload",							-- Weapon's Unload Sound
				"NanosWorld::A_AimZoom",								-- Weapon's Zooming Sound
				"NanosWorld::A_Rattle",									-- Weapon's Aiming Sound
				"NanosWorld::A_AK47_Shot",								-- Weapon's Shot Sound
				"NanosWorld::AM_Mannequin_Reload_Rifle",				-- Character's Reloading Animation
				"NanosWorld::AM_Mannequin_Sight_Fire",					-- Character's Aiming Animation
				"NanosWorld::SM_AK47_Mag_Empty",						-- Magazine Mesh
				CrosshairType.Regular
			)
		end,

		AssaultRifle_04 = function(location, rotation)
			return Weapon(
				location or Vector(),
				rotation or Rotator(),
				"PolygonWorld::SK_AssaultRifle_04",	-- Model
				0,						-- Collision (Normal)
				true,					-- Gravity Enabled
				30,						-- Ammo in the Clip
				1000,					-- Ammo in the Bag
				30,						-- Clip Capacity
				30,						-- Base Damage
				30,						-- Spread
				1,						-- Bullet Count (1 for common weapons, > 1 for shotguns)
				30,						-- Ammo to Reload (Ammo Clip for common weapons, 1 for shotguns)
				20000,					-- Max Bullet Distance
				20000,					-- Bullet Speed (visual only)
				Color(100, 58, 0),		-- Bullet Color
				0.5,					-- Sight's FOV multiplier
				Vector(-5, 0, -19),	-- Sight Location
				Rotator(-1, 0, 0),		-- Sight Rotation
				Vector(30, 0, 8.5),		-- Left Hand Location
				Rotator(0, 60, 90),		-- Left Hand Rotation
				Vector(-6, 0, 0),		-- Right Hand Offset
				HandlingMode.DoubleHandedWeapon,
				0.1,					-- Cadence (1 shot at each 0.15seconds)
				true,					-- Can Hold Use (keep pressing to keep firing, common to automatic weapons)
				false,					-- Need to release to Fire (common to Bows)
				"NanosWorld::P_Bullet_Trail",							-- Bullet Trail Particle
				"NanosWorld::P_Weapon_BarrelSmoke",						-- Barrel Particle
				"NanosWorld::P_Weapon_Shells_762x39",					-- Shells Particle
				"NanosWorld::A_Rifle_Dry",								-- Weapon's Dry Sound
				"NanosWorld::A_Rifle_Load",								-- Weapon's Load Sound
				"NanosWorld::A_Rifle_Unload",							-- Weapon's Unload Sound
				"NanosWorld::A_AimZoom",								-- Weapon's Zooming Sound
				"NanosWorld::A_Rattle",									-- Weapon's Aiming Sound
				"NanosWorld::A_AK47_Shot",								-- Weapon's Shot Sound
				"NanosWorld::AM_Mannequin_Reload_Rifle",				-- Character's Reloading Animation
				"NanosWorld::AM_Mannequin_Sight_Fire",					-- Character's Aiming Animation
				"NanosWorld::SM_AK47_Mag_Empty",						-- Magazine Mesh
				CrosshairType.Regular
			)
		end,

		AssaultRifle_05 = function(location, rotation)
			return Weapon(
				location or Vector(),
				rotation or Rotator(),
				"PolygonWorld::SK_AssaultRifle_05",	-- Model
				0,						-- Collision (Normal)
				true,					-- Gravity Enabled
				30,						-- Ammo in the Clip
				1000,					-- Ammo in the Bag
				30,						-- Clip Capacity
				30,						-- Base Damage
				30,						-- Spread
				1,						-- Bullet Count (1 for common weapons, > 1 for shotguns)
				30,						-- Ammo to Reload (Ammo Clip for common weapons, 1 for shotguns)
				20000,					-- Max Bullet Distance
				20000,					-- Bullet Speed (visual only)
				Color(100, 58, 0),		-- Bullet Color
				0.5,					-- Sight's FOV multiplier
				Vector(-5, 0, -19),	-- Sight Location
				Rotator(-1, 0, 0),		-- Sight Rotation
				Vector(30, 0, 8.5),		-- Left Hand Location
				Rotator(0, 60, 90),		-- Left Hand Rotation
				Vector(-6, 0, 0),		-- Right Hand Offset
				HandlingMode.DoubleHandedWeapon,
				0.1,					-- Cadence (1 shot at each 0.15seconds)
				true,					-- Can Hold Use (keep pressing to keep firing, common to automatic weapons)
				false,					-- Need to release to Fire (common to Bows)
				"NanosWorld::P_Bullet_Trail",							-- Bullet Trail Particle
				"NanosWorld::P_Weapon_BarrelSmoke",						-- Barrel Particle
				"NanosWorld::P_Weapon_Shells_762x39",					-- Shells Particle
				"NanosWorld::A_Rifle_Dry",								-- Weapon's Dry Sound
				"NanosWorld::A_Rifle_Load",								-- Weapon's Load Sound
				"NanosWorld::A_Rifle_Unload",							-- Weapon's Unload Sound
				"NanosWorld::A_AimZoom",								-- Weapon's Zooming Sound
				"NanosWorld::A_Rattle",									-- Weapon's Aiming Sound
				"NanosWorld::A_AK47_Shot",								-- Weapon's Shot Sound
				"NanosWorld::AM_Mannequin_Reload_Rifle",				-- Character's Reloading Animation
				"NanosWorld::AM_Mannequin_Sight_Fire",					-- Character's Aiming Animation
				"NanosWorld::SM_AK47_Mag_Empty",						-- Magazine Mesh
				CrosshairType.Regular
			)
		end,

		AssaultRifle_06 = function(location, rotation)
			return Weapon(
				location or Vector(),
				rotation or Rotator(),
				"PolygonWorld::SK_AssaultRifle_06",	-- Model
				0,						-- Collision (Normal)
				true,					-- Gravity Enabled
				30,						-- Ammo in the Clip
				1000,					-- Ammo in the Bag
				30,						-- Clip Capacity
				30,						-- Base Damage
				30,						-- Spread
				1,						-- Bullet Count (1 for common weapons, > 1 for shotguns)
				30,						-- Ammo to Reload (Ammo Clip for common weapons, 1 for shotguns)
				20000,					-- Max Bullet Distance
				20000,					-- Bullet Speed (visual only)
				Color(100, 58, 0),		-- Bullet Color
				0.5,					-- Sight's FOV multiplier
				Vector(-20, 0, -22),	-- Sight Location
				Rotator(0, 0, 0),		-- Sight Rotation
				Vector(30, 0, 10),		-- Left Hand Location
				Rotator(0, 60, 90),		-- Left Hand Rotation
				Vector(-6, 0, 0),		-- Right Hand Offset
				HandlingMode.DoubleHandedWeapon,
				0.1,					-- Cadence (1 shot at each 0.15seconds)
				true,					-- Can Hold Use (keep pressing to keep firing, common to automatic weapons)
				false,					-- Need to release to Fire (common to Bows)
				"NanosWorld::P_Bullet_Trail",							-- Bullet Trail Particle
				"NanosWorld::P_Weapon_BarrelSmoke",						-- Barrel Particle
				"NanosWorld::P_Weapon_Shells_556x45",					-- Shells Particle
				"NanosWorld::A_Rifle_Dry",								-- Weapon's Dry Sound
				"NanosWorld::A_Rifle_Load",								-- Weapon's Load Sound
				"NanosWorld::A_Rifle_Unload",							-- Weapon's Unload Sound
				"NanosWorld::A_AimZoom",								-- Weapon's Zooming Sound
				"NanosWorld::A_Rattle",									-- Weapon's Aiming Sound
				"NanosWorld::A_AR15_A_Shot",								-- Weapon's Shot Sound
				"NanosWorld::AM_Mannequin_Reload_Rifle",				-- Character's Reloading Animation
				"NanosWorld::AM_Mannequin_Sight_Fire",					-- Character's Aiming Animation
				"NanosWorld::SM_AR4_Mag_Empty",						-- Magazine Mesh
				CrosshairType.Regular
			)
		end,

		AssaultRifle_07 = function(location, rotation)
			return Weapon(
				location or Vector(),
				rotation or Rotator(),
				"PolygonWorld::SK_AssaultRifle_07",	-- Model
				0,						-- Collision (Normal)
				true,					-- Gravity Enabled
				30,						-- Ammo in the Clip
				1000,					-- Ammo in the Bag
				30,						-- Clip Capacity
				30,						-- Base Damage
				30,						-- Spread
				1,						-- Bullet Count (1 for common weapons, > 1 for shotguns)
				30,						-- Ammo to Reload (Ammo Clip for common weapons, 1 for shotguns)
				20000,					-- Max Bullet Distance
				20000,					-- Bullet Speed (visual only)
				Color(100, 58, 0),		-- Bullet Color
				0.5,					-- Sight's FOV multiplier
				Vector(-20, 0, -22),	-- Sight Location
				Rotator(0, 0, 0),		-- Sight Rotation
				Vector(30, 0, 12),		-- Left Hand Location
				Rotator(0, 60, 90),		-- Left Hand Rotation
				Vector(-10, 0, 0),		-- Right Hand Offset
				HandlingMode.DoubleHandedWeapon,
				0.1,					-- Cadence (1 shot at each 0.15seconds)
				true,					-- Can Hold Use (keep pressing to keep firing, common to automatic weapons)
				false,					-- Need to release to Fire (common to Bows)
				"NanosWorld::P_Bullet_Trail",							-- Bullet Trail Particle
				"NanosWorld::P_Weapon_BarrelSmoke",						-- Barrel Particle
				"NanosWorld::P_Weapon_Shells_556x45",					-- Shells Particle
				"NanosWorld::A_Rifle_Dry",								-- Weapon's Dry Sound
				"NanosWorld::A_Rifle_Load",								-- Weapon's Load Sound
				"NanosWorld::A_Rifle_Unload",							-- Weapon's Unload Sound
				"NanosWorld::A_AimZoom",								-- Weapon's Zooming Sound
				"NanosWorld::A_Rattle",									-- Weapon's Aiming Sound
				"NanosWorld::A_AR15_B_Shot",								-- Weapon's Shot Sound
				"NanosWorld::AM_Mannequin_Reload_Rifle",				-- Character's Reloading Animation
				"NanosWorld::AM_Mannequin_Sight_Fire",					-- Character's Aiming Animation
				"NanosWorld::SM_AR4_Mag_Empty",						-- Magazine Mesh
				CrosshairType.Regular
			)
		end,

		AssaultRifle_08 = function(location, rotation)
			return Weapon(
				location or Vector(),
				rotation or Rotator(),
				"PolygonWorld::SK_AssaultRifle_08",	-- Model
				0,						-- Collision (Normal)
				true,					-- Gravity Enabled
				30,						-- Ammo in the Clip
				1000,					-- Ammo in the Bag
				30,						-- Clip Capacity
				30,						-- Base Damage
				40,						-- Spread
				1,						-- Bullet Count (1 for common weapons, > 1 for shotguns)
				30,						-- Ammo to Reload (Ammo Clip for common weapons, 1 for shotguns)
				20000,					-- Max Bullet Distance
				20000,					-- Bullet Speed (visual only)
				Color(100, 58, 0),		-- Bullet Color
				0.5,					-- Sight's FOV multiplier
				Vector(-15, 0, -21),	-- Sight Location
				Rotator(0, 0, 0),		-- Sight Rotation
				Vector(30, 0, 12),		-- Left Hand Location
				Rotator(0, 60, 90),		-- Left Hand Rotation
				Vector(-10, 0, 0),		-- Right Hand Offset
				HandlingMode.DoubleHandedWeapon,
				0.09,					-- Cadence (1 shot at each 0.15seconds)
				true,					-- Can Hold Use (keep pressing to keep firing, common to automatic weapons)
				false,					-- Need to release to Fire (common to Bows)
				"NanosWorld::P_Bullet_Trail",							-- Bullet Trail Particle
				"NanosWorld::P_Weapon_BarrelSmoke",						-- Barrel Particle
				"NanosWorld::P_Weapon_Shells_762x39",					-- Shells Particle
				"NanosWorld::A_Rifle_Dry",								-- Weapon's Dry Sound
				"NanosWorld::A_Rifle_Load",								-- Weapon's Load Sound
				"NanosWorld::A_Rifle_Unload",							-- Weapon's Unload Sound
				"NanosWorld::A_AimZoom",								-- Weapon's Zooming Sound
				"NanosWorld::A_Rattle",									-- Weapon's Aiming Sound
				"NanosWorld::A_AR15_A_Shot",								-- Weapon's Shot Sound
				"NanosWorld::AM_Mannequin_Reload_Rifle",				-- Character's Reloading Animation
				"NanosWorld::AM_Mannequin_Sight_Fire",					-- Character's Aiming Animation
				"NanosWorld::SM_AR4_Mag_Empty",						-- Magazine Mesh
				CrosshairType.Regular
			)
		end,

		AssaultRifle_09 = function(location, rotation)
			return Weapon(
				location or Vector(),
				rotation or Rotator(),
				"PolygonWorld::SK_AssaultRifle_09",	-- Model
				0,						-- Collision (Normal)
				true,					-- Gravity Enabled
				30,						-- Ammo in the Clip
				1000,					-- Ammo in the Bag
				30,						-- Clip Capacity
				30,						-- Base Damage
				40,						-- Spread
				1,						-- Bullet Count (1 for common weapons, > 1 for shotguns)
				30,						-- Ammo to Reload (Ammo Clip for common weapons, 1 for shotguns)
				20000,					-- Max Bullet Distance
				20000,					-- Bullet Speed (visual only)
				Color(100, 58, 0),		-- Bullet Color
				0.5,					-- Sight's FOV multiplier
				Vector(-15, 0, -21),	-- Sight Location
				Rotator(0, 0, 0),		-- Sight Rotation
				Vector(25, -5, 12),		-- Left Hand Location
				Rotator(0, 60, 160),	-- Left Hand Rotation
				Vector(-10, 0, 0),		-- Right Hand Offset
				HandlingMode.DoubleHandedWeapon,
				0.09,					-- Cadence (1 shot at each 0.15seconds)
				true,					-- Can Hold Use (keep pressing to keep firing, common to automatic weapons)
				false,					-- Need to release to Fire (common to Bows)
				"NanosWorld::P_Bullet_Trail",							-- Bullet Trail Particle
				"NanosWorld::P_Weapon_BarrelSmoke",						-- Barrel Particle
				"NanosWorld::P_Weapon_Shells_762x39",					-- Shells Particle
				"NanosWorld::A_Rifle_Dry",								-- Weapon's Dry Sound
				"NanosWorld::A_Rifle_Load",								-- Weapon's Load Sound
				"NanosWorld::A_Rifle_Unload",							-- Weapon's Unload Sound
				"NanosWorld::A_AimZoom",								-- Weapon's Zooming Sound
				"NanosWorld::A_Rattle",									-- Weapon's Aiming Sound
				"NanosWorld::A_AR15_B_Shot",								-- Weapon's Shot Sound
				"NanosWorld::AM_Mannequin_Reload_Rifle",				-- Character's Reloading Animation
				"NanosWorld::AM_Mannequin_Sight_Fire",					-- Character's Aiming Animation
				"NanosWorld::SM_AR4_Mag_Empty",						-- Magazine Mesh
				CrosshairType.Regular
			)
		end,

		Bullpup_01 = function(location, rotation)
			return Weapon(
				location or Vector(),
				rotation or Rotator(),
				"PolygonWorld::SK_Bullpup_01",	-- Model
				0,						-- Collision (Normal)
				true,					-- Gravity Enabled
				30,						-- Ammo in the Clip
				1000,					-- Ammo in the Bag
				30,						-- Clip Capacity
				40,						-- Base Damage
				25,						-- Spread
				1,						-- Bullet Count (1 for common weapons, > 1 for shotguns)
				30,						-- Ammo to Reload (Ammo Clip for common weapons, 1 for shotguns)
				20000,					-- Max Bullet Distance
				20000,					-- Bullet Speed (visual only)
				Color(100, 58, 0),		-- Bullet Color
				0.5,					-- Sight's FOV multiplier
				Vector(-15, 0, -23),	-- Sight Location
				Rotator(0, 0, 0),		-- Sight Rotation
				Vector(20, 0, 12),		-- Left Hand Location
				Rotator(0, 60, 90),		-- Left Hand Rotation
				Vector(-15, 0, -5),		-- Right Hand Offset
				HandlingMode.DoubleHandedWeapon,
				0.2,					-- Cadence (1 shot at each 0.15seconds)
				true,					-- Can Hold Use (keep pressing to keep firing, common to automatic weapons)
				false,					-- Need to release to Fire (common to Bows)
				"NanosWorld::P_Bullet_Trail",							-- Bullet Trail Particle
				"NanosWorld::P_Weapon_BarrelSmoke",						-- Barrel Particle
				"NanosWorld::P_Weapon_Shells_762x39",					-- Shells Particle
				"NanosWorld::A_Rifle_Dry",								-- Weapon's Dry Sound
				"NanosWorld::A_Rifle_Load",								-- Weapon's Load Sound
				"NanosWorld::A_Rifle_Unload",							-- Weapon's Unload Sound
				"NanosWorld::A_AimZoom",								-- Weapon's Zooming Sound
				"NanosWorld::A_Rattle",									-- Weapon's Aiming Sound
				"NanosWorld::A_GunFire",								-- Weapon's Shot Sound
				"NanosWorld::AM_Mannequin_Reload_Rifle",				-- Character's Reloading Animation
				"NanosWorld::AM_Mannequin_Sight_Fire",					-- Character's Aiming Animation
				"NanosWorld::SM_AP5_Mag_Empty",						-- Magazine Mesh
				CrosshairType.RegularX
			)
		end,

		Bullpup_02 = function(location, rotation)
			return Weapon(
				location or Vector(),
				rotation or Rotator(),
				"PolygonWorld::SK_Bullpup_02",	-- Model
				0,						-- Collision (Normal)
				true,					-- Gravity Enabled
				30,						-- Ammo in the Clip
				1000,					-- Ammo in the Bag
				30,						-- Clip Capacity
				40,						-- Base Damage
				40,						-- Spread
				1,						-- Bullet Count (1 for common weapons, > 1 for shotguns)
				30,						-- Ammo to Reload (Ammo Clip for common weapons, 1 for shotguns)
				20000,					-- Max Bullet Distance
				20000,					-- Bullet Speed (visual only)
				Color(100, 58, 0),		-- Bullet Color
				0.5,					-- Sight's FOV multiplier
				Vector(-15, 0, -23),	-- Sight Location
				Rotator(0, 0, 0),		-- Sight Rotation
				Vector(20, 0, 10),		-- Left Hand Location
				Rotator(0, 60, 90),		-- Left Hand Rotation
				Vector(-15, 0, -5),		-- Right Hand Offset
				HandlingMode.DoubleHandedWeapon,
				0.2,					-- Cadence (1 shot at each 0.15seconds)
				true,					-- Can Hold Use (keep pressing to keep firing, common to automatic weapons)
				false,					-- Need to release to Fire (common to Bows)
				"NanosWorld::P_Bullet_Trail",							-- Bullet Trail Particle
				"NanosWorld::P_Weapon_BarrelSmoke",						-- Barrel Particle
				"NanosWorld::P_Weapon_Shells_762x39",					-- Shells Particle
				"NanosWorld::A_Rifle_Dry",								-- Weapon's Dry Sound
				"NanosWorld::A_Rifle_Load",								-- Weapon's Load Sound
				"NanosWorld::A_Rifle_Unload",							-- Weapon's Unload Sound
				"NanosWorld::A_AimZoom",								-- Weapon's Zooming Sound
				"NanosWorld::A_Rattle",									-- Weapon's Aiming Sound
				"NanosWorld::A_GunFire",								-- Weapon's Shot Sound
				"NanosWorld::AM_Mannequin_Reload_Rifle",				-- Character's Reloading Animation
				"NanosWorld::AM_Mannequin_Sight_Fire",					-- Character's Aiming Animation
				"NanosWorld::SM_AP5_Mag_Empty",						-- Magazine Mesh
				CrosshairType.RegularX
			)
		end,

		Bullpup_03 = function(location, rotation)
			return Weapon(
				location or Vector(),
				rotation or Rotator(),
				"PolygonWorld::SK_Bullpup_03",	-- Model
				0,						-- Collision (Normal)
				true,					-- Gravity Enabled
				30,						-- Ammo in the Clip
				1000,					-- Ammo in the Bag
				30,						-- Clip Capacity
				40,						-- Base Damage
				25,						-- Spread
				1,						-- Bullet Count (1 for common weapons, > 1 for shotguns)
				30,						-- Ammo to Reload (Ammo Clip for common weapons, 1 for shotguns)
				20000,					-- Max Bullet Distance
				20000,					-- Bullet Speed (visual only)
				Color(100, 58, 0),		-- Bullet Color
				0.5,					-- Sight's FOV multiplier
				Vector(-15, 0, -22),	-- Sight Location
				Rotator(0, 0, 0),		-- Sight Rotation
				Vector(23, 0, 10),		-- Left Hand Location
				Rotator(0, 60, 90),		-- Left Hand Rotation
				Vector(-15, 0, -5),		-- Right Hand Offset
				HandlingMode.DoubleHandedWeapon,
				0.2,					-- Cadence (1 shot at each 0.15seconds)
				true,					-- Can Hold Use (keep pressing to keep firing, common to automatic weapons)
				false,					-- Need to release to Fire (common to Bows)
				"NanosWorld::P_Bullet_Trail",							-- Bullet Trail Particle
				"NanosWorld::P_Weapon_BarrelSmoke",						-- Barrel Particle
				"NanosWorld::P_Weapon_Shells_762x39",					-- Shells Particle
				"NanosWorld::A_Rifle_Dry",								-- Weapon's Dry Sound
				"NanosWorld::A_Rifle_Load",								-- Weapon's Load Sound
				"NanosWorld::A_Rifle_Unload",							-- Weapon's Unload Sound
				"NanosWorld::A_AimZoom",								-- Weapon's Zooming Sound
				"NanosWorld::A_Rattle",									-- Weapon's Aiming Sound
				"NanosWorld::A_GunFire",								-- Weapon's Shot Sound
				"NanosWorld::AM_Mannequin_Reload_Rifle",				-- Character's Reloading Animation
				"NanosWorld::AM_Mannequin_Sight_Fire",					-- Character's Aiming Animation
				"NanosWorld::SM_AK47_Mag_Empty",						-- Magazine Mesh
				CrosshairType.RegularX
			)
		end,

		Pistol_01 = function(location, rotation)
			return Weapon(
				location or Vector(),
				rotation or Rotator(),
				"PolygonWorld::SK_Pistol_01",	-- Model
				0,						-- Collision (Normal)
				true,					-- Gravity Enabled
				9,						-- Ammo in the Clip
				1000,					-- Ammo in the Bag
				9,						-- Clip Capacity
				15,						-- Base Damage
				20,						-- Spread
				1,						-- Bullet Count (1 for common weapons, > 1 for shotguns)
				9,						-- Ammo to Reload (Ammo Clip for common weapons, 1 for shotguns)
				20000,					-- Max Bullet Distance
				20000,					-- Bullet Speed (visual only)
				Color(13, 100, 0),		-- Bullet Color
				0.6,					-- Sight's FOV multiplier
				Vector(0, 0, -11.5),		-- Sight Location
				Rotator(-0.5, 0, 0),	-- Sight Rotation
				Vector(2, -1.5, 0),		-- Left Hand Location
				Rotator(0, 50, 130),	-- Left Hand Rotation
				Vector(-30, 0, 5),		-- Right Hand Offset
				HandlingMode.SingleHandedWeapon,
				0.15,					-- Cadence
				false,					-- Can Hold Use (keep pressing to keep firing, common to automatic weapons)
				false,					-- Need to release to Fire (common to Bows)
				"NanosWorld::P_Bullet_Trail",						-- Bullet Trail Particle
				"NanosWorld::P_Weapon_BarrelSmoke",					-- Barrel Particle
				"NanosWorld::P_Weapon_Shells_9mm",					-- Shells Particle
				"NanosWorld::A_Pistol_Dry",							-- Weapon's Dry Sound
				"NanosWorld::A_Pistol_Load",						-- Weapon's Load Sound
				"NanosWorld::A_Pistol_Unload",						-- Weapon's Unload Sound
				"NanosWorld::A_AimZoom",							-- Weapon's Zooming Sound
				"NanosWorld::A_Rattle",								-- Weapon's Aiming Sound
				"NanosWorld::A_P226_Shot",							-- Weapon's Shot Sound
				"NanosWorld::AM_Mannequin_Reload_Pistol",			-- Character's Reloading Animation
				"NanosWorld::AM_Mannequin_Sight_Fire",				-- Character's Aiming Animation
				"NanosWorld::SM_Glock_Mag_Empty",					-- Magazine Mesh
				CrosshairType.Circle
			)
		end,

		Pistol_02 = function(location, rotation)
			return Weapon(
				location or Vector(),
				rotation or Rotator(),
				"PolygonWorld::SK_Pistol_02",	-- Model
				0,						-- Collision (Normal)
				true,					-- Gravity Enabled
				17,						-- Ammo in the Clip
				1000,					-- Ammo in the Bag
				17,						-- Clip Capacity
				15,						-- Base Damage
				20,						-- Spread
				1,						-- Bullet Count (1 for common weapons, > 1 for shotguns)
				17,						-- Ammo to Reload (Ammo Clip for common weapons, 1 for shotguns)
				20000,					-- Max Bullet Distance
				20000,					-- Bullet Speed (visual only)
				Color(13, 100, 0),		-- Bullet Color
				0.6,					-- Sight's FOV multiplier
				Vector(0, 0, -11.5),		-- Sight Location
				Rotator(-0.5, 0, 0),	-- Sight Rotation
				Vector(2, -1.5, 0),		-- Left Hand Location
				Rotator(0, 50, 130),	-- Left Hand Rotation
				Vector(-30, 0, 5),		-- Right Hand Offset
				HandlingMode.SingleHandedWeapon,
				0.15,					-- Cadence
				false,					-- Can Hold Use (keep pressing to keep firing, common to automatic weapons)
				false,					-- Need to release to Fire (common to Bows)
				"NanosWorld::P_Bullet_Trail",						-- Bullet Trail Particle
				"NanosWorld::P_Weapon_BarrelSmoke",					-- Barrel Particle
				"NanosWorld::P_Weapon_Shells_9mm",					-- Shells Particle
				"NanosWorld::A_Pistol_Dry",							-- Weapon's Dry Sound
				"NanosWorld::A_Pistol_Load",						-- Weapon's Load Sound
				"NanosWorld::A_Pistol_Unload",						-- Weapon's Unload Sound
				"NanosWorld::A_AimZoom",							-- Weapon's Zooming Sound
				"NanosWorld::A_Rattle",								-- Weapon's Aiming Sound
				"NanosWorld::A_1911_Shot",							-- Weapon's Shot Sound
				"NanosWorld::AM_Mannequin_Reload_Pistol",			-- Character's Reloading Animation
				"NanosWorld::AM_Mannequin_Sight_Fire",				-- Character's Aiming Animation
				"NanosWorld::SM_Glock_Mag_Empty",					-- Magazine Mesh
				CrosshairType.Circle
			)
		end,

		Pistol_03 = function(location, rotation)
			return Weapon(
				location or Vector(),
				rotation or Rotator(),
				"PolygonWorld::SK_Pistol_03",	-- Model
				0,						-- Collision (Normal)
				true,					-- Gravity Enabled
				17,						-- Ammo in the Clip
				1000,					-- Ammo in the Bag
				17,						-- Clip Capacity
				15,						-- Base Damage
				20,						-- Spread
				1,						-- Bullet Count (1 for common weapons, > 1 for shotguns)
				17,						-- Ammo to Reload (Ammo Clip for common weapons, 1 for shotguns)
				20000,					-- Max Bullet Distance
				20000,					-- Bullet Speed (visual only)
				Color(13, 100, 0),		-- Bullet Color
				0.6,					-- Sight's FOV multiplier
				Vector(0, 0, -13.5),		-- Sight Location
				Rotator(-0.5, 0, 0),	-- Sight Rotation
				Vector(2, -1.5, 0),		-- Left Hand Location
				Rotator(0, 50, 130),	-- Left Hand Rotation
				Vector(-30, 0, 5),		-- Right Hand Offset
				HandlingMode.SingleHandedWeapon,
				0.15,					-- Cadence
				false,					-- Can Hold Use (keep pressing to keep firing, common to automatic weapons)
				false,					-- Need to release to Fire (common to Bows)
				"NanosWorld::P_Bullet_Trail",						-- Bullet Trail Particle
				"NanosWorld::P_Weapon_BarrelSmoke",					-- Barrel Particle
				"NanosWorld::P_Weapon_Shells_9mm",					-- Shells Particle
				"NanosWorld::A_Pistol_Dry",							-- Weapon's Dry Sound
				"NanosWorld::A_Pistol_Load",						-- Weapon's Load Sound
				"NanosWorld::A_Pistol_Unload",						-- Weapon's Unload Sound
				"NanosWorld::A_AimZoom",							-- Weapon's Zooming Sound
				"NanosWorld::A_Rattle",								-- Weapon's Aiming Sound
				"NanosWorld::A_BerretaM9_Shot",							-- Weapon's Shot Sound
				"NanosWorld::AM_Mannequin_Reload_Pistol",			-- Character's Reloading Animation
				"NanosWorld::AM_Mannequin_Sight_Fire",				-- Character's Aiming Animation
				"NanosWorld::SM_Glock_Mag_Empty",					-- Magazine Mesh
				CrosshairType.Circle
			)
		end,

		Pistol_04 = function(location, rotation)
			return Weapon(
				location or Vector(),
				rotation or Rotator(),
				"PolygonWorld::SK_Pistol_04",	-- Model
				0,						-- Collision (Normal)
				true,					-- Gravity Enabled
				17,						-- Ammo in the Clip
				1000,					-- Ammo in the Bag
				17,						-- Clip Capacity
				15,						-- Base Damage
				20,						-- Spread
				1,						-- Bullet Count (1 for common weapons, > 1 for shotguns)
				17,						-- Ammo to Reload (Ammo Clip for common weapons, 1 for shotguns)
				20000,					-- Max Bullet Distance
				20000,					-- Bullet Speed (visual only)
				Color(13, 100, 0),		-- Bullet Color
				0.6,					-- Sight's FOV multiplier
				Vector(0, 0, -13.5),		-- Sight Location
				Rotator(-0.5, 0, 0),	-- Sight Rotation
				Vector(2, -1.5, 0),		-- Left Hand Location
				Rotator(0, 50, 130),	-- Left Hand Rotation
				Vector(-30, 0, 5),		-- Right Hand Offset
				HandlingMode.SingleHandedWeapon,
				0.15,					-- Cadence
				false,					-- Can Hold Use (keep pressing to keep firing, common to automatic weapons)
				false,					-- Need to release to Fire (common to Bows)
				"NanosWorld::P_Bullet_Trail",						-- Bullet Trail Particle
				"NanosWorld::P_Weapon_BarrelSmoke",					-- Barrel Particle
				"NanosWorld::P_Weapon_Shells_9mm",					-- Shells Particle
				"NanosWorld::A_Pistol_Dry",							-- Weapon's Dry Sound
				"NanosWorld::A_Pistol_Load",						-- Weapon's Load Sound
				"NanosWorld::A_Pistol_Unload",						-- Weapon's Unload Sound
				"NanosWorld::A_AimZoom",							-- Weapon's Zooming Sound
				"NanosWorld::A_Rattle",								-- Weapon's Aiming Sound
				"NanosWorld::A_9MM_Shot",							-- Weapon's Shot Sound
				"NanosWorld::AM_Mannequin_Reload_Pistol",			-- Character's Reloading Animation
				"NanosWorld::AM_Mannequin_Sight_Fire",				-- Character's Aiming Animation
				"NanosWorld::SM_Glock_Mag_Empty",					-- Magazine Mesh
				CrosshairType.Circle
			)
		end,

		Pistol_05 = function(location, rotation)
			return Weapon(
				location or Vector(),
				rotation or Rotator(),
				"PolygonWorld::SK_Pistol_05",	-- Model
				0,						-- Collision (Normal)
				true,					-- Gravity Enabled
				17,						-- Ammo in the Clip
				1000,					-- Ammo in the Bag
				17,						-- Clip Capacity
				15,						-- Base Damage
				20,						-- Spread
				1,						-- Bullet Count (1 for common weapons, > 1 for shotguns)
				17,						-- Ammo to Reload (Ammo Clip for common weapons, 1 for shotguns)
				20000,					-- Max Bullet Distance
				20000,					-- Bullet Speed (visual only)
				Color(13, 100, 0),		-- Bullet Color
				0.6,					-- Sight's FOV multiplier
				Vector(0, 0, -11),		-- Sight Location
				Rotator(-0.5, 0, 0),	-- Sight Rotation
				Vector(2, -1.5, 0),		-- Left Hand Location
				Rotator(0, 50, 130),	-- Left Hand Rotation
				Vector(-30, 0, 5),		-- Right Hand Offset
				HandlingMode.SingleHandedWeapon,
				0.15,					-- Cadence
				false,					-- Can Hold Use (keep pressing to keep firing, common to automatic weapons)
				false,					-- Need to release to Fire (common to Bows)
				"NanosWorld::P_Bullet_Trail",						-- Bullet Trail Particle
				"NanosWorld::P_Weapon_BarrelSmoke",					-- Barrel Particle
				"NanosWorld::P_Weapon_Shells_9mm",					-- Shells Particle
				"NanosWorld::A_Pistol_Dry",							-- Weapon's Dry Sound
				"NanosWorld::A_Pistol_Load",						-- Weapon's Load Sound
				"NanosWorld::A_Pistol_Unload",						-- Weapon's Unload Sound
				"NanosWorld::A_AimZoom",							-- Weapon's Zooming Sound
				"NanosWorld::A_Rattle",								-- Weapon's Aiming Sound
				"NanosWorld::A_P226_Shot",							-- Weapon's Shot Sound
				"NanosWorld::AM_Mannequin_Reload_Pistol",			-- Character's Reloading Animation
				"NanosWorld::AM_Mannequin_Sight_Fire",				-- Character's Aiming Animation
				"NanosWorld::SM_Glock_Mag_Empty",					-- Magazine Mesh
				CrosshairType.Circle
			)
		end,

		Pistol_06 = function(location, rotation)
			return Weapon(
				location or Vector(),
				rotation or Rotator(),
				"PolygonWorld::SK_Pistol_06",	-- Model
				0,						-- Collision (Normal)
				true,					-- Gravity Enabled
				17,						-- Ammo in the Clip
				1000,					-- Ammo in the Bag
				17,						-- Clip Capacity
				15,						-- Base Damage
				20,						-- Spread
				1,						-- Bullet Count (1 for common weapons, > 1 for shotguns)
				17,						-- Ammo to Reload (Ammo Clip for common weapons, 1 for shotguns)
				20000,					-- Max Bullet Distance
				20000,					-- Bullet Speed (visual only)
				Color(13, 100, 0),		-- Bullet Color
				0.6,					-- Sight's FOV multiplier
				Vector(0, 0, -11.5),		-- Sight Location
				Rotator(-0.5, 0, 0),	-- Sight Rotation
				Vector(2, -1.5, 0),		-- Left Hand Location
				Rotator(0, 50, 130),	-- Left Hand Rotation
				Vector(-30, 0, 5),		-- Right Hand Offset
				HandlingMode.SingleHandedWeapon,
				0.15,					-- Cadence
				false,					-- Can Hold Use (keep pressing to keep firing, common to automatic weapons)
				false,					-- Need to release to Fire (common to Bows)
				"NanosWorld::P_Bullet_Trail",						-- Bullet Trail Particle
				"NanosWorld::P_Weapon_BarrelSmoke",					-- Barrel Particle
				"NanosWorld::P_Weapon_Shells_9mm",					-- Shells Particle
				"NanosWorld::A_Pistol_Dry",							-- Weapon's Dry Sound
				"NanosWorld::A_Pistol_Load",						-- Weapon's Load Sound
				"NanosWorld::A_Pistol_Unload",						-- Weapon's Unload Sound
				"NanosWorld::A_AimZoom",							-- Weapon's Zooming Sound
				"NanosWorld::A_Rattle",								-- Weapon's Aiming Sound
				"NanosWorld::A_Glock_Shot",							-- Weapon's Shot Sound
				"NanosWorld::AM_Mannequin_Reload_Pistol",			-- Character's Reloading Animation
				"NanosWorld::AM_Mannequin_Sight_Fire",				-- Character's Aiming Animation
				"NanosWorld::SM_Glock_Mag_Empty",					-- Magazine Mesh
				CrosshairType.Circle
			)
		end,

		Revolver_01 = function(location, rotation)
			return Weapon(
				location or Vector(),
				rotation or Rotator(),
				"PolygonWorld::SK_Revolver_01",	-- Model
				0,						-- Collision (Normal)
				true,					-- Gravity Enabled
				17,						-- Ammo in the Clip
				1000,					-- Ammo in the Bag
				17,						-- Clip Capacity
				15,						-- Base Damage
				20,						-- Spread
				1,						-- Bullet Count (1 for common weapons, > 1 for shotguns)
				17,						-- Ammo to Reload (Ammo Clip for common weapons, 1 for shotguns)
				20000,					-- Max Bullet Distance
				20000,					-- Bullet Speed (visual only)
				Color(13, 100, 0),		-- Bullet Color
				0.6,					-- Sight's FOV multiplier
				Vector(0, 0, -11.5),		-- Sight Location
				Rotator(-0.5, 0, 0),	-- Sight Rotation
				Vector(2, -1.5, 0),		-- Left Hand Location
				Rotator(0, 50, 130),	-- Left Hand Rotation
				Vector(-30, 0, 5),		-- Right Hand Offset
				HandlingMode.SingleHandedWeapon,
				0.225,					-- Cadence
				false,					-- Can Hold Use (keep pressing to keep firing, common to automatic weapons)
				false,					-- Need to release to Fire (common to Bows)
				"NanosWorld::P_Bullet_Trail",					-- Bullet Trail Particle
				"NanosWorld::P_Weapon_BarrelSmoke",				-- Barrel Particle
				"NanosWorld::P_Weapon_Shells_45ap",				-- Shells Particle
				"NanosWorld::A_Pistol_Dry",						-- Weapon's Dry Sound
				"NanosWorld::A_Pistol_Load",					-- Weapon's Load Sound
				"NanosWorld::A_Pistol_Unload",					-- Weapon's Unload Sound
				"NanosWorld::A_AimZoom",						-- Weapon's Zooming Sound
				"NanosWorld::A_Rattle",							-- Weapon's Aiming Sound
				"NanosWorld::A_DesertEagle_Shot",				-- Weapon's Shot Sound
				"NanosWorld::AM_Mannequin_Reload_Pistol",		-- Character's Reloading Animation
				"NanosWorld::AM_Mannequin_Sight_Fire_Heavy",	-- Character's Aiming Animation
				"NanosWorld::SM_DesertEagle_Mag_Empty",			-- Magazine Mesh
				CrosshairType.Dot
			)
		end,

		Revolver_02 = function(location, rotation)
			return Weapon(
				location or Vector(),
				rotation or Rotator(),
				"PolygonWorld::SK_Revolver_02",	-- Model
				0,						-- Collision (Normal)
				true,					-- Gravity Enabled
				17,						-- Ammo in the Clip
				1000,					-- Ammo in the Bag
				17,						-- Clip Capacity
				15,						-- Base Damage
				20,						-- Spread
				1,						-- Bullet Count (1 for common weapons, > 1 for shotguns)
				17,						-- Ammo to Reload (Ammo Clip for common weapons, 1 for shotguns)
				20000,					-- Max Bullet Distance
				20000,					-- Bullet Speed (visual only)
				Color(13, 100, 0),		-- Bullet Color
				0.6,					-- Sight's FOV multiplier
				Vector(0, 0, -14),		-- Sight Location
				Rotator(-0.5, 0, 0),	-- Sight Rotation
				Vector(2, -1.5, 0),		-- Left Hand Location
				Rotator(0, 50, 130),	-- Left Hand Rotation
				Vector(-30, 0, 5),		-- Right Hand Offset
				HandlingMode.SingleHandedWeapon,
				0.225,					-- Cadence
				false,					-- Can Hold Use (keep pressing to keep firing, common to automatic weapons)
				false,					-- Need to release to Fire (common to Bows)
				"NanosWorld::P_Bullet_Trail",					-- Bullet Trail Particle
				"NanosWorld::P_Weapon_BarrelSmoke",				-- Barrel Particle
				"NanosWorld::P_Weapon_Shells_45ap",				-- Shells Particle
				"NanosWorld::A_Pistol_Dry",						-- Weapon's Dry Sound
				"NanosWorld::A_Pistol_Load",					-- Weapon's Load Sound
				"NanosWorld::A_Pistol_Unload",					-- Weapon's Unload Sound
				"NanosWorld::A_AimZoom",						-- Weapon's Zooming Sound
				"NanosWorld::A_Rattle",							-- Weapon's Aiming Sound
				"NanosWorld::A_DesertEagle_B_Shot",				-- Weapon's Shot Sound
				"NanosWorld::AM_Mannequin_Reload_Pistol",		-- Character's Reloading Animation
				"NanosWorld::AM_Mannequin_Sight_Fire_Heavy",	-- Character's Aiming Animation
				"NanosWorld::SM_DesertEagle_Mag_Empty",			-- Magazine Mesh
				CrosshairType.Dot
			)
		end,

		Revolver_03 = function(location, rotation)
			return Weapon(
				location or Vector(),
				rotation or Rotator(),
				"PolygonWorld::SK_Revolver_03",	-- Model
				0,						-- Collision (Normal)
				true,					-- Gravity Enabled
				17,						-- Ammo in the Clip
				1000,					-- Ammo in the Bag
				17,						-- Clip Capacity
				15,						-- Base Damage
				20,						-- Spread
				1,						-- Bullet Count (1 for common weapons, > 1 for shotguns)
				17,						-- Ammo to Reload (Ammo Clip for common weapons, 1 for shotguns)
				20000,					-- Max Bullet Distance
				20000,					-- Bullet Speed (visual only)
				Color(13, 100, 0),		-- Bullet Color
				0.6,					-- Sight's FOV multiplier
				Vector(0, 0, -14),		-- Sight Location
				Rotator(-0.5, 0, 0),	-- Sight Rotation
				Vector(2, -1.5, 0),		-- Left Hand Location
				Rotator(0, 50, 130),	-- Left Hand Rotation
				Vector(-30, 0, 5),		-- Right Hand Offset
				HandlingMode.SingleHandedWeapon,
				0.225,					-- Cadence
				false,					-- Can Hold Use (keep pressing to keep firing, common to automatic weapons)
				false,					-- Need to release to Fire (common to Bows)
				"NanosWorld::P_Bullet_Trail",					-- Bullet Trail Particle
				"NanosWorld::P_Weapon_BarrelSmoke",				-- Barrel Particle
				"NanosWorld::P_Weapon_Shells_45ap",				-- Shells Particle
				"NanosWorld::A_Pistol_Dry",						-- Weapon's Dry Sound
				"NanosWorld::A_Pistol_Load",					-- Weapon's Load Sound
				"NanosWorld::A_Pistol_Unload",					-- Weapon's Unload Sound
				"NanosWorld::A_AimZoom",						-- Weapon's Zooming Sound
				"NanosWorld::A_Rattle",							-- Weapon's Aiming Sound
				"NanosWorld::A_DesertEagle_Shot",				-- Weapon's Shot Sound
				"NanosWorld::AM_Mannequin_Reload_Pistol",		-- Character's Reloading Animation
				"NanosWorld::AM_Mannequin_Sight_Fire_Heavy",	-- Character's Aiming Animation
				"NanosWorld::SM_DesertEagle_Mag_Empty",			-- Magazine Mesh
				CrosshairType.Dot
			)
		end,

		Revolver_04 = function(location, rotation)
			return Weapon(
				location or Vector(),
				rotation or Rotator(),
				"PolygonWorld::SK_Revolver_04",	-- Model
				0,						-- Collision (Normal)
				true,					-- Gravity Enabled
				17,						-- Ammo in the Clip
				1000,					-- Ammo in the Bag
				17,						-- Clip Capacity
				15,						-- Base Damage
				20,						-- Spread
				1,						-- Bullet Count (1 for common weapons, > 1 for shotguns)
				17,						-- Ammo to Reload (Ammo Clip for common weapons, 1 for shotguns)
				20000,					-- Max Bullet Distance
				20000,					-- Bullet Speed (visual only)
				Color(13, 100, 0),		-- Bullet Color
				0.6,					-- Sight's FOV multiplier
				Vector(0, 0, -12),		-- Sight Location
				Rotator(-0.5, 0, 0),	-- Sight Rotation
				Vector(2, -1.5, 0),		-- Left Hand Location
				Rotator(0, 50, 130),	-- Left Hand Rotation
				Vector(-30, 0, 5),		-- Right Hand Offset
				HandlingMode.SingleHandedWeapon,
				0.225,					-- Cadence
				false,					-- Can Hold Use (keep pressing to keep firing, common to automatic weapons)
				false,					-- Need to release to Fire (common to Bows)
				"NanosWorld::P_Bullet_Trail",					-- Bullet Trail Particle
				"NanosWorld::P_Weapon_BarrelSmoke",				-- Barrel Particle
				"NanosWorld::P_Weapon_Shells_45ap",				-- Shells Particle
				"NanosWorld::A_Pistol_Dry",						-- Weapon's Dry Sound
				"NanosWorld::A_Pistol_Load",					-- Weapon's Load Sound
				"NanosWorld::A_Pistol_Unload",					-- Weapon's Unload Sound
				"NanosWorld::A_AimZoom",						-- Weapon's Zooming Sound
				"NanosWorld::A_Rattle",							-- Weapon's Aiming Sound
				"NanosWorld::A_DesertEagle_B_Shot",				-- Weapon's Shot Sound
				"NanosWorld::AM_Mannequin_Reload_Pistol",		-- Character's Reloading Animation
				"NanosWorld::AM_Mannequin_Sight_Fire_Heavy",	-- Character's Aiming Animation
				"NanosWorld::SM_DesertEagle_Mag_Empty",			-- Magazine Mesh
				CrosshairType.Dot
			)
		end,

		Revolver_05 = function(location, rotation)
			return Weapon(
				location or Vector(),
				rotation or Rotator(),
				"PolygonWorld::SK_Revolver_05",	-- Model
				0,						-- Collision (Normal)
				true,					-- Gravity Enabled
				17,						-- Ammo in the Clip
				1000,					-- Ammo in the Bag
				17,						-- Clip Capacity
				15,						-- Base Damage
				20,						-- Spread
				1,						-- Bullet Count (1 for common weapons, > 1 for shotguns)
				17,						-- Ammo to Reload (Ammo Clip for common weapons, 1 for shotguns)
				20000,					-- Max Bullet Distance
				20000,					-- Bullet Speed (visual only)
				Color(13, 100, 0),		-- Bullet Color
				0.6,					-- Sight's FOV multiplier
				Vector(0, 0, -14),		-- Sight Location
				Rotator(-0.5, 0, 0),	-- Sight Rotation
				Vector(2, -1.5, 0),		-- Left Hand Location
				Rotator(0, 50, 130),	-- Left Hand Rotation
				Vector(-30, 0, 5),		-- Right Hand Offset
				HandlingMode.SingleHandedWeapon,
				0.225,					-- Cadence
				false,					-- Can Hold Use (keep pressing to keep firing, common to automatic weapons)
				false,					-- Need to release to Fire (common to Bows)
				"NanosWorld::P_Bullet_Trail",					-- Bullet Trail Particle
				"NanosWorld::P_Weapon_BarrelSmoke",				-- Barrel Particle
				"NanosWorld::P_Weapon_Shells_45ap",				-- Shells Particle
				"NanosWorld::A_Pistol_Dry",						-- Weapon's Dry Sound
				"NanosWorld::A_Pistol_Load",					-- Weapon's Load Sound
				"NanosWorld::A_Pistol_Unload",					-- Weapon's Unload Sound
				"NanosWorld::A_AimZoom",						-- Weapon's Zooming Sound
				"NanosWorld::A_Rattle",							-- Weapon's Aiming Sound
				"NanosWorld::A_DesertEagle_Shot",				-- Weapon's Shot Sound
				"NanosWorld::AM_Mannequin_Reload_Pistol",		-- Character's Reloading Animation
				"NanosWorld::AM_Mannequin_Sight_Fire_Heavy",	-- Character's Aiming Animation
				"NanosWorld::SM_DesertEagle_Mag_Empty",			-- Magazine Mesh
				CrosshairType.Dot
			)
		end,

		SubmachineGun_01 = function(location, rotation)
			return Weapon(
				location or Vector(),
				rotation or Rotator(),
				"PolygonWorld::SK_SubmachineGun_01",	-- Model
				0,						-- Collision (Normal)
				true,					-- Gravity Enabled
				32,						-- Ammo in the Clip
				1000,					-- Ammo in the Bag
				32,						-- Clip Capacity
				15,						-- Base Damage
				35,						-- Spread
				1,						-- Bullet Count (1 for common weapons, > 1 for shotguns)
				32,						-- Ammo to Reload (Ammo Clip for common weapons, 1 for shotguns)
				20000,					-- Max Bullet Distance
				20000,					-- Bullet Speed (visual only)
				Color(100, 58, 0),		-- Bullet Color
				0.55,					-- Sight's FOV multiplier
				Vector(-15, 0, -15),	-- Sight Location
				Rotator(0, 0, 0),		-- Sight Rotation
				Vector(23, 0, 5),		-- Left Hand Location
				Rotator(0, 60, 90),		-- Left Hand Rotation
				Vector(-15, 0, 0),		-- Right Hand Offset
				HandlingMode.DoubleHandedWeapon,
				0.075,					-- Cadence (1 shot at each 0.15seconds)
				true,					-- Can Hold Use (keep pressing to keep firing, common to automatic weapons)
				false,					-- Need to release to Fire (common to Bows)
				"NanosWorld::P_Bullet_Trail",				-- Bullet Trail Particle
				"NanosWorld::P_Weapon_BarrelSmoke",			-- Barrel Particle
				"NanosWorld::P_Weapon_Shells_9x18",			-- Shells Particle
				"NanosWorld::A_SMG_Dry",					-- Weapon's Dry Sound
				"NanosWorld::A_SMG_Load",					-- Weapon's Load Sound
				"NanosWorld::A_SMG_Unload",					-- Weapon's Unload Sound
				"NanosWorld::A_AimZoom",					-- Weapon's Zooming Sound
				"NanosWorld::A_Rattle",						-- Weapon's Aiming Sound
				"NanosWorld::A_SMG_Shot",					-- Weapon's Shot Sound
				"NanosWorld::AM_Mannequin_Reload_Pistol",	-- Character's Reloading Animation
				"NanosWorld::AM_Mannequin_Sight_Fire",		-- Character's Aiming Animation
				"NanosWorld::SM_AP5_Mag_Empty",				-- Magazine Mesh
				CrosshairType.Submachine
			)
		end,

		SubmachineGun_02 = function(location, rotation)
			return Weapon(
				location or Vector(),
				rotation or Rotator(),
				"PolygonWorld::SK_SubmachineGun_02",	-- Model
				0,						-- Collision (Normal)
				true,					-- Gravity Enabled
				32,						-- Ammo in the Clip
				1000,					-- Ammo in the Bag
				32,						-- Clip Capacity
				15,						-- Base Damage
				35,						-- Spread
				1,						-- Bullet Count (1 for common weapons, > 1 for shotguns)
				32,						-- Ammo to Reload (Ammo Clip for common weapons, 1 for shotguns)
				20000,					-- Max Bullet Distance
				20000,					-- Bullet Speed (visual only)
				Color(100, 58, 0),		-- Bullet Color
				0.55,					-- Sight's FOV multiplier
				Vector(0, 0, -16),	-- Sight Location
				Rotator(-1, 0, 0),	-- Sight Rotation
				Vector(-3, 0, 0),		-- Left Hand Location
				Rotator(0, 25, 157.5),	-- Left Hand Rotation
				Vector(-25, 0, 0),		-- Right Hand Offset
				HandlingMode.SingleHandedWeapon,
				0.075,					-- Cadence (1 shot at each 0.15seconds)
				true,					-- Can Hold Use (keep pressing to keep firing, common to automatic weapons)
				false,					-- Need to release to Fire (common to Bows)
				"NanosWorld::P_Bullet_Trail",				-- Bullet Trail Particle
				"NanosWorld::P_Weapon_BarrelSmoke",			-- Barrel Particle
				"NanosWorld::P_Weapon_Shells_9x18",			-- Shells Particle
				"NanosWorld::A_SMG_Dry",					-- Weapon's Dry Sound
				"NanosWorld::A_SMG_Load",					-- Weapon's Load Sound
				"NanosWorld::A_SMG_Unload",					-- Weapon's Unload Sound
				"NanosWorld::A_AimZoom",					-- Weapon's Zooming Sound
				"NanosWorld::A_Rattle",						-- Weapon's Aiming Sound
				"NanosWorld::A_SMG_Shot",					-- Weapon's Shot Sound
				"NanosWorld::AM_Mannequin_Reload_Pistol",	-- Character's Reloading Animation
				"NanosWorld::AM_Mannequin_Sight_Fire",		-- Character's Aiming Animation
				"NanosWorld::SM_AP5_Mag_Empty",				-- Magazine Mesh
				CrosshairType.Submachine
			)
		end,

		SubmachineGun_03 = function(location, rotation)
			return Weapon(
				location or Vector(),
				rotation or Rotator(),
				"PolygonWorld::SK_SubmachineGun_03",	-- Model
				0,						-- Collision (Normal)
				true,					-- Gravity Enabled
				32,						-- Ammo in the Clip
				1000,					-- Ammo in the Bag
				32,						-- Clip Capacity
				15,						-- Base Damage
				35,						-- Spread
				1,						-- Bullet Count (1 for common weapons, > 1 for shotguns)
				32,						-- Ammo to Reload (Ammo Clip for common weapons, 1 for shotguns)
				20000,					-- Max Bullet Distance
				20000,					-- Bullet Speed (visual only)
				Color(100, 58, 0),		-- Bullet Color
				0.55,					-- Sight's FOV multiplier
				Vector(-5, 0, -15),	-- Sight Location
				Rotator(-1, 0, 0),	-- Sight Rotation
				Vector(22, 0, 6),		-- Left Hand Location
				Rotator(0, 60, 90),		-- Left Hand Rotation
				Vector(-15, 0, 0),		-- Right Hand Offset
				HandlingMode.DoubleHandedWeapon,
				0.075,					-- Cadence (1 shot at each 0.15seconds)
				true,					-- Can Hold Use (keep pressing to keep firing, common to automatic weapons)
				false,					-- Need to release to Fire (common to Bows)
				"NanosWorld::P_Bullet_Trail",				-- Bullet Trail Particle
				"NanosWorld::P_Weapon_BarrelSmoke",			-- Barrel Particle
				"NanosWorld::P_Weapon_Shells_9x18",			-- Shells Particle
				"NanosWorld::A_SMG_Dry",					-- Weapon's Dry Sound
				"NanosWorld::A_SMG_Load",					-- Weapon's Load Sound
				"NanosWorld::A_SMG_Unload",					-- Weapon's Unload Sound
				"NanosWorld::A_AimZoom",					-- Weapon's Zooming Sound
				"NanosWorld::A_Rattle",						-- Weapon's Aiming Sound
				"NanosWorld::A_SMG_Shot",					-- Weapon's Shot Sound
				"NanosWorld::AM_Mannequin_Reload_Pistol",	-- Character's Reloading Animation
				"NanosWorld::AM_Mannequin_Sight_Fire",		-- Character's Aiming Animation
				"NanosWorld::SM_AP5_Mag_Empty",				-- Magazine Mesh
				CrosshairType.Submachine
			)
		end,

		SubmachineGun_04 = function(location, rotation)
			return Weapon(
				location or Vector(),
				rotation or Rotator(),
				"PolygonWorld::SK_SubmachineGun_04",	-- Model
				0,						-- Collision (Normal)
				true,					-- Gravity Enabled
				32,						-- Ammo in the Clip
				1000,					-- Ammo in the Bag
				32,						-- Clip Capacity
				15,						-- Base Damage
				35,						-- Spread
				1,						-- Bullet Count (1 for common weapons, > 1 for shotguns)
				32,						-- Ammo to Reload (Ammo Clip for common weapons, 1 for shotguns)
				20000,					-- Max Bullet Distance
				20000,					-- Bullet Speed (visual only)
				Color(100, 58, 0),		-- Bullet Color
				0.55,					-- Sight's FOV multiplier
				Vector(-5, 0, -13),	-- Sight Location
				Rotator(-1, 0, 0),	-- Sight Rotation
				Vector(-3, 0, 0),		-- Left Hand Location
				Rotator(0, 25, 157.5),	-- Left Hand Rotation
				Vector(-25, 0, 0),		-- Right Hand Offset
				HandlingMode.SingleHandedWeapon,
				0.075,					-- Cadence (1 shot at each 0.15seconds)
				true,					-- Can Hold Use (keep pressing to keep firing, common to automatic weapons)
				false,					-- Need to release to Fire (common to Bows)
				"NanosWorld::P_Bullet_Trail",				-- Bullet Trail Particle
				"NanosWorld::P_Weapon_BarrelSmoke",			-- Barrel Particle
				"NanosWorld::P_Weapon_Shells_9x18",			-- Shells Particle
				"NanosWorld::A_SMG_Dry",					-- Weapon's Dry Sound
				"NanosWorld::A_SMG_Load",					-- Weapon's Load Sound
				"NanosWorld::A_SMG_Unload",					-- Weapon's Unload Sound
				"NanosWorld::A_AimZoom",					-- Weapon's Zooming Sound
				"NanosWorld::A_Rattle",						-- Weapon's Aiming Sound
				"NanosWorld::A_SMG_Shot",					-- Weapon's Shot Sound
				"NanosWorld::AM_Mannequin_Reload_Pistol",	-- Character's Reloading Animation
				"NanosWorld::AM_Mannequin_Sight_Fire",		-- Character's Aiming Animation
				"NanosWorld::SM_AP5_Mag_Empty",				-- Magazine Mesh
				CrosshairType.Submachine
			)
		end,

		SubmachineGun_05 = function(location, rotation)
			return Weapon(
				location or Vector(),
				rotation or Rotator(),
				"PolygonWorld::SK_SubmachineGun_05",	-- Model
				0,						-- Collision (Normal)
				true,					-- Gravity Enabled
				32,						-- Ammo in the Clip
				1000,					-- Ammo in the Bag
				32,						-- Clip Capacity
				15,						-- Base Damage
				35,						-- Spread
				1,						-- Bullet Count (1 for common weapons, > 1 for shotguns)
				32,						-- Ammo to Reload (Ammo Clip for common weapons, 1 for shotguns)
				20000,					-- Max Bullet Distance
				20000,					-- Bullet Speed (visual only)
				Color(100, 58, 0),		-- Bullet Color
				0.55,					-- Sight's FOV multiplier
				Vector(-10, 0, -14),	-- Sight Location
				Rotator(-1, 0, 0),	-- Sight Rotation
				Vector(-3, 0, 0),		-- Left Hand Location
				Rotator(0, 25, 157.5),	-- Left Hand Rotation
				Vector(-25, 0, 0),		-- Right Hand Offset
				HandlingMode.SingleHandedWeapon,
				0.075,					-- Cadence (1 shot at each 0.15seconds)
				true,					-- Can Hold Use (keep pressing to keep firing, common to automatic weapons)
				false,					-- Need to release to Fire (common to Bows)
				"NanosWorld::P_Bullet_Trail",				-- Bullet Trail Particle
				"NanosWorld::P_Weapon_BarrelSmoke",			-- Barrel Particle
				"NanosWorld::P_Weapon_Shells_9x18",			-- Shells Particle
				"NanosWorld::A_SMG_Dry",					-- Weapon's Dry Sound
				"NanosWorld::A_SMG_Load",					-- Weapon's Load Sound
				"NanosWorld::A_SMG_Unload",					-- Weapon's Unload Sound
				"NanosWorld::A_AimZoom",					-- Weapon's Zooming Sound
				"NanosWorld::A_Rattle",						-- Weapon's Aiming Sound
				"NanosWorld::A_SMG_Shot",					-- Weapon's Shot Sound
				"NanosWorld::AM_Mannequin_Reload_Pistol",	-- Character's Reloading Animation
				"NanosWorld::AM_Mannequin_Sight_Fire",		-- Character's Aiming Animation
				"NanosWorld::SM_AP5_Mag_Empty",				-- Magazine Mesh
				CrosshairType.Submachine
			)
		end,

		Shotgun_01 = function(location, rotation)
			return Weapon(
				location or Vector(),
				rotation or Rotator(),
				"PolygonWorld::SK_Shotgun_01",	-- Model
				0,						-- Collision (Normal)
				true,					-- Gravity Enabled
				6,						-- Ammo in the Clip
				1000,					-- Ammo in the Bag
				6,						-- Clip Capacity
				20,						-- Base Damage
				70,						-- Spread
				6,						-- Bullet Count (1 for common weapons, > 1 for shotguns)
				1,						-- Ammo to Reload (Ammo Clip for common weapons, 1 for shotguns)
				10000,					-- Max Bullet Distance
				15000,					-- Bullet Speed (visual only)
				Color(100, 58, 0),		-- Bullet Color
				0.75,					-- Sight's FOV multiplier
				Vector(0, 0, -14),	-- Sight Location
				Rotator(-1, 0, 0),		-- Sight Rotation
				Vector(35, 0, 6),		-- Left Hand Location
				Rotator(0, 60, 90),		-- Left Hand Rotation
				Vector(-5, 0, 0),		-- Right Hand Offset
				HandlingMode.DoubleHandedWeapon,
				0.9,					-- Cadence
				true,					-- Can Hold Use (keep pressing to keep firing, common to automatic weapons)
				false,					-- Need to release to Fire (common to Bows)
				"NanosWorld::P_Bullet_Trail",					-- Bullet Trail Particle
				"NanosWorld::P_Weapon_BarrelSmoke",				-- Barrel Particle
				"NanosWorld::P_Weapon_Shells_12Gauge",			-- Shells Particle
				"NanosWorld::A_Shotgun_Dry",					-- Weapon's Dry Sound
				"NanosWorld::A_Shotgun_Load_Bullet",			-- Weapon's Load Sound
				"",												-- Weapon's Unload Sound
				"NanosWorld::A_AimZoom",						-- Weapon's Zooming Sound
				"NanosWorld::A_Rattle",							-- Weapon's Aiming Sound
				"NanosWorld::A_Wesson500_Shot",					-- Weapon's Shot Sound
				"NanosWorld::AM_Mannequin_Reload_Shotgun",		-- Character's Reloading Animation
				"NanosWorld::AM_Mannequin_Sight_Fire_Heavy",	-- Character's Aiming Animation
				"",												-- Magazine Mesh
				CrosshairType.Shotgun
			)
		end,

		Shotgun_02 = function(location, rotation)
			return Weapon(
				location or Vector(),
				rotation or Rotator(),
				"PolygonWorld::SK_Shotgun_02",	-- Model
				0,						-- Collision (Normal)
				true,					-- Gravity Enabled
				6,						-- Ammo in the Clip
				1000,					-- Ammo in the Bag
				6,						-- Clip Capacity
				20,						-- Base Damage
				70,						-- Spread
				6,						-- Bullet Count (1 for common weapons, > 1 for shotguns)
				1,						-- Ammo to Reload (Ammo Clip for common weapons, 1 for shotguns)
				10000,					-- Max Bullet Distance
				15000,					-- Bullet Speed (visual only)
				Color(100, 58, 0),		-- Bullet Color
				0.75,					-- Sight's FOV multiplier
				Vector(0, 0, -14),	-- Sight Location
				Rotator(-1, 0, 0),		-- Sight Rotation
				Vector(35, 0, 6),		-- Left Hand Location
				Rotator(0, 60, 90),		-- Left Hand Rotation
				Vector(-5, 0, 0),		-- Right Hand Offset
				HandlingMode.DoubleHandedWeapon,
				0.9,					-- Cadence
				true,					-- Can Hold Use (keep pressing to keep firing, common to automatic weapons)
				false,					-- Need to release to Fire (common to Bows)
				"NanosWorld::P_Bullet_Trail",					-- Bullet Trail Particle
				"NanosWorld::P_Weapon_BarrelSmoke",				-- Barrel Particle
				"NanosWorld::P_Weapon_Shells_12Gauge",			-- Shells Particle
				"NanosWorld::A_Shotgun_Dry",					-- Weapon's Dry Sound
				"NanosWorld::A_Shotgun_Load_Bullet",			-- Weapon's Load Sound
				"",												-- Weapon's Unload Sound
				"NanosWorld::A_AimZoom",						-- Weapon's Zooming Sound
				"NanosWorld::A_Rattle",							-- Weapon's Aiming Sound
				"NanosWorld::A_Wesson500_Shot",					-- Weapon's Shot Sound
				"NanosWorld::AM_Mannequin_Reload_Shotgun",		-- Character's Reloading Animation
				"NanosWorld::AM_Mannequin_Sight_Fire_Heavy",	-- Character's Aiming Animation
				"",												-- Magazine Mesh
				CrosshairType.Shotgun
			)
		end,

		Shotgun_03 = function(location, rotation)
			return Weapon(
				location or Vector(),
				rotation or Rotator(),
				"PolygonWorld::SK_Shotgun_03",	-- Model
				0,						-- Collision (Normal)
				true,					-- Gravity Enabled
				6,						-- Ammo in the Clip
				1000,					-- Ammo in the Bag
				6,						-- Clip Capacity
				20,						-- Base Damage
				70,						-- Spread
				6,						-- Bullet Count (1 for common weapons, > 1 for shotguns)
				1,						-- Ammo to Reload (Ammo Clip for common weapons, 1 for shotguns)
				10000,					-- Max Bullet Distance
				15000,					-- Bullet Speed (visual only)
				Color(100, 58, 0),		-- Bullet Color
				0.75,					-- Sight's FOV multiplier
				Vector(0, 0, -14),	-- Sight Location
				Rotator(-1, 0, 0),		-- Sight Rotation
				Vector(35, 0, 6),		-- Left Hand Location
				Rotator(0, 60, 90),		-- Left Hand Rotation
				Vector(-5, 0, 0),		-- Right Hand Offset
				HandlingMode.DoubleHandedWeapon,
				0.9,					-- Cadence
				true,					-- Can Hold Use (keep pressing to keep firing, common to automatic weapons)
				false,					-- Need to release to Fire (common to Bows)
				"NanosWorld::P_Bullet_Trail",					-- Bullet Trail Particle
				"NanosWorld::P_Weapon_BarrelSmoke",				-- Barrel Particle
				"NanosWorld::P_Weapon_Shells_12Gauge",			-- Shells Particle
				"NanosWorld::A_Shotgun_Dry",					-- Weapon's Dry Sound
				"NanosWorld::A_Shotgun_Load_Bullet",			-- Weapon's Load Sound
				"",												-- Weapon's Unload Sound
				"NanosWorld::A_AimZoom",						-- Weapon's Zooming Sound
				"NanosWorld::A_Rattle",							-- Weapon's Aiming Sound
				"NanosWorld::A_Shotgun_Shot",					-- Weapon's Shot Sound
				"NanosWorld::AM_Mannequin_Reload_Shotgun",		-- Character's Reloading Animation
				"NanosWorld::AM_Mannequin_Sight_Fire_Heavy",	-- Character's Aiming Animation
				"",												-- Magazine Mesh
				CrosshairType.Shotgun
			)
		end,

		Shotgun_04 = function(location, rotation)
			return Weapon(
				location or Vector(),
				rotation or Rotator(),
				"PolygonWorld::SK_Shotgun_04",	-- Model
				0,						-- Collision (Normal)
				true,					-- Gravity Enabled
				6,						-- Ammo in the Clip
				1000,					-- Ammo in the Bag
				6,						-- Clip Capacity
				20,						-- Base Damage
				40,						-- Spread
				1,						-- Bullet Count (1 for common weapons, > 1 for shotguns)
				1,						-- Ammo to Reload (Ammo Clip for common weapons, 1 for shotguns)
				10000,					-- Max Bullet Distance
				15000,					-- Bullet Speed (visual only)
				Color(100, 58, 0),		-- Bullet Color
				0.75,					-- Sight's FOV multiplier
				Vector(0, 0, -13),	-- Sight Location
				Rotator(-1, 0, 0),		-- Sight Rotation
				Vector(30, 0, 6),		-- Left Hand Location
				Rotator(0, 60, 90),		-- Left Hand Rotation
				Vector(-5, 0, 0),		-- Right Hand Offset
				HandlingMode.DoubleHandedWeapon,
				0.5,					-- Cadence
				true,					-- Can Hold Use (keep pressing to keep firing, common to automatic weapons)
				false,					-- Need to release to Fire (common to Bows)
				"NanosWorld::P_Bullet_Trail",					-- Bullet Trail Particle
				"NanosWorld::P_Weapon_BarrelSmoke",				-- Barrel Particle
				"NanosWorld::P_Weapon_Shells_12Gauge",			-- Shells Particle
				"NanosWorld::A_Shotgun_Dry",					-- Weapon's Dry Sound
				"NanosWorld::A_Shotgun_Load_Bullet",			-- Weapon's Load Sound
				"",												-- Weapon's Unload Sound
				"NanosWorld::A_AimZoom",						-- Weapon's Zooming Sound
				"NanosWorld::A_Rattle",							-- Weapon's Aiming Sound
				"NanosWorld::A_Wesson500_Shot",					-- Weapon's Shot Sound
				"NanosWorld::AM_Mannequin_Reload_Shotgun",		-- Character's Reloading Animation
				"NanosWorld::AM_Mannequin_Sight_Fire",	-- Character's Aiming Animation
				"",												-- Magazine Mesh
				CrosshairType.Crossbow
			)
		end,

		Shotgun_05 = function(location, rotation)
			return Weapon(
				location or Vector(),
				rotation or Rotator(),
				"PolygonWorld::SK_Shotgun_05",	-- Model
				0,						-- Collision (Normal)
				true,					-- Gravity Enabled
				6,						-- Ammo in the Clip
				1000,					-- Ammo in the Bag
				6,						-- Clip Capacity
				20,						-- Base Damage
				80,						-- Spread
				6,						-- Bullet Count (1 for common weapons, > 1 for shotguns)
				1,						-- Ammo to Reload (Ammo Clip for common weapons, 1 for shotguns)
				10000,					-- Max Bullet Distance
				15000,					-- Bullet Speed (visual only)
				Color(100, 58, 0),		-- Bullet Color
				0.75,					-- Sight's FOV multiplier
				Vector(0, 0, -14.5),	-- Sight Location
				Rotator(-1, 0, 0),		-- Sight Rotation
				Vector(35, 0, 6),		-- Left Hand Location
				Rotator(0, 60, 90),		-- Left Hand Rotation
				Vector(-5, 0, 0),		-- Right Hand Offset
				HandlingMode.DoubleHandedWeapon,
				0.9,					-- Cadence
				true,					-- Can Hold Use (keep pressing to keep firing, common to automatic weapons)
				false,					-- Need to release to Fire (common to Bows)
				"NanosWorld::P_Bullet_Trail",					-- Bullet Trail Particle
				"NanosWorld::P_Weapon_BarrelSmoke",				-- Barrel Particle
				"NanosWorld::P_Weapon_Shells_12Gauge",			-- Shells Particle
				"NanosWorld::A_Shotgun_Dry",					-- Weapon's Dry Sound
				"NanosWorld::A_Shotgun_Load_Bullet",			-- Weapon's Load Sound
				"",												-- Weapon's Unload Sound
				"NanosWorld::A_AimZoom",						-- Weapon's Zooming Sound
				"NanosWorld::A_Rattle",							-- Weapon's Aiming Sound
				"NanosWorld::A_Shotgun_Shot",					-- Weapon's Shot Sound
				"NanosWorld::AM_Mannequin_Reload_Shotgun",		-- Character's Reloading Animation
				"NanosWorld::AM_Mannequin_Sight_Fire_Heavy",	-- Character's Aiming Animation
				"",												-- Magazine Mesh
				CrosshairType.Shotgun
			)
		end,

		Shotgun_SawedOff = function(location, rotation)
			return Weapon(
				location or Vector(),
				rotation or Rotator(),
				"PolygonWorld::SK_Shotgun_SawedOff",	-- Model
				0,						-- Collision (Normal)
				true,					-- Gravity Enabled
				2,						-- Ammo in the Clip
				1000,					-- Ammo in the Bag
				2,						-- Clip Capacity
				20,						-- Base Damage
				80,						-- Spread
				6,						-- Bullet Count (1 for common weapons, > 1 for shotguns)
				1,						-- Ammo to Reload (Ammo Clip for common weapons, 1 for shotguns)
				10000,					-- Max Bullet Distance
				15000,					-- Bullet Speed (visual only)
				Color(100, 58, 0),		-- Bullet Color
				0.75,					-- Sight's FOV multiplier
				Vector(0, 0, -14),	-- Sight Location
				Rotator(-1, 0, 0),		-- Sight Rotation
				Vector(15, 0, 4),		-- Left Hand Location
				Rotator(0, 60, 90),		-- Left Hand Rotation
				Vector(-15, 0, 0),		-- Right Hand Offset
				HandlingMode.DoubleHandedWeapon,
				0.1,					-- Cadence
				false,					-- Can Hold Use (keep pressing to keep firing, common to automatic weapons)
				false,					-- Need to release to Fire (common to Bows)
				"NanosWorld::P_Bullet_Trail",					-- Bullet Trail Particle
				"NanosWorld::P_Weapon_BarrelSmoke",				-- Barrel Particle
				"NanosWorld::P_Weapon_Shells_12Gauge",			-- Shells Particle
				"NanosWorld::A_Shotgun_Dry",					-- Weapon's Dry Sound
				"NanosWorld::A_Shotgun_Load_Bullet",			-- Weapon's Load Sound
				"",												-- Weapon's Unload Sound
				"NanosWorld::A_AimZoom",						-- Weapon's Zooming Sound
				"NanosWorld::A_Rattle",							-- Weapon's Aiming Sound
				"NanosWorld::A_12Gauge_Shot",					-- Weapon's Shot Sound
				"NanosWorld::AM_Mannequin_Reload_Shotgun",		-- Character's Reloading Animation
				"NanosWorld::AM_Mannequin_Sight_Fire_Heavy",	-- Character's Aiming Animation
				"",												-- Magazine Mesh
				CrosshairType.Shotgun
			)
		end,

		SniperRifle_01 = function(location, rotation)
			return Weapon(
				location or Vector(),
				rotation or Rotator(),
				"PolygonWorld::SK_SniperRifle_01",	-- Model
				0,						-- Collision (Normal)
				true,					-- Gravity Enabled
				5,						-- Ammo in the Clip
				1000,					-- Ammo in the Bag
				5,						-- Clip Capacity
				90,						-- Base Damage
				15,						-- Spread
				1,						-- Bullet Count (1 for common weapons, > 1 for shotguns)
				5,						-- Ammo to Reload (Ammo Clip for common weapons, 1 for shotguns)
				20000,					-- Max Bullet Distance
				20000,					-- Bullet Speed (visual only)
				Color(100, 58, 0),		-- Bullet Color
				0.25,					-- Sight's FOV multiplier
				Vector(-5, 0, -16),		-- Sight Location
				Rotator(-1, 0, 0),		-- Sight Rotation
				Vector(25, 0, 6),		-- Left Hand Location
				Rotator(0, 60, 90),		-- Left Hand Rotation
				Vector(-15, 0, 0),		-- Right Hand Offset
				HandlingMode.DoubleHandedWeapon,
				2,						-- Cadence (1 shot at each 0.15seconds)
				false,					-- Can Hold Use (keep pressing to keep firing, common to automatic weapons)
				false,					-- Need to release to Fire (common to Bows)
				"NanosWorld::P_Bullet_Trail",							-- Bullet Trail Particle
				"NanosWorld::P_Weapon_BarrelSmoke",						-- Barrel Particle
				"NanosWorld::P_Weapon_Shells_762x39",					-- Shells Particle
				"NanosWorld::A_Shotgun_Dry",					-- Weapon's Dry Sound
				"NanosWorld::A_Shotgun_Load_Bullet",			-- Weapon's Load Sound
				"",							-- Weapon's Unload Sound
				"NanosWorld::A_AimZoom",								-- Weapon's Zooming Sound
				"NanosWorld::A_Rattle",									-- Weapon's Aiming Sound
				"NanosWorld::A_SniperRifle_Shot",								-- Weapon's Shot Sound
				"NanosWorld::AM_Mannequin_Reload_Shotgun",		-- Character's Reloading Animation
				"NanosWorld::AM_Mannequin_Sight_Fire_Heavy",	-- Character's Aiming Animation
				"",						-- Magazine Mesh
				CrosshairType.None
			)
		end,

		SniperRifle_02 = function(location, rotation)
			return Weapon(
				location or Vector(),
				rotation or Rotator(),
				"PolygonWorld::SK_SniperRifle_02",	-- Model
				0,						-- Collision (Normal)
				true,					-- Gravity Enabled
				5,						-- Ammo in the Clip
				1000,					-- Ammo in the Bag
				5,						-- Clip Capacity
				100,						-- Base Damage
				15,						-- Spread
				1,						-- Bullet Count (1 for common weapons, > 1 for shotguns)
				5,						-- Ammo to Reload (Ammo Clip for common weapons, 1 for shotguns)
				20000,					-- Max Bullet Distance
				20000,					-- Bullet Speed (visual only)
				Color(100, 58, 0),		-- Bullet Color
				0.25,					-- Sight's FOV multiplier
				Vector(-5, 0, -14.5),		-- Sight Location
				Rotator(-1, 0, 0),		-- Sight Rotation
				Vector(25, 0, 6),		-- Left Hand Location
				Rotator(0, 60, 90),		-- Left Hand Rotation
				Vector(-25, 0, 5),		-- Right Hand Offset
				HandlingMode.DoubleHandedWeapon,
				2,						-- Cadence (1 shot at each 0.15seconds)
				false,					-- Can Hold Use (keep pressing to keep firing, common to automatic weapons)
				false,					-- Need to release to Fire (common to Bows)
				"NanosWorld::P_Bullet_Trail",							-- Bullet Trail Particle
				"NanosWorld::P_Weapon_BarrelSmoke",						-- Barrel Particle
				"NanosWorld::P_Weapon_Shells_762x39",					-- Shells Particle
				"NanosWorld::A_Shotgun_Dry",					-- Weapon's Dry Sound
				"NanosWorld::A_Shotgun_Load_Bullet",			-- Weapon's Load Sound
				"",							-- Weapon's Unload Sound
				"NanosWorld::A_AimZoom",								-- Weapon's Zooming Sound
				"NanosWorld::A_Rattle",									-- Weapon's Aiming Sound
				"NanosWorld::A_SniperRifle_Shot",								-- Weapon's Shot Sound
				"NanosWorld::AM_Mannequin_Reload_Shotgun",		-- Character's Reloading Animation
				"NanosWorld::AM_Mannequin_Sight_Fire_Heavy",	-- Character's Aiming Animation
				"",						-- Magazine Mesh
				CrosshairType.None
			)
		end,

		SniperRifle_03 = function(location, rotation)
			return Weapon(
				location or Vector(),
				rotation or Rotator(),
				"PolygonWorld::SK_SniperRifle_03",	-- Model
				0,						-- Collision (Normal)
				true,					-- Gravity Enabled
				5,						-- Ammo in the Clip
				1000,					-- Ammo in the Bag
				5,						-- Clip Capacity
				90,						-- Base Damage
				15,						-- Spread
				1,						-- Bullet Count (1 for common weapons, > 1 for shotguns)
				5,						-- Ammo to Reload (Ammo Clip for common weapons, 1 for shotguns)
				20000,					-- Max Bullet Distance
				20000,					-- Bullet Speed (visual only)
				Color(100, 58, 0),		-- Bullet Color
				0.25,					-- Sight's FOV multiplier
				Vector(-5, 0, -16),		-- Sight Location
				Rotator(-1, 0, 0),		-- Sight Rotation
				Vector(25, 0, 6),		-- Left Hand Location
				Rotator(0, 60, 90),		-- Left Hand Rotation
				Vector(-15, 0, 0),		-- Right Hand Offset
				HandlingMode.DoubleHandedWeapon,
				2,						-- Cadence (1 shot at each 0.15seconds)
				false,					-- Can Hold Use (keep pressing to keep firing, common to automatic weapons)
				false,					-- Need to release to Fire (common to Bows)
				"NanosWorld::P_Bullet_Trail",							-- Bullet Trail Particle
				"NanosWorld::P_Weapon_BarrelSmoke",						-- Barrel Particle
				"NanosWorld::P_Weapon_Shells_762x39",					-- Shells Particle
				"NanosWorld::A_Shotgun_Dry",					-- Weapon's Dry Sound
				"NanosWorld::A_Shotgun_Load_Bullet",			-- Weapon's Load Sound
				"",							-- Weapon's Unload Sound
				"NanosWorld::A_AimZoom",								-- Weapon's Zooming Sound
				"NanosWorld::A_Rattle",									-- Weapon's Aiming Sound
				"NanosWorld::A_SniperRifle_Shot",								-- Weapon's Shot Sound
				"NanosWorld::AM_Mannequin_Reload_Shotgun",		-- Character's Reloading Animation
				"NanosWorld::AM_Mannequin_Sight_Fire_Heavy",	-- Character's Aiming Animation
				"",						-- Magazine Mesh
				CrosshairType.None
			)
		end,

		SniperRifle_04 = function(location, rotation)
			return Weapon(
				location or Vector(),
				rotation or Rotator(),
				"PolygonWorld::SK_SniperRifle_04",	-- Model
				0,						-- Collision (Normal)
				true,					-- Gravity Enabled
				5,						-- Ammo in the Clip
				1000,					-- Ammo in the Bag
				5,						-- Clip Capacity
				90,						-- Base Damage
				15,						-- Spread
				1,						-- Bullet Count (1 for common weapons, > 1 for shotguns)
				5,						-- Ammo to Reload (Ammo Clip for common weapons, 1 for shotguns)
				20000,					-- Max Bullet Distance
				20000,					-- Bullet Speed (visual only)
				Color(100, 58, 0),		-- Bullet Color
				0.25,					-- Sight's FOV multiplier
				Vector(-5, 0, -15),		-- Sight Location
				Rotator(-1, 0, 0),		-- Sight Rotation
				Vector(25, 0, 4),		-- Left Hand Location
				Rotator(0, 60, 90),		-- Left Hand Rotation
				Vector(-15, 0, 0),		-- Right Hand Offset
				HandlingMode.DoubleHandedWeapon,
				2,						-- Cadence (1 shot at each 0.15seconds)
				false,					-- Can Hold Use (keep pressing to keep firing, common to automatic weapons)
				false,					-- Need to release to Fire (common to Bows)
				"NanosWorld::P_Bullet_Trail",							-- Bullet Trail Particle
				"NanosWorld::P_Weapon_BarrelSmoke",						-- Barrel Particle
				"NanosWorld::P_Weapon_Shells_762x39",					-- Shells Particle
				"NanosWorld::A_Shotgun_Dry",					-- Weapon's Dry Sound
				"NanosWorld::A_Shotgun_Load_Bullet",			-- Weapon's Load Sound
				"",							-- Weapon's Unload Sound
				"NanosWorld::A_AimZoom",								-- Weapon's Zooming Sound
				"NanosWorld::A_Rattle",									-- Weapon's Aiming Sound
				"NanosWorld::A_SniperRifle_Shot",								-- Weapon's Shot Sound
				"NanosWorld::AM_Mannequin_Reload_Shotgun",		-- Character's Reloading Animation
				"NanosWorld::AM_Mannequin_Sight_Fire_Heavy",	-- Character's Aiming Animation
				"",						-- Magazine Mesh
				CrosshairType.None
			)
		end,

		SniperRifle_05 = function(location, rotation)
			return Weapon(
				location or Vector(),
				rotation or Rotator(),
				"PolygonWorld::SK_SniperRifle_05",	-- Model
				0,						-- Collision (Normal)
				true,					-- Gravity Enabled
				5,						-- Ammo in the Clip
				1000,					-- Ammo in the Bag
				5,						-- Clip Capacity
				90,						-- Base Damage
				15,						-- Spread
				1,						-- Bullet Count (1 for common weapons, > 1 for shotguns)
				5,						-- Ammo to Reload (Ammo Clip for common weapons, 1 for shotguns)
				20000,					-- Max Bullet Distance
				20000,					-- Bullet Speed (visual only)
				Color(100, 58, 0),		-- Bullet Color
				0.25,					-- Sight's FOV multiplier
				Vector(-5, 0, -16.5),		-- Sight Location
				Rotator(-1, 0, 0),		-- Sight Rotation
				Vector(20, 0, 6),		-- Left Hand Location
				Rotator(0, 60, 90),		-- Left Hand Rotation
				Vector(-15, 0, 0),		-- Right Hand Offset
				HandlingMode.DoubleHandedWeapon,
				2,						-- Cadence (1 shot at each 0.15seconds)
				false,					-- Can Hold Use (keep pressing to keep firing, common to automatic weapons)
				false,					-- Need to release to Fire (common to Bows)
				"NanosWorld::P_Bullet_Trail",							-- Bullet Trail Particle
				"NanosWorld::P_Weapon_BarrelSmoke",						-- Barrel Particle
				"NanosWorld::P_Weapon_Shells_762x39",					-- Shells Particle
				"NanosWorld::A_Shotgun_Dry",					-- Weapon's Dry Sound
				"NanosWorld::A_Shotgun_Load_Bullet",			-- Weapon's Load Sound
				"",							-- Weapon's Unload Sound
				"NanosWorld::A_AimZoom",								-- Weapon's Zooming Sound
				"NanosWorld::A_Rattle",									-- Weapon's Aiming Sound
				"NanosWorld::A_SniperRifle_Shot",								-- Weapon's Shot Sound
				"NanosWorld::AM_Mannequin_Reload_Shotgun",		-- Character's Reloading Animation
				"NanosWorld::AM_Mannequin_Sight_Fire_Heavy",	-- Character's Aiming Animation
				"",						-- Magazine Mesh
				CrosshairType.None
			)
		end,

		P90 = function(location, rotation)
			return Weapon(
				location or Vector(),
				rotation or Rotator(),
				"PolygonWorld::SK_P90",	-- Model
				0,						-- Collision (Normal)
				true,					-- Gravity Enabled
				50,						-- Ammo in the Clip
				1000,					-- Ammo in the Bag
				50,						-- Clip Capacity
				10,						-- Base Damage
				40,						-- Spread
				1,						-- Bullet Count (1 for common weapons, > 1 for shotguns)
				50,						-- Ammo to Reload (Ammo Clip for common weapons, 1 for shotguns)
				20000,					-- Max Bullet Distance
				20000,					-- Bullet Speed (visual only)
				Color(100, 58, 0),		-- Bullet Color
				0.5,					-- Sight's FOV multiplier
				Vector(-5, 0, -22),	-- Sight Location
				Rotator(-1, 0, 0),		-- Sight Rotation
				Vector(25, 0, 0),		-- Left Hand Location
				Rotator(0, 60, 90),		-- Left Hand Rotation
				Vector(-15, -5, 0),		-- Right Hand Offset
				HandlingMode.DoubleHandedWeapon,
				0.05,					-- Cadence (1 shot at each 0.15seconds)
				true,					-- Can Hold Use (keep pressing to keep firing, common to automatic weapons)
				false,					-- Need to release to Fire (common to Bows)
				"NanosWorld::P_Bullet_Trail",							-- Bullet Trail Particle
				"NanosWorld::P_Weapon_BarrelSmoke",						-- Barrel Particle
				"NanosWorld::P_Weapon_Shells_762x39",					-- Shells Particle
				"NanosWorld::A_Rifle_Dry",								-- Weapon's Dry Sound
				"NanosWorld::A_Rifle_Load",								-- Weapon's Load Sound
				"NanosWorld::A_Rifle_Unload",							-- Weapon's Unload Sound
				"NanosWorld::A_AimZoom",								-- Weapon's Zooming Sound
				"NanosWorld::A_Rattle",									-- Weapon's Aiming Sound
				"NanosWorld::A_P226_Shot",								-- Weapon's Shot Sound
				"NanosWorld::AM_Mannequin_Reload_Rifle",				-- Character's Reloading Animation
				"NanosWorld::AM_Mannequin_Sight_Fire",					-- Character's Aiming Animation
				"NanosWorld::SM_AK47_Mag_Empty",						-- Magazine Mesh
				CrosshairType.Submachine
			)
		end,
	}
}

function GiveRandomWeapon(loc, rot)
	local r = math.random(1,40)

  print("Test: ".. r)

	if(r == 1) then return Quaternius.Weapons.AssaultRifle_01(loc, rot) end
	if(r == 2) then return Quaternius.Weapons.AssaultRifle_02(loc, rot) end
	if(r == 3) then return Quaternius.Weapons.AssaultRifle_03(loc, rot) end
	if(r == 4) then return Quaternius.Weapons.AssaultRifle_04(loc, rot) end
	if(r == 5) then return Quaternius.Weapons.AssaultRifle_05(loc, rot) end
	if(r == 6) then return Quaternius.Weapons.AssaultRifle_06(loc, rot) end
	if(r == 7) then return Quaternius.Weapons.AssaultRifle_07(loc, rot) end
	if(r == 8) then return Quaternius.Weapons.AssaultRifle_08(loc, rot) end
	if(r == 9) then return Quaternius.Weapons.AssaultRifle_09(loc, rot) end
	if(r == 10) then return Quaternius.Weapons.Bullpup_01(loc, rot) end
	if(r == 11) then return Quaternius.Weapons.Bullpup_02(loc, rot) end
	if(r == 12) then return Quaternius.Weapons.Bullpup_03(loc, rot) end
	if(r == 13) then return Quaternius.Weapons.P90(loc, rot) end
	if(r == 14) then return Quaternius.Weapons.Pistol_01(loc, rot) end
	if(r == 15) then return Quaternius.Weapons.Pistol_02(loc, rot) end
	if(r == 16) then return Quaternius.Weapons.Pistol_03(loc, rot) end
	if(r == 17) then return Quaternius.Weapons.Pistol_04(loc, rot) end
	if(r == 18) then return Quaternius.Weapons.Pistol_05(loc, rot) end
	if(r == 19) then return Quaternius.Weapons.Pistol_06(loc, rot) end
	if(r == 20) then return Quaternius.Weapons.Revolver_01(loc, rot) end
	if(r == 21) then return Quaternius.Weapons.Revolver_02(loc, rot) end
	if(r == 22) then return Quaternius.Weapons.Revolver_03(loc, rot) end
	if(r == 23) then return Quaternius.Weapons.Revolver_04(loc, rot) end
	if(r == 24) then return Quaternius.Weapons.Revolver_05(loc, rot) end
	if(r == 25) then return Quaternius.Weapons.Shotgun_01(loc, rot) end
	if(r == 26) then return Quaternius.Weapons.Shotgun_02(loc, rot) end
	if(r == 27) then return Quaternius.Weapons.Shotgun_03(loc, rot) end
	if(r == 28) then return Quaternius.Weapons.Shotgun_04(loc, rot) end
	if(r == 29) then return Quaternius.Weapons.Shotgun_05(loc, rot) end
	if(r == 30) then return Quaternius.Weapons.Shotgun_SawedOff(loc, rot) end
	if(r == 31) then return Quaternius.Weapons.SniperRifle_01(loc, rot) end
	if(r == 32) then return Quaternius.Weapons.SniperRifle_02(loc, rot) end
	if(r == 33) then return Quaternius.Weapons.SniperRifle_03(loc, rot) end
	if(r == 34) then return Quaternius.Weapons.SniperRifle_04(loc, rot) end
	if(r == 35) then return Quaternius.Weapons.SniperRifle_05(loc, rot) end
	if(r == 36) then return Quaternius.Weapons.SubmachineGun_01(loc, rot) end
	if(r == 37) then return Quaternius.Weapons.SubmachineGun_02(loc, rot) end
	if(r == 38) then return Quaternius.Weapons.SubmachineGun_03(loc, rot) end
	if(r == 39) then return Quaternius.Weapons.SubmachineGun_04(loc, rot) end
	if(r == 40) then return Quaternius.Weapons.SubmachineGun_05(loc, rot) end

end
