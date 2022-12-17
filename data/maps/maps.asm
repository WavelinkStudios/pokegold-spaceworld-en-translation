INCLUDE "constants.asm"

MACRO map
;\1: map name: for the MapAttributes pointer (see data/maps/attributes.asm)
;\2: tileset: a TILESET_* constant
;\3: environment: TOWN, ROUTE, INDOOR, CAVE, ENVIRONMENT_5, GATE, or DUNGEON
;\4: location: from constants/landmark_constants.asm
	db BANK(\1_MapAttributes), \2, \3
	dw \1_MapAttributes
	db \4
	db 0, 0
ENDM

SECTION "data/maps/maps.asm", ROMX

	db 0 ; ???

MapGroupPointers:
	dw MapGroup_SilentHill
	dw MapGroup_OldCity
	dw MapGroup_West
	dw MapGroup_Haiteku
	dw MapGroup_Fonto
	dw MapGroup_Baadon
	dw MapGroup_Newtype
	dw MapGroup_Sugar
	dw MapGroup_Bull
	dw MapGroup_Stand
	dw MapGroup_Kanto
	dw MapGroup_Prince
	dw MapGroup_MtFuji
	dw MapGroup_South
	dw MapGroup_North
	dw MapGroup_Misc
	dw MapGroup_Empty

MapGroup_SilentHill:
	map Route1P1, TILESET_SILENT_HILL, ROUTE, LANDMARK_ROUTE_1_P1
	map Route1P2, TILESET_SILENT_HILL, ROUTE, LANDMARK_ROUTE_1_P2
	map RouteSilentEast, TILESET_SILENT_HILL, ROUTE, LANDMARK_ROUTE_SILENT_EAST
	map SilentHill, TILESET_SILENT_HILL, TOWN, LANDMARK_SILENT_HILL
	map Route1Gate1F, TILESET_ROUTE_GATE, GATE, LANDMARK_ROUTE_1_P2
	map Route1Gate2F, TILESET_ROUTE_GATE, GATE, LANDMARK_ROUTE_1_P2
	map RouteSilentEastGate, TILESET_ROUTE_GATE, GATE, LANDMARK_ROUTE_SILENT_EAST
	map PlayerHouse1F, TILESET_HOUSE, INDOOR, LANDMARK_SILENT_HILL
	map PlayerHouse2F, TILESET_HOUSE, INDOOR, LANDMARK_SILENT_HILL
	map SilentHillPokecenter, TILESET_POKECENTER, INDOOR, LANDMARK_SILENT_HILL
	map SilentHillHouse, TILESET_HOUSE, INDOOR, LANDMARK_SILENT_HILL
	map SilentHillLabFront, TILESET_LAB, INDOOR, LANDMARK_SILENT_HILL
	map SilentHillLabBack, TILESET_LAB, INDOOR, LANDMARK_SILENT_HILL
	map UnusedMap13, TILESET_LAB, INDOOR, LANDMARK_SILENT_HILL
	map ShizukanaOka, TILESET_FOREST, CAVE, LANDMARK_NONE

MapGroup_OldCity:
	map Route2, TILESET_OLD_CITY, ROUTE, LANDMARK_ROUTE_2
	map OldCity, TILESET_OLD_CITY, TOWN, LANDMARK_OLD_CITY
	map Route2Gate1F, TILESET_ROUTE_GATE, GATE, LANDMARK_ROUTE_2
	map Route2Gate2F, TILESET_ROUTE_GATE, GATE, LANDMARK_ROUTE_2
	map Route2House, TILESET_HOUSE, INDOOR, LANDMARK_ROUTE_2
	map OldCityMuseum, TILESET_TOWER, INDOOR, LANDMARK_OLD_CITY
	map OldCityGym, TILESET_GYM, INDOOR, LANDMARK_OLD_CITY
	map OldCityTower1F, TILESET_TOWER, INDOOR, LANDMARK_OLD_CITY
	map OldCityTower2F, TILESET_TOWER, INDOOR, LANDMARK_OLD_CITY
	map OldCityTower3F, TILESET_TOWER, INDOOR, LANDMARK_OLD_CITY
	map OldCityTower4F, TILESET_TOWER, INDOOR, LANDMARK_OLD_CITY
	map OldCityTower5F, TILESET_TOWER, INDOOR, LANDMARK_OLD_CITY
	map OldCityBillsHouse, TILESET_JAPANESE_HOUSE, INDOOR, LANDMARK_OLD_CITY
	map OldCityMart, TILESET_MART, INDOOR, LANDMARK_OLD_CITY
	map OldCityHouse, TILESET_JAPANESE_HOUSE, INDOOR, LANDMARK_OLD_CITY
	map OldCityPokecenter1F, TILESET_POKECENTER, INDOOR, LANDMARK_OLD_CITY
	map OldCityPokecenter2F, TILESET_POKECENTER, INDOOR, LANDMARK_OLD_CITY
	map OldCityPokecenterTrade, TILESET_ROUTE_GATE, GATE, LANDMARK_OLD_CITY
	map OldCityPokecenterBattle, TILESET_ROUTE_GATE, GATE, LANDMARK_OLD_CITY
	map OldCityPokecenterTimeMachine, TILESET_POKECENTER, INDOOR, LANDMARK_OLD_CITY
	map OldCityKurtsHouse, TILESET_JAPANESE_HOUSE, INDOOR, LANDMARK_OLD_CITY
	map OldCitySchool, TILESET_TOWER, INDOOR, LANDMARK_OLD_CITY

