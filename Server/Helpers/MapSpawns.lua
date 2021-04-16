vehicle_names = {
	"SUV",
	"Hatchback",
	"Pickup",
	"SportsCar",
	"TruckBox",
	"TruckChassis",
}

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

ServerWeapons = {}
ServerVehicles = {}

function SpawnRandomWeapon(loc, rot)
	local r = math.random(1,40)

	if(r == 1) then Quaternius.Weapons.AssaultRifle_01(loc, rot) end
	if(r == 2) then Quaternius.Weapons.AssaultRifle_02(loc, rot) end
	if(r == 3) then Quaternius.Weapons.AssaultRifle_03(loc, rot) end
	if(r == 4) then Quaternius.Weapons.AssaultRifle_04(loc, rot) end
	if(r == 5) then Quaternius.Weapons.AssaultRifle_05(loc, rot) end
	if(r == 6) then Quaternius.Weapons.AssaultRifle_06(loc, rot) end
	if(r == 7) then Quaternius.Weapons.AssaultRifle_07(loc, rot) end
	if(r == 8) then Quaternius.Weapons.AssaultRifle_08(loc, rot) end
	if(r == 9) then Quaternius.Weapons.AssaultRifle_09(loc, rot) end
	if(r == 10) then Quaternius.Weapons.Bullpup_01(loc, rot) end
	if(r == 11) then Quaternius.Weapons.Bullpup_02(loc, rot) end
	if(r == 12) then Quaternius.Weapons.Bullpup_03(loc, rot) end
	if(r == 13) then Quaternius.Weapons.P90(loc, rot) end
	if(r == 14) then Quaternius.Weapons.Pistol_01(loc, rot) end
	if(r == 15) then Quaternius.Weapons.Pistol_02(loc, rot) end
	if(r == 16) then Quaternius.Weapons.Pistol_03(loc, rot) end
	if(r == 17) then Quaternius.Weapons.Pistol_04(loc, rot) end
	if(r == 18) then Quaternius.Weapons.Pistol_05(loc, rot) end
	if(r == 19) then Quaternius.Weapons.Pistol_06(loc, rot) end
	if(r == 20) then Quaternius.Weapons.Revolver_01(loc, rot) end
	if(r == 21) then Quaternius.Weapons.Revolver_02(loc, rot) end
	if(r == 22) then Quaternius.Weapons.Revolver_03(loc, rot) end
	if(r == 23) then Quaternius.Weapons.Revolver_04(loc, rot) end
	if(r == 24) then Quaternius.Weapons.Revolver_05(loc, rot) end
	if(r == 25) then Quaternius.Weapons.Shotgun_01(loc, rot) end
	if(r == 26) then Quaternius.Weapons.Shotgun_02(loc, rot) end
	if(r == 27) then Quaternius.Weapons.Shotgun_03(loc, rot) end
	if(r == 28) then Quaternius.Weapons.Shotgun_04(loc, rot) end
	if(r == 29) then Quaternius.Weapons.Shotgun_05(loc, rot) end
	if(r == 30) then Quaternius.Weapons.Shotgun_SawedOff(loc, rot) end
	if(r == 31) then Quaternius.Weapons.SniperRifle_01(loc, rot) end
	if(r == 32) then Quaternius.Weapons.SniperRifle_02(loc, rot) end
	if(r == 33) then Quaternius.Weapons.SniperRifle_03(loc, rot) end
	if(r == 34) then Quaternius.Weapons.SniperRifle_04(loc, rot) end
	if(r == 35) then Quaternius.Weapons.SniperRifle_05(loc, rot) end
	if(r == 36) then Quaternius.Weapons.SubmachineGun_01(loc, rot) end
	if(r == 37) then Quaternius.Weapons.SubmachineGun_02(loc, rot) end
	if(r == 38) then Quaternius.Weapons.SubmachineGun_03(loc, rot) end
	if(r == 39) then Quaternius.Weapons.SubmachineGun_04(loc, rot) end
	if(r == 40) then Quaternius.Weapons.SubmachineGun_05(loc, rot) end


end

