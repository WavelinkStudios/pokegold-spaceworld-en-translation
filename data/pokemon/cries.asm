INCLUDE "constants.asm"

SECTION "data/pokemon/cries.asm", ROMX

MACRO mon_cry
; index, pitch, length
	dw \1, \2, \3
ENDM

PokemonCries::
	mon_cry CRY_11,    0,  256 ; MON_RHYDON
	mon_cry CRY_03,    0,  256 ; MON_KANGASKHAN
	mon_cry CRY_00,    0,  256 ; MON_NIDORAN_M
	mon_cry CRY_19,  204,  129 ; MON_CLEFAIRY
	mon_cry CRY_10,    0,  256 ; MON_SPEAROW
	mon_cry CRY_06,  237,  256 ; MON_VOLTORB
	mon_cry CRY_09,    0,  256 ; MON_NIDOKING
	mon_cry CRY_1F,    0,  256 ; MON_SLOWBRO
	mon_cry CRY_0F,   32,  256 ; MON_IVYSAUR
	mon_cry CRY_0D,    0,  256 ; MON_EXEGGUTOR
	mon_cry CRY_0C,    0,  256 ; MON_LICKITUNG
	mon_cry CRY_0B,    0,  256 ; MON_EXEGGCUTE
	mon_cry CRY_05,    0,  256 ; MON_GRIMER
	mon_cry CRY_07,    0,  383 ; MON_GENGAR
	mon_cry CRY_01,    0,  256 ; MON_NIDORAN_F
	mon_cry CRY_0A,    0,  256 ; MON_NIDOQUEEN
	mon_cry CRY_19,    0,  256 ; MON_CUBONE
	mon_cry CRY_04,    0,  256 ; MON_RHYHORN
	mon_cry CRY_1B,    0,  256 ; MON_LAPRAS
	mon_cry CRY_15,    0,  256 ; MON_ARCANINE
	mon_cry CRY_1E,  238,  383 ; MON_MEW
	mon_cry CRY_17,    0,  256 ; MON_GYARADOS
	mon_cry CRY_18,    0,  256 ; MON_SHELLDER
	mon_cry CRY_1A,    0,  256 ; MON_TENTACOOL
	mon_cry CRY_1C,    0,  256 ; MON_GASTLY
	mon_cry CRY_16,    0,  256 ; MON_SCYTHER
	mon_cry CRY_1E,    2,  160 ; MON_STARYU
	mon_cry CRY_13,    0,  256 ; MON_BLASTOISE
	mon_cry CRY_14,    0,  256 ; MON_PINSIR
	mon_cry CRY_12,    0,  256 ; MON_TANGELA
	mon_cry CRY_00,    0,    0 ; MON_KAPOERER
	mon_cry CRY_00,    0,    0 ; MON_PUDIE
	mon_cry CRY_1F,   32,  192 ; MON_GROWLITHE
	mon_cry CRY_17,  255,  320 ; MON_ONIX
	mon_cry CRY_18,   64,  288 ; MON_FEAROW
	mon_cry CRY_0E,  223,  132 ; MON_PIDGEY
	mon_cry CRY_02,    0,  256 ; MON_SLOWPOKE
	mon_cry CRY_1C,  168,  320 ; MON_KADABRA
	mon_cry CRY_24,    0,  256 ; MON_GRAVELER
	mon_cry CRY_14,   10,  320 ; MON_CHANSEY
	mon_cry CRY_1F,   72,  224 ; MON_MACHOKE
	mon_cry CRY_20,    8,  192 ; MON_MRMIME
	mon_cry CRY_12,  128,  320 ; MON_HITMONLEE
	mon_cry CRY_0C,  238,  320 ; MON_HITMONCHAN
	mon_cry CRY_17,  224,  144 ; MON_ARBOK
	mon_cry CRY_1E,   66,  383 ; MON_PARASECT
	mon_cry CRY_21,   32,  224 ; MON_PSYDUCK
	mon_cry CRY_0D,  136,  160 ; MON_DROWZEE
	mon_cry CRY_12,  224,  192 ; MON_GOLEM
	mon_cry CRY_00,    0,    0 ; MON_HANEKO
	mon_cry CRY_04,  255,  176 ; MON_MAGMAR
	mon_cry CRY_00,    0,    0 ; MON_TAIL
	mon_cry CRY_06,  143,  383 ; MON_ELECTABUZZ
	mon_cry CRY_1C,   32,  320 ; MON_MAGNETON
	mon_cry CRY_12,  230,  349 ; MON_KOFFING
	mon_cry CRY_00,    0,    0 ; MON_POPONEKO
	mon_cry CRY_0A,  221,  224 ; MON_MANKEY
	mon_cry CRY_0C,  136,  320 ; MON_SEEL
	mon_cry CRY_0B,  170,  129 ; MON_DIGLETT
	mon_cry CRY_1D,   17,  192 ; MON_TAUROS
	mon_cry CRY_00,    0,    0 ; MON_WATANEKO
	mon_cry CRY_00,    0,    0 ; MON_BARIRINA
	mon_cry CRY_00,    0,    0 ; MON_LIP
	mon_cry CRY_10,  221,  129 ; MON_FARFETCHD
	mon_cry CRY_1A,   68,  192 ; MON_VENONAT
	mon_cry CRY_0F,   60,  320 ; MON_DRAGONITE
	mon_cry CRY_00,  128,   16 ; MON_ELEBABY
	mon_cry CRY_00,    0,    0 ; MON_BOOBY
	mon_cry CRY_1D,  224,    0 ; MON_KIREIHANA
	mon_cry CRY_0B,  187,  129 ; MON_DODUO
	mon_cry CRY_0E,  255,  383 ; MON_POLIWAG
	mon_cry CRY_0D,  255,  383 ; MON_JYNX
	mon_cry CRY_09,  248,  192 ; MON_MOLTRES
	mon_cry CRY_09,  128,  192 ; MON_ARTICUNO
	mon_cry CRY_18,  255,  256 ; MON_ZAPDOS
	mon_cry CRY_0E,  255,  383 ; MON_DITTO
	mon_cry CRY_19,  119,  144 ; MON_MEOWTH
	mon_cry CRY_20,   32,  352 ; MON_KRABBY
	mon_cry CRY_22,  255,   64 ; MON_TSUBOMITTO
	mon_cry CRY_00,    0,    0 ; MON_MILTANK
	mon_cry CRY_0E,  224,   96 ; MON_BOMBSEEKER
	mon_cry CRY_24,   79,  144 ; MON_VULPIX
	mon_cry CRY_24,  136,  224 ; MON_NINETALES
	mon_cry CRY_0F,  238,  129 ; MON_PIKACHU
	mon_cry CRY_09,  238,  136 ; MON_RAICHU
	mon_cry CRY_00,    0,    0 ; MON_GIFT
	mon_cry CRY_00,    0,    0 ; MON_KOTORA
	mon_cry CRY_0F,   96,  192 ; MON_DRATINI
	mon_cry CRY_0F,   64,  256 ; MON_DRAGONAIR
	mon_cry CRY_16,  187,  192 ; MON_KABUTO
	mon_cry CRY_18,  238,  129 ; MON_KABUTOPS
	mon_cry CRY_19,  153,  144 ; MON_HORSEA
	mon_cry CRY_19,   60,  129 ; MON_SEADRA
	mon_cry CRY_0F,   64,  192 ; MON_RAITORA
	mon_cry CRY_0F,   32,  192 ; MON_MADAME
	mon_cry CRY_00,   32,  192 ; MON_SANDSHREW
	mon_cry CRY_00,  255,  383 ; MON_SANDSLASH
	mon_cry CRY_1F,  240,  129 ; MON_OMANYTE
	mon_cry CRY_1F,  255,  192 ; MON_OMASTAR
	mon_cry CRY_0E,  255,  181 ; MON_JIGGLYPUFF
	mon_cry CRY_0E,  104,  224 ; MON_WIGGLYTUFF
	mon_cry CRY_1A,  136,  224 ; MON_EEVEE
	mon_cry CRY_1A,   16,  160 ; MON_FLAREON
	mon_cry CRY_1A,   61,  256 ; MON_JOLTEON
	mon_cry CRY_1A,  170,  383 ; MON_VAPOREON
	mon_cry CRY_1F,  238,  129 ; MON_MACHOP
	mon_cry CRY_1D,  224,  256 ; MON_ZUBAT
	mon_cry CRY_17,   18,  192 ; MON_EKANS
	mon_cry CRY_1E,   32,  352 ; MON_PARAS
	mon_cry CRY_0E,  119,  224 ; MON_POLIWHIRL
	mon_cry CRY_0E,    0,  383 ; MON_POLIWRATH
	mon_cry CRY_15,  238,  129 ; MON_WEEDLE
	mon_cry CRY_13,  255,  129 ; MON_KAKUNA
	mon_cry CRY_13,   96,  256 ; MON_BEEDRILL
	mon_cry CRY_00,    0,    0 ; MON_NOROWARA
	mon_cry CRY_0B,  153,  160 ; MON_DODRIO
	mon_cry CRY_0A,  175,  192 ; MON_PRIMEAPE
	mon_cry CRY_0B,   42,  144 ; MON_DUGTRIO
	mon_cry CRY_1A,   41,  256 ; MON_VENOMOTH
	mon_cry CRY_0C,   35,  383 ; MON_DEWGONG
	mon_cry CRY_00,    0,    0 ; MON_KYONPAN
	mon_cry CRY_00,    0,    0 ; MON_YAMIKARASU
	mon_cry CRY_16,  128,  160 ; MON_CATERPIE
	mon_cry CRY_1C,  204,  129 ; MON_METAPOD
	mon_cry CRY_16,  119,  192 ; MON_BUTTERFREE
	mon_cry CRY_1F,    8,  320 ; MON_MACHAMP
	mon_cry CRY_11,   32,   16 ; MON_HAPPI
	mon_cry CRY_21,  255,  192 ; MON_GOLDUCK
	mon_cry CRY_0D,  238,  192 ; MON_HYPNO
	mon_cry CRY_1D,  250,  256 ; MON_GOLBAT
	mon_cry CRY_1E,  153,  383 ; MON_MEWTWO
	mon_cry CRY_05,   85,  129 ; MON_SNORLAX
	mon_cry CRY_17,  128,  128 ; MON_MAGIKARP
	mon_cry CRY_00,    0,    0 ; MON_SCISSORS
	mon_cry CRY_00,    0,    0 ; MON_PURAKKUSU
	mon_cry CRY_07,  239,  383 ; MON_MUK
	mon_cry CRY_0F,   64,    0 ; MON_DEVIL
	mon_cry CRY_20,  238,  352 ; MON_KINGLER
	mon_cry CRY_18,  111,  352 ; MON_CLOYSTER
	mon_cry CRY_00,    0,    0 ; MON_HELGAA
	mon_cry CRY_06,  168,  272 ; MON_ELECTRODE
	mon_cry CRY_19,  170,  160 ; MON_CLEFABLE
	mon_cry CRY_12,  255,  383 ; MON_WEEZING
	mon_cry CRY_19,  153,  383 ; MON_PERSIAN
	mon_cry CRY_08,   79,  224 ; MON_MAROWAK
	mon_cry CRY_00,    0,    0 ; MON_WOLFMAN
	mon_cry CRY_1C,   48,  192 ; MON_HAUNTER
	mon_cry CRY_1C,  192,  129 ; MON_ABRA
	mon_cry CRY_1C,  152,  383 ; MON_ALAKAZAM
	mon_cry CRY_14,   40,  320 ; MON_PIDGEOTTO
	mon_cry CRY_14,   17,  383 ; MON_PIDGEOT
	mon_cry CRY_1E,    0,  256 ; MON_STARMIE
	mon_cry CRY_0F,  128,  129 ; MON_BULBASAUR
	mon_cry CRY_0F,    0,  320 ; MON_VENUSAUR
	mon_cry CRY_1A,  238,  383 ; MON_TENTACRUEL
	mon_cry CRY_00,    0,    0 ; MON_WARWOLF
	mon_cry CRY_16,  128,  192 ; MON_GOLDEEN
	mon_cry CRY_16,   16,  383 ; MON_SEAKING
	mon_cry CRY_00,    0,    0 ; MON_PORYGON2
	mon_cry CRY_00,    0,    0 ; MON_NAMEIL
	mon_cry CRY_00,    0,    0 ; MON_HAGANEIL
	mon_cry CRY_00,    0,    0 ; MON_KINGDRA
	mon_cry CRY_25,    0,  256 ; MON_PONYTA
	mon_cry CRY_25,   32,  320 ; MON_RAPIDASH
	mon_cry CRY_22,    0,  256 ; MON_RATTATA
	mon_cry CRY_22,   32,  383 ; MON_RATICATE
	mon_cry CRY_00,   44,  320 ; MON_NIDORINO
	mon_cry CRY_01,   44,  352 ; MON_NIDORINA
	mon_cry CRY_24,  240,  144 ; MON_GEODUDE
	mon_cry CRY_25,  170,  383 ; MON_PORYGON
	mon_cry CRY_23,   32,  368 ; MON_AERODACTYL
	mon_cry CRY_00,    0,    0 ; MON_RAI
	mon_cry CRY_1C,  128,  224 ; MON_MAGNEMITE
	mon_cry CRY_00,    0,    0 ; MON_EN
	mon_cry CRY_00,    0,    0 ; MON_SUI
	mon_cry CRY_04,   96,  192 ; MON_CHARMANDER
	mon_cry CRY_1D,   96,  192 ; MON_SQUIRTLE
	mon_cry CRY_04,   32,  192 ; MON_CHARMELEON
	mon_cry CRY_1D,   32,  192 ; MON_WARTORTLE
	mon_cry CRY_04,    0,  256 ; MON_CHARIZARD
	mon_cry CRY_1D,    0,    0 ; MON_NYULA
	mon_cry CRY_00,    0,    0 ; MON_HOUOU
	mon_cry CRY_00,    0,    0 ; MON_TOGEPY
	mon_cry CRY_00,    0,    0 ; MON_BULU
	mon_cry CRY_08,  221,  129 ; MON_ODDISH
	mon_cry CRY_08,  170,  192 ; MON_GLOOM
	mon_cry CRY_23,   34,  383 ; MON_VILEPLUME
	mon_cry CRY_21,   85,  129 ; MON_BELLSPROUT
	mon_cry CRY_25,   68,  160 ; MON_WEEPINBELL
	mon_cry CRY_25,  102,  332 ; MON_VICTREEBEL
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256
	mon_cry CRY_00,    0,  256