MapGroup_West:
	map West, TILESET_WEST, TOWN, LANDMARK_WEST
	map WestMart1F, TILESET_BIG_MART, INDOOR, LANDMARK_WEST
	map WestMart2F, TILESET_BIG_MART, INDOOR, LANDMARK_WEST
	map WestMart3F, TILESET_BIG_MART, INDOOR, LANDMARK_WEST
	map WestMart4F, TILESET_BIG_MART, INDOOR, LANDMARK_WEST
	map WestMart5F, TILESET_BIG_MART, INDOOR, LANDMARK_WEST
	map WestMart6F, TILESET_BIG_MART, INDOOR, LANDMARK_WEST
	map WestMartElevator, TILESET_BIG_MART, INDOOR, LANDMARK_WEST
	map WestRadioTower1F, TILESET_RADIO_TOWER, INDOOR, LANDMARK_WEST
	map WestRadioTower2F, TILESET_RADIO_TOWER, INDOOR, LANDMARK_WEST
	map WestRadioTower3F, TILESET_RADIO_TOWER, INDOOR, LANDMARK_WEST
	map WestRadioTower4F, TILESET_RADIO_TOWER, INDOOR, LANDMARK_WEST
	map WestRadioTower5F, TILESET_RADIO_TOWER, INDOOR, LANDMARK_WEST
	map WestRocketRaidedHouse, TILESET_HOUSE, INDOOR, LANDMARK_WEST
	map WestPokecenter1F, TILESET_POKECENTER, INDOOR, LANDMARK_WEST
	map WestPokecenter2F, TILESET_POKECENTER, INDOOR, LANDMARK_WEST
	map WestGym, TILESET_GYM, INDOOR, LANDMARK_WEST
	map WestHouse1, TILESET_HOUSE, INDOOR, LANDMARK_WEST
	map WestHouse2, TILESET_HOUSE, INDOOR, LANDMARK_WEST

MapGroup_Haiteku:
	map HaitekuWestRoute, TILESET_HAITEKU, ROUTE, LANDMARK_HAITEKU_WEST_ROUTE
	map HaitekuWestRouteOcean, TILESET_HAITEKU, ROUTE, LANDMARK_HAITEKU_WEST_ROUTE_OCEAN
	map Haiteku, TILESET_HAITEKU, TOWN, LANDMARK_HAITEKU
	map HaitekuWestRouteGate, TILESET_ROUTE_GATE, GATE, LANDMARK_HAITEKU_WEST_ROUTE_OCEAN
	map HaitekuPokecenter1F, TILESET_POKECENTER, INDOOR, LANDMARK_HAITEKU
	map HaitekuPokecenter2F, TILESET_POKECENTER, INDOOR, LANDMARK_HAITEKU
	map HaitekuLeague1F, TILESET_TOWER, INDOOR, LANDMARK_HAITEKU
	map HaitekuLeague2F, TILESET_GYM, INDOOR, LANDMARK_HAITEKU
	map HaitekuMart, TILESET_MART, INDOOR, LANDMARK_HAITEKU
	map HaitekuHouse1, TILESET_HOUSE, INDOOR, LANDMARK_HAITEKU
	map HaitekuHouse2, TILESET_HOUSE, INDOOR, LANDMARK_HAITEKU
	map HaitekuImposterOakHouse, TILESET_HOUSE, INDOOR, LANDMARK_HAITEKU
	map HaitekuAquarium1F, TILESET_AQUARIUM, INDOOR, LANDMARK_HAITEKU
	map HaitekuAquarium2F, TILESET_AQUARIUM, INDOOR, LANDMARK_HAITEKU