function SpawnRandomVehicle(loc, rot, vehicle)
	local r = math.random(1,9)

	if(r == 1) then NanosWorldVehicles.SUV(loc, rot) end
	if(r == 2) then NanosWorldVehicles.Hatchback(loc, rot) end
	if(r == 3) then NanosWorldVehicles.Pickup(loc, rot) end
	if(r == 4) then NanosWorldVehicles.SportsCar(loc, rot) end
	if(r == 5) then NanosWorldVehicles.TruckBox(loc, rot) end
	if(r == 6) then NanosWorldVehicles.TruckChassis(loc, rot) end
end

props = {

	-- Cones und so
	--Prop(Vector(-2200, 2200, 10), Rotator(0, 44, 0), "PolygonWorld::SM_Prop_Cone_01"),
	Prop(Vector(-2200, 2850, 10), Rotator(0, 74, 0), "PolygonWorld::SM_Prop_Cone_01"),
	Prop(Vector(-2550, 2850, 10), Rotator(0, 45, 0), "PolygonWorld::SM_Prop_Cone_01"),
	Prop(Vector(-2200, 2650, 10), Rotator(0, 14, 0), "PolygonWorld::SM_Prop_Cone_01"),
	Prop(Vector(-2550, 2250, 10), Rotator(0, -30, 0), "PolygonWorld::SM_Prop_Cone_01"),
	Prop(Vector(-2300, 2150, 1), Rotator(0, 15, 0), "PolygonWorld::SM_Prop_Barrier_01"),
	Prop(Vector(-2300, 2900, 1), Rotator(0, -15, 0), "PolygonWorld::SM_Prop_Barrier_01"),

	Weapon(
        Vector(-2200, 2200, 10), -- Spawn Location
        Rotator(0, 90, 90),     -- Spawn Rotation
        "PolygonWorld::SK_Wep_SniperRifle_01", -- Model
        0,                    -- Collision (Normal)
        true,                 -- Gravity Enabled
        1,                   -- Default Ammo in the Clip
        1000,                 -- Default Ammo in the Bag
        1,                   -- Clip Capacity
        85,                   -- Base Damage
        0,                   -- Spread
        1,                    -- Bullet Count (1 for common weapons, > 1 for shotguns)
        1,                   -- Ammo to Reload (Ammo Clip for common weapons, 1 for shotguns)
        20000,                -- Max Bullet Distance
        15000,                 -- Bullet Speed (visual only)
        Color(20, 10000, 0),  -- Bullet Color
        0.2,                  -- Sight's FOV multiplier
		Vector(0, 0, -10.85), -- Sight Location
        Rotator(-1, 0, 0),    -- Sight Rotation
        Vector(26, 0, 4.5),   -- Left Hand Location
        Rotator(0, 60, 90),   -- Left Hand Rotation
        Vector(-10, 0, 0),    -- Right Hand Offset
        1,                    -- Handling Mode (0. SingleHandedWeapon, 1. DoubleHandedWeapon, 2. SingleHandedMelee, 3. DoubleHandedMelee, 4. Throwable, 5. Torch)
        0.35,                 -- Cadence (1 shot at each 0.15seconds)
        false,                 -- Can Hold Use (keep pressing to keep firing, common to automatic weapons)
        true,                -- Need to release to Fire (common to Bows)
        "NanosWorld::P_Bullet_Trail",                       -- Bullet Trail Particle
        "NanosWorld::P_Weapon_BarrelSmoke",                        -- Barrel Particle
        "NanosWorld::P_Weapon_Shells_762x39",                      -- Shells Particle
        "NanosWorld::A_Rifle_Dry",                                 -- Weapon's Dry Sound
        "NanosWorld::A_Rifle_Load",                                -- Weapon's Load Sound
        "NanosWorld::A_Rifle_Unload",                              -- Weapon's Unload Sound
        "NanosWorld::A_AimZoom",                                   -- Weapon's Zooming Sound
        "NanosWorld::A_Rattle",                                    -- Weapon's Aiming Sound
        "PolygonWorld::SniperSound",                                 -- Weapon's Shot Sound
        "NanosWorld::AM_Mannequin_Reload_Rifle",                   -- Character's Reloading Animation
        "NanosWorld::AM_Mannequin_Sight_Fire",                     -- Character's Aiming Animation
        "PolygonWorld::SM_Wep_Mod_Loader_04_Magazine"                            -- Magazine Mesh
    ),

	Prop(Vector(-9550.000, 8250.000, 1.000), Rotator(0.000000, -30.000092, 0.000000), "PolygonWorld::SM_Prop_Cone_01"),
	Prop(Vector(-9550.000, 8650.000, 1.000), Rotator(0.000000, 14.999991, 0.000000), "PolygonWorld::SM_Prop_Cone_01"),
	Prop(Vector(-9550.000, 8850.000, 1.000), Rotator(0.000000, 45.000019, 0.000000), "PolygonWorld::SM_Prop_Cone_01"),
	Prop(Vector(-9200.000, 8850.000, 1.000), Rotator(0.000000, 74.999939, 0.000000), "PolygonWorld::SM_Prop_Cone_01"),
	Prop(Vector(-9200.000, 8200.000, 1.000), Rotator(0.000000, 44.999870, 0.000000), "PolygonWorld::SM_Prop_Cone_01"),
	Prop(Vector(7450.000, -3250.000, 1.000), Rotator(0.000000, -30.000092, 0.000000), "PolygonWorld::SM_Prop_Cone_01"),
	Prop(Vector(7450.000, -2850.000, 1.000), Rotator(0.000000, 14.999991, 0.000000), "PolygonWorld::SM_Prop_Cone_01"),
	Prop(Vector(7450.000, -2650.000, 1.000), Rotator(0.000000, 45.000019, 0.000000), "PolygonWorld::SM_Prop_Cone_01"),
	Prop(Vector(7800.000, -2650.000, 1.000), Rotator(0.000000, 74.999939, 0.000000), "PolygonWorld::SM_Prop_Cone_01"),
	Prop(Vector(7800.000, -3300.000, 1.000), Rotator(0.000000, 44.999870, 0.000000), "PolygonWorld::SM_Prop_Cone_01"),
	Prop(Vector(3750.001, -11949.998, 1.000), Rotator(0.000000, -120.000069, 0.000000), "PolygonWorld::SM_Prop_Cone_01"),
	Prop(Vector(4150.001, -11949.999, 1.000), Rotator(0.000000, -75.000122, 0.000000), "PolygonWorld::SM_Prop_Cone_01"),
	Prop(Vector(4350.000, -11950.000, 1.000), Rotator(0.000000, -45.000088, 0.000000), "PolygonWorld::SM_Prop_Cone_01"),
	Prop(Vector(4350.001, -12299.999, 1.000), Rotator(0.000000, -15.000203, 0.000000), "PolygonWorld::SM_Prop_Cone_01"),
	Prop(Vector(3699.999, -12299.999, 1.000), Rotator(0.000000, -45.000252, 0.000000), "PolygonWorld::SM_Prop_Cone_01"),
	Prop(Vector(2750.001, 6550.002, 1.000), Rotator(0.000000, -120.000069, 0.000000), "PolygonWorld::SM_Prop_Cone_01"),
	Prop(Vector(3150.001, 6550.001, 1.000), Rotator(0.000000, -75.000122, 0.000000), "PolygonWorld::SM_Prop_Cone_01"),
	Prop(Vector(3350.000, 6550.000, 1.000), Rotator(0.000000, -45.000088, 0.000000), "PolygonWorld::SM_Prop_Cone_01"),
	Prop(Vector(3350.001, 6200.001, 1.000), Rotator(0.000000, -15.000203, 0.000000), "PolygonWorld::SM_Prop_Cone_01"),
	Prop(Vector(2699.999, 6200.001, 1.000), Rotator(0.000000, -45.000252, 0.000000), "PolygonWorld::SM_Prop_Cone_01"),
	Prop(Vector(651.097, -9051.159, 2.071), Rotator(0.000000, 90.000076, 0.000000), "PolygonWorld::SM_Prop_Mailbox_01", 0, true, false),
	Prop(Vector(-2155.564, 1629.706, -1.127), Rotator(0.000000, 30.000084, 0.000000), "PolygonWorld::SM_Prop_CarboardBox_03", 0, true, false),
	Prop(Vector(-2205.241, 1749.313, 0.449), Rotator(0.000000, -30.000092, 0.000000), "PolygonWorld::SM_Prop_CarboardBox_01", 0, true, false),
	Prop(Vector(-2097.512, 1950.591, 2.045), Rotator(0.000000, 0.000000, 0.000000), "PolygonWorld::SM_Prop_TrashBag_03", 0, true, false),
	Prop(Vector(-2154.188, 1945.305, 2.269), Rotator(-30.000027, 0.000000, 0.000000), "PolygonWorld::SM_Prop_TrashBag_01", 0, true, false),
	Prop(Vector(3358.937, -8950.040, 1.000), Rotator(0.000000, 120.000130, 0.000000), "PolygonWorld::SM_Prop_TrashBag_03", 0, true, false),
	Prop(Vector(3288.054, -8938.050, 4.434), Rotator(0.000000, -164.999924, 0.000000), "PolygonWorld::SM_Prop_CarboardBox_04", 0, true, false),
	Prop(Vector(4200.000, -10250.000, 1.000), Rotator(0.000000, 90.000076, 0.000000), "PolygonWorld::SM_Prop_ParkingMeter_02", 0, true, false),
	Prop(Vector(-8000.000, 150.000, 1.000), Rotator(0.000000, -89.999710, 0.000000), "PolygonWorld::SM_Prop_Sign_BusStop_01", 0, true, false),
	Prop(Vector(-1850.000, 3350.000, 1.000), Rotator(0.000000, 0.000000, 0.000000), "PolygonWorld::SM_Prop_Mailbox_01", 0, true, false),
	Prop(Vector(-4100.000, 1850.000, 1.000), Rotator(0.000000, 0.000000, 0.000000), "PolygonWorld::SM_Prop_Trashbin_01", 0, true, false),
	Prop(Vector(-4500.000, 1850.000, 1.000), Rotator(0.000000, 0.000000, 0.000000), "PolygonWorld::SM_Prop_Mailbox_01", 0, true, false),
	Prop(Vector(-4750.000, 1850.000, 1.000), Rotator(0.000000, 0.000000, 0.000000), "PolygonWorld::SM_Prop_Hydrant_01", 0, true, false),
	Prop(Vector(-1950.000, 3350.000, 1.000), Rotator(0.000000, 0.000000, 0.000000), "PolygonWorld::SM_Prop_Trashbin_01", 0, true, false),
	Prop(Vector(650.000, -1600.000, 1.000), Rotator(0.000000, 0.000000, 0.000000), "PolygonWorld::SM_Prop_Hydrant_01", 0, true, false),
	Prop(Vector(650.000, -2250.000, 1.000), Rotator(0.000000, 0.000000, 0.000000), "PolygonWorld::SM_Prop_Trashbin_01", 0, true, false),
	Prop(Vector(650.000, -6250.000, 1.000), Rotator(0.000000, 0.000000, 0.000000), "PolygonWorld::SM_Prop_Trashbin_01", 0, true, false),
	Prop(Vector(700.000, -5900.000, 1.000), Rotator(0.000000, 90.000076, 0.000000), "PolygonWorld::SM_Prop_Mailbox_01", 0, true, false),
	Prop(Vector(650.000, -10000.000, 1.000), Rotator(0.000000, 0.000000, 0.000000), "PolygonWorld::SM_Prop_Hydrant_01", 0, true, false),
	Prop(Vector(950.000, -10350.000, 1.000), Rotator(0.000000, 90.000076, 0.000000), "PolygonWorld::SM_Prop_ParkingMeter_02", 0, true, false),
	Prop(Vector(3350.000, -8900.000, 1.000), Rotator(0.000000, 0.000000, 0.000000), "PolygonWorld::SM_Prop_Trashbin_01", 0, true, false),
	Prop(Vector(2750.000, -10850.000, 1.000), Rotator(0.000000, 0.000000, 0.000000), "PolygonWorld::SM_Prop_Trashbin_01", 0, true, false),
	Prop(Vector(2700.000, -10800.000, 1.000), Rotator(0.000000, 0.000000, 0.000000), "PolygonWorld::SM_Prop_TrashBag_03", 0, true, false),
	Prop(Vector(2750.000, -10800.000, 1.000), Rotator(0.000000, 0.000000, 0.000000), "PolygonWorld::SM_Prop_TrashBag_02", 0, true, false),
	Prop(Vector(4651.098, -8151.159, 2.071), Rotator(0.000000, -0.000092, 0.000000), "PolygonWorld::SM_Prop_Mailbox_01", 0, true, false),
	Prop(Vector(-2356.996, 3001.659, 1.000), Rotator(0.000000, -20.000057, 0.000000), "PolygonWorld::SM_Prop_Hydrant_01", 0, true, false),
	Prop(Vector(678.599, 1856.068, 2.793), Rotator(0.000000, 0.000000, 0.000000), "PolygonWorld::SM_Prop_Hydrant_01", 0, true, false),
	Prop(Vector(1050.000, -6900.000, 1.000), Rotator(0.000000, -90.000053, 0.000000), "PolygonWorld::SM_Prop_Sign_GiveWay_03", 0, true, false),
	Prop(Vector(1050.000, -10900.000, 1.000), Rotator(0.000000, -90.000053, 0.000000), "PolygonWorld::SM_Prop_Sign_GiveWay_03", 0, true, false),
	Prop(Vector(5950.000, -8100.000, 1.000), Rotator(0.000000, 90.000015, 0.000000), "PolygonWorld::SM_Prop_Sign_GiveWay_03", 0, true, false),
	Prop(Vector(-1000.000, 3400.000, 1.000), Rotator(0.000000, 90.000015, 0.000000), "PolygonWorld::SM_Prop_Sign_GiveWay_03", 0, true, false),
	Prop(Vector(-5900.000, -1500.000, 1.000), Rotator(0.000000, 179.999939, 0.000000), "PolygonWorld::SM_Prop_Sign_Stop_01", 0, true, false),
	Prop(Vector(-5000.000, -1150.000, 1.000), Rotator(0.000000, 0.000000, 0.000000), "PolygonWorld::SM_Prop_Trashbin_01", 0, true, false),
	Prop(Vector(-1650.000, -1150.000, 1.000), Rotator(0.000000, 0.000000, 0.000000), "PolygonWorld::SM_Prop_Mailbox_01", 0, true, false),
	Prop(Vector(-1500.000, -1150.000, 1.000), Rotator(0.000000, 0.000000, 0.000000), "PolygonWorld::SM_Prop_Trashbin_01", 0, true, false),
	Prop(Vector(-1550.000, 150.000, 1.000), Rotator(0.000000, -179.999924, 0.000000), "PolygonWorld::SM_Prop_Mailbox_01", 0, true, false),
	Prop(Vector(-2200.000, 150.000, 1.000), Rotator(0.000000, 0.000000, 0.000000), "PolygonWorld::SM_Prop_Hydrant_01", 0, true, false),
	Prop(Vector(7650.000, -11150.000, 1.000), Rotator(0.000000, 0.000000, 0.000000), "PolygonWorld::SM_Prop_Trashbin_01", 0, true, false),
	Prop(Vector(5500.000, -12150.000, 1.000), Rotator(0.000000, 0.000000, 0.000000), "PolygonWorld::SM_Prop_Trashbin_01", 0, true, false),
	Prop(Vector(5350.000, -12200.000, 1.000), Rotator(0.000000, 0.000000, 0.000000), "PolygonWorld::SM_Prop_Mailbox_01", 0, true, false),
	Prop(Vector(-650.000, -8500.000, 1.000), Rotator(0.000000, 0.000000, 0.000000), "PolygonWorld::SM_Prop_Trashbin_01", 0, true, false),
	Prop(Vector(-650.000, -4500.000, 1.000), Rotator(0.000000, 0.000000, 0.000000), "PolygonWorld::SM_Prop_Trashbin_01", 0, true, false),
	Prop(Vector(-650.000, 8650.000, 1.000), Rotator(0.000000, 0.000000, 0.000000), "PolygonWorld::SM_Prop_Trashbin_01", 0, true, false),
	Prop(Vector(-650.000, 8500.000, 1.000), Rotator(0.000000, 0.000000, 0.000000), "PolygonWorld::SM_Prop_Hydrant_01", 0, true, false),
	Prop(Vector(-1300.000, 10650.000, 1.000), Rotator(0.000000, 0.000000, 0.000000), "PolygonWorld::SM_Prop_Trashbin_01", 0, true, false),
	Prop(Vector(-5500.000, 10650.000, 1.000), Rotator(0.000000, 0.000000, 0.000000), "PolygonWorld::SM_Prop_Trashbin_01", 0, true, false),
	Prop(Vector(-10650.000, 9300.000, 1.000), Rotator(0.000000, 0.000000, 0.000000), "PolygonWorld::SM_Prop_Trashbin_01", 0, true, false),
	Prop(Vector(7650.000, 5100.000, 1.000), Rotator(0.000000, 0.000000, 0.000000), "PolygonWorld::SM_Prop_Trashbin_01", 0, true, false),
	Prop(Vector(-4650.000, 3670.000, 1.000), Rotator(0.000000, 0.000000, 0.000000), "PolygonWorld::SM_Prop_Hydrant_01", 0, true, false),
	Prop(Vector(-5820.000, 1610.000, 1.000), Rotator(0.000000, -90.000114, 0.000000), "PolygonWorld::SM_Prop_ParkingMeter_02", 0, true, false),
	Prop(Vector(-3840.000, 3630.000, 1.000), Rotator(0.000000, 0.000000, 0.000000), "PolygonWorld::SM_Prop_ParkingMeter_01", 0, true, false),
	Prop(Vector(-5380.000, 3630.000, 1.000), Rotator(0.000000, 0.000000, 0.000000), "PolygonWorld::SM_Prop_ParkingMeter_01", 0, true, false),
	Prop(Vector(-3360.000, 3760.000, 1.000), Rotator(0.000000, 40.000050, 0.000000), "PolygonWorld::SM_Prop_HotdogStand_01", 0, true, false),
	Prop(Vector(-3950.000, 1820.000, 1.000), Rotator(0.000000, 70.000122, 0.000000), "PolygonWorld::SM_Prop_TrashBag_03", 0, true, false),
	Prop(Vector(-2270.000, 3240.000, 1.000), Rotator(0.000000, 0.000000, 0.000000), "PolygonWorld::SM_Prop_Trashbin_01", 0, true, false),
}

