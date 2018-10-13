Config                            = {}
Config.DrawDistance               = 95.0
--langue actuellement disponible EN et SV Bientot FR
Config.Locale                     = 'en'

--ajouter plus de détecteurs, vous pouvez en avoir jusqu'à 1000
Config.Zones = {

detector = {
    Pos   = { x = 435.11, y = -981.78, z = 29.68 },
    Size  = { x = 2.5, y = 2.5, z = 1.5 },
    Color = { r = 255, g = 255, b = 0 },  
    Type  = -1,
  },
}

Config.Weapons = {
  --{ name = 'WEAPON_KNIFE', label = _U('weapon_knife') },
  { name = 'WEAPON_HAMMER', label = _U('weapon_hammer') }, -- Arme Illegal LSAV
  --{ name = 'WEAPON_BAT', label = _U('weapon_bat') }, -- Arme Legal LSAV
  --{ name = 'WEAPON_GOLFCLUB', label = _U('weapon_golfclub') },
  { name = 'WEAPON_CROWBAR', label = _U('weapon_crowbar') }, -- Arme Illegal LSAV
  --{ name = 'WEAPON_PISTOL', label = _U('weapon_pistol') }, -- Arme Legal LSAV
  --{ name = 'WEAPON_COMBATPISTOL', label = _U('weapon_combatpistol') },
  --{ name = 'WEAPON_APPISTOL', label = _U('weapon_appistol') },
  --{ name = 'WEAPON_PISTOL50', label = _U('weapon_pistol50') }, -- Arme Legal LSAV
  { name = 'WEAPON_MICROSMG', label = _U('weapon_microsmg') }, -- Arme Illegal LSAV
  --{ name = 'WEAPON_SMG', label = _U('weapon_smg') },
  --{ name = 'WEAPON_ASSAULTSMG', label = _U('weapon_assaultsmg') },
  { name = 'WEAPON_ASSAULTRIFLE', label = _U('weapon_assaultrifle') }, -- Arme Illegal LSAV
  --{ name = 'WEAPON_CARBINERIFLE', label = _U('weapon_carbinerifle') },
  --{ name = 'WEAPON_ADVANCEDRIFLE', label = _U('weapon_advancedrifle') },
  --{ name = 'WEAPON_MG', label = _U('weapon_mg') },
  --{ name = 'WEAPON_COMBATMG', label = _U('weapon_combatmg') },
  --{ name = 'WEAPON_PUMPSHOTGUN', label = _U('weapon_pumpshotgun') },
  --{ name = 'WEAPON_SAWNOFFSHOTGUN', label = _U('weapon_sawnoffshotgun') },
  --{ name = 'WEAPON_ASSAULTSHOTGUN', label = _U('weapon_assaultshotgun') },
  --{ name = 'WEAPON_BULLPUPSHOTGUN', label = _U('weapon_bullpupshotgun') },
  --{ name = 'WEAPON_STUNGUN', label = _U('weapon_stungun') },
  --{ name = 'WEAPON_SNIPERRIFLE', label = _U('weapon_sniperrifle') },
  { name = 'WEAPON_HEAVYSNIPER', label = _U('weapon_heavysniper') }, -- Arme Illegal LSAV
  --{ name = 'WEAPON_REMOTESNIPER', label = _U('weapon_remotesniper') },
  --{ name = 'WEAPON_GRENADELAUNCHER', label = _U('weapon_grenadelauncher') },
  { name = 'WEAPON_RPG', label = _U('weapon_rpg') }, -- Arme Illegal LSAV
  --{ name = 'WEAPON_STINGER', label = _U('weapon_stinger') },
  --{ name = 'WEAPON_MINIGUN', label = _U('weapon_minigun') },
  --{ name = 'WEAPON_GRENADE', label = _U('weapon_grenade') },
  --{ name = 'WEAPON_STICKYBOMB', label = _U('weapon_stickybomb') },
  { name = 'WEAPON_SMOKEGRENADE', label = _U('weapon_smokegrenade') }, -- Arme Illegal LSAV
  --{ name = 'WEAPON_BZGAS', label = _U('weapon_bzgas') },
  { name = 'WEAPON_MOLOTOV', label = _U('weapon_molotov') }, -- Arme Illegal LSAV
  --{ name = 'WEAPON_FIREEXTINGUISHER', label = _U('weapon_fireextinguisher') }, -- Arme Legal LSAV
  --{ name = 'WEAPON_PETROLCAN', label = _U('weapon_petrolcan') }, -- Arme Legal LSAV
  --{ name = 'WEAPON_DIGISCANNER', label = _U('weapon_digiscanner') },
  --{ name = 'WEAPON_BALL', label = _U('weapon_ball') },
  --{ name = 'WEAPON_SNSPISTOL', label = _U('weapon_snspistol') },
  --{ name = 'WEAPON_BOTTLE', label = _U('weapon_bottle') },
  --{ name = 'WEAPON_GUSENBERG', label = _U('weapon_gusenberg') },
  { name = 'WEAPON_SPECIALCARBINE', label = _U('weapon_specialcarbine') }, -- Arme Illegal LSAV
  --{ name = 'WEAPON_HEAVYPISTOL', label = _U('weapon_heavypistol') },
  --{ name = 'WEAPON_BULLPUPRIFLE', label = _U('weapon_bullpuprifle') },
  --{ name = 'WEAPON_DAGGER', label = _U('weapon_dagger') },
  --{ name = 'WEAPON_VINTAGEPISTOL', label = _U('weapon_vintagepistol') },
  --{ name = 'WEAPON_FIREWORK', label = _U('weapon_firework') },
  --{ name = 'WEAPON_MUSKET', label = _U('weapon_musket') },
  { name = 'WEAPON_HEAVYSHOTGUN', label = _U('weapon_heavyshotgun') }, -- Arme Illegal LSAV
  --{ name = 'WEAPON_MARKSMANRIFLE', label = _U('weapon_marksmanrifle') },
  --{ name = 'WEAPON_HOMINGLAUNCHER', label = _U('weapon_hominglauncher') },
  --{ name = 'WEAPON_PROXMINE', label = _U('weapon_proxmine') },
  --{ name = 'WEAPON_SNOWBALL', label = _U('weapon_snowball') },
  --{ name = 'WEAPON_FLAREGUN', label = _U('weapon_flaregun') },
  --{ name = 'WEAPON_GARBAGEBAG', label = _U('weapon_garbagebag') },
  --{ name = 'WEAPON_HANDCUFFS', label = _U('weapon_handcuffs') },
  --{ name = 'WEAPON_COMBATPDW', label = _U('weapon_combatpdw') },
  --{ name = 'WEAPON_MARKSMANPISTOL', label = _U('weapon_marksmanpistol') },
  --{ name = 'WEAPON_KNUCKLE', label = _U('weapon_knuckle') }, -- Arme Legal LSAV
  --{ name = 'WEAPON_HATCHET', label = _U('weapon_hatchet') }, -- Arme Legal LSAV
  --{ name = 'WEAPON_RAILGUN', label = _U('weapon_railgun') },
  --{ name = 'WEAPON_MACHETE', label = _U('weapon_machete') }, -- Arme Legal LSAV
  --{ name = 'WEAPON_MACHINEPISTOL', label = _U('weapon_machinepistol') },
  --{ name = 'WEAPON_SWITCHBLADE', label = _U('weapon_switchblade') }, -- Arme Legal LSAV
  --{ name = 'WEAPON_REVOLVER', label = _U('weapon_revolver') }, -- Arme Legal LSAV
  --{ name = 'WEAPON_DBSHOTGUN', label = _U('weapon_dbshotgun') },
  { name = 'WEAPON_COMPACTRIFLE', label = _U('weapon_compactrifle') }, -- Arme Illegal LSAV
  --{ name = 'WEAPON_AUTOSHOTGUN', label = _U('weapon_autoshotgun') },
  --{ name = 'WEAPON_BATTLEAXE', label = _U('weapon_battleaxe') }, -- Arme Legal LSAV
  --{ name = 'WEAPON_COMPACTLAUNCHER', label = _U('weapon_compactlauncher') },
  --{ name = 'WEAPON_MINISMG', label = _U('weapon_minismg') },
  --{ name = 'WEAPON_PIPEBOMB', label = _U('weapon_pipebomb') },
  --{ name = 'WEAPON_POOLCUE', label = _U('weapon_poolcue') },
  --{ name = 'WEAPON_WRENCH', label = _U('weapon_wrench') },
  --{ name = 'WEAPON_FLASHLIGHT', label = _U('weapon_flashlight') }, -- Arme Legal LSAV
  --{ name = 'WEAPON_NIGHTSTICK', label = _U('weapon_nightsik') }, -- Arme Legal LSAV
}