MapGroup_Fonto:
	map FontoRoute1, TILESET_FONTO, ROUTE, LANDMARK_FONTO_ROUTE_1
	map FontoRoute2, TILESET_FONTO, ROUTE, LANDMARK_FONTO_ROUTE_2
	map FontoRoute3, TILESET_FONTO, ROUTE, LANDMARK_FONTO_ROUTE_3
	map FontoRoute4, TILESET_FONTO, ROUTE, LANDMARK_FONTO_ROUTE_4
	map FontoRoute5, TILESET_FONTO, ROUTE, LANDMARK_FONTO_ROUTE_5
	map FontoRoute6, TILESET_FONTO, ROUTE, LANDMARK_FONTO_ROUTE_6
	map Fonto, TILESET_FONTO, TOWN, LANDMARK_FONTO
	map FontoRouteGate1, TILESET_ROUTE_GATE, GATE, LANDMARK_FONTO_ROUTE_1
	map FontoRouteGate2, TILESET_ROUTE_GATE, GATE, LANDMARK_FONTO_ROUTE_4
	map FontoRouteGate3, TILESET_ROUTE_GATE, GATE, LANDMARK_FONTO_ROUTE_5
	map FontoRocketHouse, TILESET_ROCKET_HOUSE, INDOOR, LANDMARK_FONTO
	map FontoMart, TILESET_MART, INDOOR, LANDMARK_FONTO
	map FontoHouse, TILESET_HOUSE, INDOOR, LANDMARK_FONTO
	map FontoPokecenter1F, TILESET_POKECENTER, INDOOR, LANDMARK_FONTO
	map FontoPokecenter2F, TILESET_POKECENTER, INDOOR, LANDMARK_FONTO
	map FontoLab, TILESET_LAB, INDOOR, LANDMARK_FONTO

MapGroup_Baadon:
	map BaadonRoute1, TILESET_BAADON, ROUTE, LANDMARK_BAADON_ROUTE_1
	map BaadonRoute2, TILESET_BAADON, ROUTE, LANDMARK_BAADON_ROUTE_2
	map BaadonRoute3, TILESET_BAADON, ROUTE, LANDMARK_BAADON_ROUTE_3
	map Baadon, TILESET_BAADON, TOWN, LANDMARK_BAADON
	map BaadonRouteGateWest, TILESET_ROUTE_GATE, GATE, LANDMARK_BAADON_ROUTE_1
	map BaadonRouteGateNewtype, TILESET_ROUTE_GATE, GATE, LANDMARK_BAADON_ROUTE_3
	map BaadonMart, TILESET_MART, INDOOR, LANDMARK_BAADON
	map BaadonPokecenter1F, TILESET_POKECENTER, INDOOR, LANDMARK_BAADON
	map BaadonPokecenter2F, TILESET_POKECENTER, INDOOR, LANDMARK_BAADON
	map BaadonHouse1, TILESET_JAPANESE_HOUSE, INDOOR, LANDMARK_BAADON
	map BaadonWallpaperHouse, TILESET_AQUARIUM, INDOOR, LANDMARK_BAADON
	map BaadonHouse2, TILESET_HOUSE, INDOOR, LANDMARK_BAADON
	map BaadonLeague1F, TILESET_TOWER, INDOOR, LANDMARK_BAADON
	map BaadonLeague2F, TILESET_GYM, INDOOR, LANDMARK_BAADON