function SpawnVehiclesInWorld()
	vehicles = {
		SpawnRandomVehicle(Vector(-4680.000, 2270.000, 1.000), Rotator(0.000000, 90.000114, 0.000000), vehicle_names[math.random(#vehicle_names)]),
		SpawnRandomVehicle(Vector(-4350.000, 2270.000, 1.000), Rotator(0.000000, 90.000114, 0.000000), vehicle_names[math.random(#vehicle_names)]),
		SpawnRandomVehicle(Vector(-3350.000, 2270.000, 1.000), Rotator(0.000000, 90.000114, 0.000000), vehicle_names[math.random(#vehicle_names)]),
		SpawnRandomVehicle(Vector(-3990.000, 3240.000, 1.000), Rotator(0.000000, -89.999489, 0.000000), vehicle_names[math.random(#vehicle_names)]),
		SpawnRandomVehicle(Vector(-6330.000, 3240.000, 1.000), Rotator(0.000000, -89.999489, 0.000000), vehicle_names[math.random(#vehicle_names)]),
		SpawnRandomVehicle(Vector(-4780.000, 60.000, 21.000), Rotator(0.000000, 0.000641, 0.000000), vehicle_names[math.random(#vehicle_names)]),
		SpawnRandomVehicle(Vector(-13470.000, 60.000, 21.000), Rotator(0.000000, 0.000641, 0.000000), vehicle_names[math.random(#vehicle_names)]),
		SpawnRandomVehicle(Vector(4490.000, -14750.000, 1.000), Rotator(0.000000, 90.000114, 0.000000), vehicle_names[math.random(#vehicle_names)]),
		SpawnRandomVehicle(Vector(4820.000, -14750.000, 1.000), Rotator(0.000000, 90.000114, 0.000000), vehicle_names[math.random(#vehicle_names)]),
		SpawnRandomVehicle(Vector(7820.000, -14750.000, 1.000), Rotator(0.000000, 90.000114, 0.000000), vehicle_names[math.random(#vehicle_names)]),
		SpawnRandomVehicle(Vector(3530.000, -6940.000, -9.000), Rotator(0.000000, 0.000000, 0.000000), vehicle_names[math.random(#vehicle_names)]),
		SpawnRandomVehicle(Vector(-2790.000, 13480.000, -9.000), Rotator(0.000000, 0.000000, 0.000000), vehicle_names[math.random(#vehicle_names)]),
		SpawnRandomVehicle(Vector(-2670.000, 14760.000, 1.000), Rotator(0.000000, -90.000114, 0.000000), vehicle_names[math.random(#vehicle_names)]),
		SpawnRandomVehicle(Vector(-3000.000, 14760.000, 1.000), Rotator(0.000000, -90.000114, 0.000000), vehicle_names[math.random(#vehicle_names)]),
		SpawnRandomVehicle(Vector(-3350.000, 14760.000, 1.000), Rotator(0.000000, -90.000114, 0.000000), vehicle_names[math.random(#vehicle_names)]),
		SpawnRandomVehicle(Vector(-5000.000, 14760.000, 1.000), Rotator(0.000000, -90.000114, 0.000000), vehicle_names[math.random(#vehicle_names)]),
		SpawnRandomVehicle(Vector(-14070.000, 12640.000, -9.000), Rotator(0.000000, -90.000114, 0.000000), vehicle_names[math.random(#vehicle_names)]),

	}

	ServerVehicles = vehicles
end

function SpawnWeaponsInWorld()

	weapons = {
		SpawnRandomWeapon(Vector(-6990.000, 1870.000, 21.000), Rotator(90.000000, 0.000002, 0.000002)),
		SpawnRandomWeapon(Vector(-7870.000, 4330.000, 21.000), Rotator(90.000000, 0.000000, 0.000000)),
		SpawnRandomWeapon(Vector(-6870.000, 5310.000, 41.000), Rotator(90.000000, 0.000000, 40.000122)),
		SpawnRandomWeapon(Vector(-4710.000, 4620.000, 121.000), Rotator(90.000000, 0.000000, 40.000122)),
		SpawnRandomWeapon(Vector(-4710.000, 4530.000, 121.000), Rotator(90.000000, 0.000000, 40.000122)),
		SpawnRandomWeapon(Vector(-2600.000, 5220.000, 171.000), Rotator(-90.000000, 0.211013, -0.210999)),
		SpawnRandomWeapon(Vector(-2600.000, 5990.000, -149.000), Rotator(-90.000000, 179.841736, -179.841721)),
		SpawnRandomWeapon(Vector(-2600.000, 7210.000, 171.000), Rotator(-90.000000, 179.841736, -179.841721)),
		SpawnRandomWeapon(Vector(-2860.000, 8820.000, 2.000), Rotator(-90.000000, 0.079107, -0.079071)),
		SpawnRandomWeapon(Vector(-8709.999, 8229.999, -649.000), Rotator(90.000000, -7.125023, -97.125275)),
		SpawnRandomWeapon(Vector(-5039.999, 11970.000, 12.001), Rotator(-90.000000, -0.633014, 0.633038)),
		SpawnRandomWeapon(Vector(-14259.997, 8439.999, 12.000), Rotator(-90.000000, -0.633014, 0.633038)),
		SpawnRandomWeapon(Vector(-11299.998, 4299.999, 22.000), Rotator(-90.000000, -0.633014, 0.633038)),
		SpawnRandomWeapon(Vector(-11979.998, -1330.000, 22.000), Rotator(-90.000000, 2.530469, -2.530426)),
		SpawnRandomWeapon(Vector(-3260.001, -5999.999, 1.999), Rotator(0.000000, 0.000002, 0.000000)),
		SpawnRandomWeapon(Vector(1869.998, -10019.998, 130.998), Rotator(-90.000000, 0.000000, 60.000183)),
		SpawnRandomWeapon(Vector(1959.996, -10019.998, 130.999), Rotator(-90.000000, 0.000000, 60.000183)),
		SpawnRandomWeapon(Vector(4859.998, -9550.000, 140.999), Rotator(-90.000000, -0.633014, 0.633038)),
		SpawnRandomWeapon(Vector(8309.994, -10849.998, 51.002), Rotator(-90.000000, -0.633014, 0.633038)),
		SpawnRandomWeapon(Vector(-4670.001, -2500.000, 1.999), Rotator(0.000000, 0.000002, 0.000000)),
		SpawnRandomWeapon(Vector(-4670.000, -2670.000, 2.000), Rotator(0.000000, 0.000002, 0.000000)),
		SpawnRandomWeapon(Vector(-4690.001, -2820.000, 2.000), Rotator(0.000000, 0.000002, 0.000000)),
		SpawnRandomWeapon(Vector(-4690.000, -2990.000, 1.999), Rotator(0.000000, 0.000002, 0.000000)),
		SpawnRandomWeapon(Vector(-4690.000, -3220.000, 1.999), Rotator(0.000000, 0.000002, 0.000000)),
		SpawnRandomWeapon(Vector(2729.998, -1869.999, 200), Rotator(-90.000000, 0.000000, -89.999817)),
		SpawnRandomWeapon(Vector(7889.998, 7340.001, 42.001), Rotator(0.000000, 0.000002, 0.000000)),
		SpawnRandomWeapon(Vector(-4525.000, -4885.000, 41.000), Rotator(0.000000, 0.000000, 0.000000)),
		SpawnRandomWeapon(Vector(-4525.000, -5020.000, 41.000), Rotator(0.000000, 0.000000, 0.000000)),
		SpawnRandomWeapon(Vector(-4525.000, -5180.000, 41.000), Rotator(0.000000, 0.000000, 0.000000)),
		SpawnRandomWeapon(Vector(-4160.000, -5180.000, 41.000), Rotator(0.000000, 0.000000, 0.000000)),
		SpawnRandomWeapon(Vector(-3905.000, -5180.000, 41.000), Rotator(0.000000, 0.000000, 0.000000)),
		SpawnRandomWeapon(Vector(-3905.000, -4875.000, 41.000), Rotator(0.000000, 0.000000, 0.000000)),
		SpawnRandomWeapon(Vector(-4075.000, -4875.000, 41.000), Rotator(0.000000, 0.000000, 0.000000)),
		SpawnRandomWeapon(Vector(-4280.000, -4875.000, 41.000), Rotator(0.000000, 0.000000, 0.000000)),
		SpawnRandomWeapon(Vector(-2965.000, -5590.000, 46.000), Rotator(0.000000, 90.000114, 0.000000)),
		SpawnRandomWeapon(Vector(-2965.000, -5450.000, 46.000), Rotator(0.000000, 90.000114, 0.000000)),
		SpawnRandomWeapon(Vector(-1915.000, -2560.000, 46.000), Rotator(0.000000, 90.000114, 0.000000)),
		SpawnRandomWeapon(Vector(-2290.000, -2435.000, 46.000), Rotator(0.000000, 110.000137, 0.000000)),
		SpawnRandomWeapon(Vector(-4480.000, -2770.000, 36.000), Rotator(0.000000, 0.000000, 0.000000)),
		SpawnRandomWeapon(Vector(-4780.000, -3625.000, 36.000), Rotator(0.000000, 70.000122, 0.000000)),
		SpawnRandomWeapon(Vector(-1145.000, -4425.000, 26.000), Rotator(0.000000, 0.000000, 0.000000)),
		SpawnRandomWeapon(Vector(-1155.000, -3680.000, 51.000), Rotator(0.000000, 0.000000, 0.000000)),
		SpawnRandomWeapon(Vector(2740.000, 870.000, 36.000), Rotator(0.000000, 0.000000, 0.000000)),
		SpawnRandomWeapon(Vector(-790.000, 5755.000, 36.000), Rotator(0.000000, 0.000000, 0.000000)),
		SpawnRandomWeapon(Vector(-835.000, 2845.000, 36.000), Rotator(0.000000, 0.000000, 0.000000)),
		SpawnRandomWeapon(Vector(-10435.000, 555.000, 21.000), Rotator(0.000000, 0.000000, 0.000000)),
		SpawnRandomWeapon(Vector(-7550.000, -1290.000, 31.000), Rotator(0.000000, 0.000000, 0.000000)),
		SpawnRandomWeapon(Vector(-2980.000, 255.000, 86.000), Rotator(0.000000, 0.000000, 0.000000)),
		SpawnRandomWeapon(Vector(4760.000, -2955.000, 41.000), Rotator(0.000000, 0.000000, 0.000000)),
		SpawnRandomWeapon(Vector(4735.000, -4620.000, 91.000), Rotator(0.000000, 0.000000, 0.000000)),
	}

	ServerWeapons = weapons

end
