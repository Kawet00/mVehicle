Config = {}

Config.lang = 'EN' -- ES / EN / IT / FR

Config.Debug = false

Config.Framework = 'esx'     -- esx, ox, standalone, qbox

Config.Inventory = 'ox'      -- ox_inventory = 'ox' | qs-inventory = 'qs'  -- To give carkey item

Config.TargetTrailer = false -- manage tr2 trailer

Config.VehicleTypes = {
    ['car'] = { 'automobile', 'bicycle', 'bike', 'quadbike', 'trailer', 'amphibious_quadbike', 'amphibious_automobile' },
    ['boat'] = { 'submarine', 'submarinecar', 'boat' },
    ['air'] = { 'blimp', 'heli', 'plane' },
}

--MAX 8 CHAR
Config.PlateGenerate = "AAAA 111"
-- . = random number or letter
-- 1 = random number
-- A = random letter
-- SPACE IS A CHAR

-- Carkeys

Config.ItemKeys = true           -- false = Vehicles DB

Config.CarKeyItem = 'carkey'      -- item name

Config.TargetOrKeyBind = 'keybin' -- 'target' or 'keybin'

Config.DoorKeyBind = 'U'

Config.KeyDelay = 500

Config.KeyDistance = 5

Config.KeyMenu = true -- Radial menu to manage vehicles

-- Engine ignition need keys or hotwire
Config.VehicleEngine = {
    active = false,
    KeyBind = 'M',
}

-- Put Your Garage names here
Config.GarageNames = { 'Pillbox Hill' }

-- on Vehicles delete or /dv | ⚠ This only works with vehicles generated by mVehicle ⚠
Config.ImpoundVehicledelete = true
Config.DefaultImpound = {
    -- Default impounds names
    car = 'Impound Car',
    air = 'Impound Air',
    boat = 'Impound Boat',
    price = 0,
    note = 'Vehicle seized by the municipal service'
}

Config.Commands = {
    givecar = 'givecar',
    setcarowner = 'setcarowner',
    saveallcars = 'saveAllcars',
    spawnallcars = 'spawnAllcars'
}

-- Generate random plate in metadata item, only ox_inventory
Config.FakePlateItem = {
    item = 'fakeplate',
    ChangePlateTime = 5000 -- in ms
}

Config.LockPickItem = {
    item = 'lockpick',
    skillCheck = function()
        local success = lib.skillCheck({ 'easy', 'easy' })
        return success
    end,
    dispatch = function(playerId, vehicleEntity, coords)
        -- print(playerId, vehicleEntity, coords)
    end
}

Config.HotWireItem = {
    item = 'wirecutt',
    skillCheck = function()
        local success = lib.skillCheck({ 'easy', 'easy' })
        return success
    end,
    dispatch = function(playerId, vehicleEntity, coords)
        --print(playerId, vehicleEntity, coords)
    end
}

Config.Locales = LANG[Config.lang]