MapGroup_Newtype:
	map Route15, TILESET_SILENT_HILL, ROUTE, LANDMARK_ROUTE_15
	map NewtypeRoute, TILESET_SILENT_HILL, ROUTE, LANDMARK_NEWTYPE_ROUTE
	map Route18, TILESET_SILENT_HILL, ROUTE, LANDMARK_ROUTE_18
	map Newtype, TILESET_SILENT_HILL, TOWN, LANDMARK_NEWTYPE
	map Route15Pokecenter1F, TILESET_POKECENTER, INDOOR, LANDMARK_ROUTE_15
	map Route15Pokecenter2F, TILESET_POKECENTER, INDOOR, LANDMARK_ROUTE_15
	map NewtypeRouteGate, TILESET_ROUTE_GATE, GATE, LANDMARK_ROUTE_18
	map Route18Pokecenter1F, TILESET_POKECENTER, INDOOR, LANDMARK_ROUTE_18
	map Route18Pokecenter2F, TILESET_POKECENTER, INDOOR, LANDMARK_ROUTE_18
	map NewtypePokecenter1F, TILESET_POKECENTER, INDOOR, LANDMARK_NEWTYPE
	map NewtypePokecenter2F, TILESET_POKECENTER, INDOOR, LANDMARK_NEWTYPE
	map NewtypeLeague1F, TILESET_TOWER, INDOOR, LANDMARK_NEWTYPE
	map NewtypeLeague2F, TILESET_GYM, INDOOR, LANDMARK_NEWTYPE
	map NewtypeSailorHouse, TILESET_HOUSE, INDOOR, LANDMARK_NEWTYPE
	map NewtypeMart, TILESET_MART, INDOOR, LANDMARK_NEWTYPE
	map NewtypeDojo, TILESET_JAPANESE_HOUSE, INDOOR, LANDMARK_NEWTYPE
	map NewtypeHouse1, TILESET_HOUSE, INDOOR, LANDMARK_NEWTYPE
	map NewtypeDiner, TILESET_AQUARIUM, INDOOR, LANDMARK_NEWTYPE
	map NewtypeHouse2, TILESET_HOUSE, INDOOR, LANDMARK_NEWTYPE
	map NewtypeHouse3, TILESET_HOUSE, INDOOR, LANDMARK_NEWTYPE

MapGroup_Sugar:
	map SugarRoute, TILESET_HAITEKU, ROUTE, LANDMARK_SUGAR_ROUTE
	map Sugar, TILESET_HAITEKU, TOWN, LANDMARK_SUGAR
	map SugarRouteGate, TILESET_ROUTE_GATE, GATE, LANDMARK_SUGAR_ROUTE
	map SugarHouse, TILESET_GYM, INDOOR, LANDMARK_SUGAR
	map SugarHouse2, TILESET_JAPANESE_HOUSE, INDOOR, LANDMARK_SUGAR
	map SugarMart, TILESET_MART, INDOOR, LANDMARK_SUGAR
	map SugarPokecenter1F, TILESET_POKECENTER, INDOOR, LANDMARK_SUGAR
	map SugarPokecenter2F, TILESET_POKECENTER, INDOOR, LANDMARK_SUGAR

MapGroup_Bull:
	map BullForestRoute1, TILESET_BULL_FOREST, ROUTE, LANDMARK_BULL_FOREST_ROUTE_1
	map BullForestRoute2, TILESET_BULL_FOREST, ROUTE, LANDMARK_BULL_FOREST_ROUTE_2
	map BullForestRoute3, TILESET_BULL_FOREST, ROUTE, LANDMARK_BULL_FOREST_ROUTE_3
	map BullForest, TILESET_BULL_FOREST, TOWN, LANDMARK_BULL_FOREST
	map BullForestRoute1House, TILESET_HOUSE, INDOOR, LANDMARK_BULL_FOREST_ROUTE_1
	map BullForestRouteGateStand, TILESET_ROUTE_GATE, GATE, LANDMARK_BULL_FOREST_ROUTE_2
	map BullMart, TILESET_MART, INDOOR, LANDMARK_BULL_FOREST
	map BullHouse1, TILESET_JAPANESE_HOUSE, INDOOR, LANDMARK_BULL_FOREST
	map BullHouse2, TILESET_HOUSE, INDOOR, LANDMARK_BULL_FOREST
	map BullHouse3, TILESET_HOUSE, INDOOR, LANDMARK_BULL_FOREST
	map BullPokecenter1F, TILESET_POKECENTER, INDOOR, LANDMARK_BULL_FOREST
	map BullPokecenter2F, TILESET_POKECENTER, INDOOR, LANDMARK_BULL_FOREST
	map BullLeague1F, TILESET_TOWER, INDOOR, LANDMARK_BULL_FOREST
	map BullLeague2F, TILESET_GYM, INDOOR, LANDMARK_BULL_FOREST
	map BullHouse4, TILESET_HOUSE, INDOOR, LANDMARK_BULL_FOREST

