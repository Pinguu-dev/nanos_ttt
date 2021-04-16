vehicle_names = {
	"SUV",
	"Hatchback",
	"Pickup",
	"SportsCar",
	"TruckBox",
	"TruckChassis",
}

NanosWorldVehicles = {
	SUV = function(location, rotation)
		local vehicle = Vehicle(location or Vector(), rotation or Rotator(), "NanosWorld::SK_SUV", 0, true, false, true, "NanosWorld::A_Vehicle_Engine_14")

		vehicle:SetEngineSetup(4500)
		vehicle:SetSteeringWheelSetup(Vector(0, 20, 131), 26)

		vehicle:SetWheel(0, "Wheel_Front_Left",  35, 22, 50, 20, 0.25, 2, 17, 1000, 50, 50, 10)
		vehicle:SetWheel(1, "Wheel_Front_Right", 35, 22, 50, 20, 0.25, 2, 17, 1000, 50, 50, 10)
		vehicle:SetWheel(2, "Wheel_Rear_Left",   35, 22,  0, 20, 0.25, 2, 17, 1000, 50, 50, 10)
		vehicle:SetWheel(3, "Wheel_Rear_Right",  35, 22,  0, 20, 0.25, 2, 17, 1000, 50, 50, 10)

		vehicle:SetDoor(0, Vector( 22, -80, 120), Vector(-18, -47, 110), Rotator(0, 0, 15), 75, -150)
		vehicle:SetDoor(1, Vector( 22,  80, 120), Vector( 5,   47, 105), Rotator(0, 0,  0), 60,  150)
		vehicle:SetDoor(2, Vector(-80, -80, 120), Vector(-60, -39,  90), Rotator(0, 0,  0), 60, -150)
		vehicle:SetDoor(3, Vector(-80,  80, 120), Vector(-60,  39,  90), Rotator(0, 0,  0), 60,  150)

		vehicle:RecreatePhysics()
		return vehicle
	end,
	Hatchback = function(location, rotation)
		local vehicle = Vehicle(location or Vector(), rotation or Rotator(), "NanosWorld::SK_Hatchback", 0, true, false, true, "NanosWorld::A_Vehicle_Engine_01")

		vehicle:SetEngineSetup(5700)
		vehicle:SetSteeringWheelSetup(Vector(0, 27, 130), 24)

		vehicle:SetWheel(0, "Wheel_Front_Left",  26, 17, 50)
		vehicle:SetWheel(1, "Wheel_Front_Right", 26, 17, 50)
		vehicle:SetWheel(2, "Wheel_Rear_Left",   26, 17,  0, 20, 0.25, 2, 17, 1000, 50, 20, 10, 10)
		vehicle:SetWheel(3, "Wheel_Rear_Right",  26, 17,  0, 20, 0.25, 2, 17, 1000, 50, 20, 10, 10)

		vehicle:SetDoor(0, Vector(25, -80, 100), Vector( 0, -47, 80), Rotator(0, 0, 10), 60, -150)
		vehicle:SetDoor(1, Vector(25,  80, 100), Vector(12,  47, 80), Rotator(0, 0,  0), 60,  150)

		vehicle:RecreatePhysics()
		return vehicle
	end,
	Pickup = function(location, rotation)
		local vehicle = Vehicle(location or Vector(), rotation or Rotator(), "NanosWorld::SK_Pickup", 0, true, false, true, "NanosWorld::A_Vehicle_Engine_10")
		vehicle:SetEngineSetup(5000)
		vehicle:SetSteeringWheelSetup(Vector(0, 27, 120), 24)
		vehicle:SetHeadlightsSetup(Vector(270, 0, 70))

		vehicle:SetWheel(0, "Wheel_Front_Left",  27, 18, 45, 20, 0.25, 2, 17, 1000, 50, 50, 20)
		vehicle:SetWheel(1, "Wheel_Front_Right", 27, 18, 45, 20, 0.25, 2, 17, 1000, 50, 50, 20)
		vehicle:SetWheel(2, "Wheel_Rear_Left",   27, 18,  0, 20, 0.25, 2, 17, 1000, 50, 50, 20)
		vehicle:SetWheel(3, "Wheel_Rear_Right",  27, 18,  0, 20, 0.25, 2, 17, 1000, 50, 50, 20)

		vehicle:SetDoor(0, Vector(  50, -75, 105), Vector(   8, -32.5,  95), Rotator(0,  0,  10), 70, -150)
		vehicle:SetDoor(1, Vector(  50,  75, 105), Vector(  25,    50,  90), Rotator(0,  0,   0), 70,  150)
		vehicle:SetDoor(2, Vector( -90, -75, 130), Vector( -90,  -115, 155), Rotator(0,  90, 20), 60, -200)
		vehicle:SetDoor(3, Vector( -90,  75, 130), Vector( -90,   115, 155), Rotator(0, -90, 20), 60,  200)
		vehicle:SetDoor(4, Vector(-195, -75, 130), Vector(-195,  -115, 155), Rotator(0,  90, 20), 60, -200)
		vehicle:SetDoor(5, Vector(-195,  75, 130), Vector(-195,   115, 155), Rotator(0, -90, 20), 60,  200)

		vehicle:RecreatePhysics()
		return vehicle
	end,
	SportsCar = function(location, rotation)
		local vehicle = Vehicle(location or Vector(), rotation or Rotator(), "NanosWorld::SK_SportsCar", 0, true, false, true, "NanosWorld::A_Vehicle_Engine_05")

		vehicle:SetEngineSetup(7500, 0.25, 0.1)
		vehicle:SetTransmissionSetup(true, 0.1, 1, 4, 20)
		vehicle:SetSteeringWheelSetup(Vector(0, 38, 115), 17)

		vehicle:SetWheel(0, "Wheel_Front_Left",  30, 27, 50)
		vehicle:SetWheel(1, "Wheel_Front_Right", 30, 27, 50)
		vehicle:SetWheel(2, "Wheel_Rear_Left",   36, 37,  0, 20, 0.25, 2, 17, 1000, 0, 10, 10, 7)
		vehicle:SetWheel(3, "Wheel_Rear_Right",  36, 37,  0, 20, 0.25, 2, 17, 1000, 0, 10, 10, 7)

		vehicle:SetDoor(0, Vector(25, -95, 100), Vector(35, -42, 55), Rotator(0, 0, -10), 75, -150)
		vehicle:SetDoor(1, Vector(25,  95, 100), Vector(35,  42, 60), Rotator(0, 0, -15), 75,  150)

		vehicle:RecreatePhysics()
		return vehicle
	end,
	TruckBox = function(location, rotation)
		local vehicle = Vehicle(location or Vector(), rotation or Rotator(), "NanosWorld::SK_Truck_Box", 0, true, false, true, "NanosWorld::A_Vehicle_Engine_08")

		vehicle:SetEngineSetup(5700)
		vehicle:SetSteeringWheelSetup(Vector(0, 41, 120), 26)
		vehicle:SetHeadlightsSetup(Vector(360, 0, 100))

		vehicle:SetWheel(0, "Wheel_Front_Left",  43, 25, 40, 20, 0.25, 2, 17, 1000, 75, 30, 10)
		vehicle:SetWheel(1, "Wheel_Front_Right", 43, 25, 40, 20, 0.25, 2, 17, 1000, 75, 30, 10)
		vehicle:SetWheel(2, "Wheel_Rear_Left",   43, 50,  0, 40, 0.25, 2, 17, 1000, 75, 30, 10)
		vehicle:SetWheel(3, "Wheel_Rear_Right",  43, 50,  0, 40, 0.25, 2, 17, 1000, 75, 30, 10)

		vehicle:SetDoor(0, Vector(235, -100, 132), Vector(210, -56, 150), Rotator(0, 0, 20), 100, -150)
		vehicle:SetDoor(1, Vector(235,  100, 132), Vector(225,  60, 147), Rotator(0, 0, 10), 100,  150)

		vehicle:RecreatePhysics()
		return vehicle
	end,
	TruckChassis = function(location, rotation)
		local vehicle = Vehicle(location or Vector(), rotation or Rotator(), "NanosWorld::SK_Truck_Chassis", 0, true, false, true, "NanosWorld::A_Vehicle_Engine_08")

		vehicle:SetEngineSetup(5700)
		vehicle:SetSteeringWheelSetup(Vector(0, 41, 120), 26)
		vehicle:SetHeadlightsSetup(Vector(360, 0, 100))

		vehicle:SetWheel(0, "Wheel_Front_Left",  43, 25, 40,  20, 0.25, 2, 17, 1000, 75, 30, 10)
		vehicle:SetWheel(1, "Wheel_Front_Right", 43, 25, 40,  20, 0.25, 2, 17, 1000, 75, 30, 10)
		vehicle:SetWheel(2, "Wheel_Rear_Left",   43, 50,  0, 300, 0.25, 2, 17, 1000, 75, 30, 10)
		vehicle:SetWheel(3, "Wheel_Rear_Right",  43, 50,  0, 300, 0.25, 2, 17, 1000, 75, 30, 10)

		vehicle:SetDoor(0, Vector(235, -100, 132), Vector(210, -56, 150), Rotator(0, 0, 20), 100, -150)
		vehicle:SetDoor(1, Vector(235,  100, 132), Vector(225,  60, 147), Rotator(0, 0, 10), 100,  150)

		vehicle:RecreatePhysics()
		return vehicle
	end,
}

ServerWeapons = {}
ServerVehicles = {}

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