MapGroup_Stand:
	map StandRoute, TILESET_SILENT_HILL, ROUTE, LANDMARK_STAND_ROUTE
	map Stand, TILESET_SILENT_HILL, TOWN, LANDMARK_STAND
	map StandRouteGateKanto, TILESET_ROUTE_GATE, GATE, LANDMARK_STAND_ROUTE
	map StandLab, TILESET_POKECENTER, INDOOR, LANDMARK_STAND
	map StandPokecenter1F, TILESET_POKECENTER, INDOOR, LANDMARK_STAND
	map StandPokecenter2F, TILESET_POKECENTER, INDOOR, LANDMARK_STAND
	map StandOffice, TILESET_RADIO_TOWER, INDOOR, LANDMARK_STAND
	map StandMart, TILESET_MART, INDOOR, LANDMARK_STAND
	map StandHouse, TILESET_HOUSE, INDOOR, LANDMARK_STAND
	map StandRocketHouse1F, TILESET_ROCKET_HOUSE, INDOOR, LANDMARK_STAND
	map StandRocketHouse2F, TILESET_ROCKET_HOUSE, INDOOR, LANDMARK_STAND
	map StandLeague1F, TILESET_TOWER, INDOOR, LANDMARK_STAND
	map StandLeague2F, TILESET_GYM, INDOOR, LANDMARK_STAND

MapGroup_Kanto:
	map KantoEastRoute, TILESET_KANTO, ROUTE, LANDMARK_KANTO_EAST_ROUTE
	map Kanto, TILESET_KANTO, TOWN, LANDMARK_KANTO
	map KantoCeruleanHouse, TILESET_ROUTE_GATE, GATE, LANDMARK_KANTO
	map KantoPokecenter1F, TILESET_POKECENTER, INDOOR, LANDMARK_KANTO
	map KantoPokecenter2F, TILESET_POKECENTER, INDOOR, LANDMARK_KANTO
	map KantoLeague1F, TILESET_TOWER, INDOOR, LANDMARK_KANTO
	map KantoLeague2F, TILESET_GYM, INDOOR, LANDMARK_KANTO
	map KantoLavenderHouse, TILESET_HOUSE, INDOOR, LANDMARK_KANTO
	map KantoCeladonMart1F, TILESET_BIG_MART, INDOOR, LANDMARK_KANTO
	map KantoCeladonMart2F, TILESET_BIG_MART, INDOOR, LANDMARK_KANTO
	map KantoCeladonMart3F, TILESET_BIG_MART, INDOOR, LANDMARK_KANTO
	map KantoCeladonMart4F, TILESET_BIG_MART, INDOOR, LANDMARK_KANTO
	map KantoCeladonMart5F, TILESET_BIG_MART, INDOOR, LANDMARK_KANTO
	map KantoCeladonElevator, TILESET_BIG_MART, INDOOR, LANDMARK_KANTO
	map KantoMart, TILESET_MART, INDOOR, LANDMARK_KANTO
	map KantoGamefreakHQ1, TILESET_LAB, INDOOR, LANDMARK_KANTO
	map KantoGamefreakHQ2, TILESET_LAB, INDOOR, LANDMARK_KANTO
	map KantoGamefreakHQ3, TILESET_LAB, INDOOR, LANDMARK_KANTO
	map KantoGamefreakHQ4, TILESET_MART, INDOOR, LANDMARK_KANTO
	map KantoGamefreakHQ5, TILESET_LAB, INDOOR, LANDMARK_KANTO
	map KantoSilphCo, TILESET_ROCKET_HOUSE, INDOOR, LANDMARK_KANTO
	map KantoViridianHouse, TILESET_HOUSE, INDOOR, LANDMARK_KANTO
	map KantoGameCorner, TILESET_AQUARIUM, INDOOR, LANDMARK_KANTO
	map KantoUnusedArea, TILESET_ROUTE_GATE, INDOOR, LANDMARK_KANTO
	map KantoGameCornerPrizes, TILESET_AQUARIUM, INDOOR, LANDMARK_KANTO
	map KantoDiner, TILESET_AQUARIUM, INDOOR, LANDMARK_KANTO
	map KantoSchool, TILESET_TOWER, INDOOR, LANDMARK_KANTO
	map KantoHospital, TILESET_BIG_MART, INDOOR, LANDMARK_KANTO
	map KantoPokecenter21F, TILESET_POKECENTER, INDOOR, LANDMARK_KANTO
	map KantoPokecenter22F, TILESET_POKECENTER, INDOOR, LANDMARK_KANTO
	map KantoRedsHouse, TILESET_HOUSE, INDOOR, LANDMARK_KANTO
	map KantoGreensHouse1F, TILESET_HOUSE, INDOOR, LANDMARK_KANTO
	map KantoGreensHouse2F, TILESET_HOUSE, INDOOR, LANDMARK_KANTO
	map KantoEldersHouse, TILESET_HOUSE, INDOOR, LANDMARK_KANTO
	map KantoOaksLab, TILESET_LAB, INDOOR, LANDMARK_KANTO
	map KantoLeague21F, TILESET_TOWER, INDOOR, LANDMARK_KANTO
	map KantoLeague22F, TILESET_GYM, INDOOR, LANDMARK_KANTO
	map KantoFishingGuru, TILESET_HOUSE, INDOOR, LANDMARK_KANTO

MapGroup_Prince:
	map PrinceRoute, TILESET_SILENT_HILL, ROUTE, LANDMARK_PRINCE
	map Prince, TILESET_SILENT_HILL, TOWN, LANDMARK_PRINCE

MapGroup_MtFuji:
	map MtFujiRoute, TILESET_SILENT_HILL, ROUTE, LANDMARK_MT_FUJI
	map MtFuji, TILESET_SILENT_HILL, TOWN, LANDMARK_MT_FUJI

MapGroup_South:
	map South, TILESET_SOUTH, TOWN, LANDMARK_SOUTH
	map SouthHouse1, TILESET_HOUSE, INDOOR, LANDMARK_SOUTH
	map SouthPokecenter1F, TILESET_POKECENTER, INDOOR, LANDMARK_SOUTH
	map SouthPokecenter2F, TILESET_POKECENTER, INDOOR, LANDMARK_SOUTH
	map SouthMart, TILESET_MART, INDOOR, LANDMARK_SOUTH
	map SouthHouse2, TILESET_HOUSE, INDOOR, LANDMARK_SOUTH

MapGroup_North:
	map North, TILESET_BULL_FOREST, TOWN, LANDMARK_NORTH
	map NorthHouse1, TILESET_HOUSE, INDOOR, LANDMARK_NORTH
	map NorthMart, TILESET_MART, INDOOR, LANDMARK_NORTH
	map NorthHouse2, TILESET_HOUSE, INDOOR, LANDMARK_NORTH
	map NorthPokecenter1F, TILESET_POKECENTER, INDOOR, LANDMARK_NORTH
	map NorthPokecenter2F, TILESET_POKECENTER, INDOOR, LANDMARK_NORTH

MapGroup_Misc:
	map PowerPlant1, TILESET_POWER_PLANT, INDOOR, LANDMARK_NONE
	map PowerPlant2, TILESET_POWER_PLANT, INDOOR, LANDMARK_NONE
	map PowerPlant3, TILESET_POWER_PLANT, INDOOR, LANDMARK_NONE
	map PowerPlant4, TILESET_POWER_PLANT, INDOOR, LANDMARK_NONE
	map RuinsOfAlphEntrance, TILESET_RUINS_OF_ALPH, CAVE, LANDMARK_NONE
	map RuinsOfAlphMain, TILESET_RUINS_OF_ALPH, CAVE, LANDMARK_NONE
	map CaveMinecarts1, TILESET_CAVE, CAVE, LANDMARK_NONE
	map CaveMinecarts2, TILESET_CAVE, CAVE, LANDMARK_NONE
	map CaveMinecarts3, TILESET_CAVE, CAVE, LANDMARK_NONE
	map CaveMinecarts4, TILESET_CAVE, CAVE, LANDMARK_NONE
	map CaveMinecarts5, TILESET_CAVE, CAVE, LANDMARK_NONE
	map CaveMinecarts6, TILESET_CAVE, CAVE, LANDMARK_NONE
	map CaveMinecarts7, TILESET_CAVE, CAVE, LANDMARK_NONE
	map Office1, TILESET_OFFICE, INDOOR, LANDMARK_NONE
	map Office2, TILESET_OFFICE, INDOOR, LANDMARK_NONE
	map Office3, TILESET_OFFICE, INDOOR, LANDMARK_NONE
	map SlowpokeWellEntrance, TILESET_CAVE, CAVE, LANDMARK_NONE
	map SlowpokeWellMain, TILESET_CAVE, CAVE, LANDMARK_NONE

MapGroup_Empty:
