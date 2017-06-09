------------------------------------------------------------------------------------------------------
-- Necrosis LdC
--
-- Cr�ateur initial (US) : Infernal (http://www.revolvus.com/games/interface/necrosis/)
-- Impl�mentation de base (FR) : Tilienna Thorondor
-- Reprise du projet : Lomig & Nyx des Larmes de Cenarius, Kael'Thas
--
-- Skins et voix Fran�aises : Eliah, Ner'zhul
-- Version Allemande par Arne Meier et Halisstra, Lothar
-- Remerciements sp�ciaux pour Sadyre (JoL)
-- Version 06.05.2006-1
------------------------------------------------------------------------------------------------------



------------------------------------------------
-- Version : Russian ( by Maus )
------------------------------------------------

if ( GetLocale() == "ruRU" ) then

NECROSIS_UNIT_WARLOCK = "Чернокнижник";

-- sylvette added ScaledLifeTap by Kimilly (Kimilly)
SCALEDLIFETAP_LIFETAPSPELL = "Жизнеотвод";
SCALEDLIFETAP_LIFETAPTALENT = "Улучшенный жизнеотвод";
SCALEDLIFETAP_RANKTEXT = "Уровень";
SCALEDLIFETAP_RANKREGEXP = "^" .. SCALEDLIFETAP_RANKTEXT .. " (.*).*";

NECROSIS_ANTI_FEAR_SPELL = {
	-- Buffs giving temporary immunity to fear effects
	["Buff"] = {
		"Защита от страха",			-- Dwarf priest racial trait
		"Воля Отрекшихся",		-- Forsaken racial trait
		"Бесстрашие",			-- Trinket
		"Ярость берсерка",		-- Warrior Fury talent
		"Безрассудство",			-- Warrior Fury talent
		"Жажда смерти",			-- Warrior Fury talent
		"Звериный гнев",		-- Hunter Beast Mastery talent (pet only)
		"Ледяная глыба",			-- Mage Ice talent
		"Божественная защита",		-- Paladin Holy buff
		"Божественный щит",		-- Paladin Holy buff
		"Тотем трепета",			-- Shaman totem
		"Отмена Магии"			-- Majordomo (NPC) spell
		--  "Grounding Totem" is not considerated, as it can remove other spell than fear, and only one each 10 sec.		
	},

	-- Debuffs and curses giving temporary immunity to fear effects
	["Debuff"] = {
		"Проклятие безрассудства"		-- Warlock curse
	}
};

-- Creature type absolutly immune to fear effects
NECROSIS_ANTI_FEAR_UNIT = {
	"Нежить"
};

-- Word to search for spell immunity. First (.+) replace the spell's name, 2nd (.+) replace the creature's name
NECROSIS_ANTI_FEAR_SRCH = "(.+) обладает невосприимчивостью к вашему заклинанию \"(.+)\"."

NECROSIS_SPELL_TABLE = {
	[1] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Призывание коня Скверны",		Length = 0,	Type = 0,   TexturePrefix = nil},
	[2] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil, 
		Name = "Призыв коня погибели",		Length = 0,	Type = 0,   TexturePrefix = nil},
	[3] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Призыв беса",			Length = 0,	Type = 0,   TexturePrefix = nil},
	[4] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Призыв демона Бездны",		Length = 0,	Type = 0,   TexturePrefix = nil},
	[5] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Призыв суккуба",		Length = 0,	Type = 0,   TexturePrefix = nil},
	[6] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Призыв охотника Скверны",		Length = 0,	Type = 0,   TexturePrefix = nil},
	[7] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Стрела Тьмы",			Length = 0,	Type = 0,   TexturePrefix = nil},
	[8] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Инфернал",			Length = 3600,	Type = 3,   TexturePrefix = nil},
	[9] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Изгнание",			Length = 30,	Type = 2,   TexturePrefix = nil},
	[10] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Порабощение демона",			Length = 30000,	Type = 2,   TexturePrefix = nil},
	[11] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Воскрешение камнем души",	Length = 1800,	Type = 1,   TexturePrefix = nil},
	[12] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Жертвенный огонь",			Length = 15,	Type = 5,   TexturePrefix = nil},
	[13] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Страх",				Length = 15,	Type = 5,   TexturePrefix = nil},
	[14] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Порча",			Length = 17,	Type = 5,   TexturePrefix = nil},
	[15] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Господство Скверны",		Length = 900,	Type = 3,   TexturePrefix = nil},
	[16] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Проклятие рока",			Length = 60,	Type = 3,   TexturePrefix = "Doom"},
	[17] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Жертвоприношение",			Length = 30,	Type = 3,   TexturePrefix = nil},
	[18] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Ожог души",			Length = 60,	Type = 3,   TexturePrefix = nil},
	[19] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Лик смерти",			Length = 120,	Type = 3,   TexturePrefix = nil},
	[20] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Ожог Тьмы",			Length = 15,	Type = 3,   TexturePrefix = nil},
	[21] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Поджигание",			Length = 10,	Type = 3,   TexturePrefix = nil},
	[22] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Проклятие агонии",		Length = 24,	Type = 4,   TexturePrefix = "Agony"},
	[23] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Проклятие слабости",		Length = 120,	Type = 4,   TexturePrefix = "Weakness"},
	[24] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Проклятие безрассудства",		Length = 120,	Type = 4,   TexturePrefix = "Reckless"},
	[25] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Проклятие косноязычия",		Length = 30,	Type = 4,   TexturePrefix = "Tongues"},
	[26] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Проклятие стихий",		Length = 300,	Type = 4,   TexturePrefix = "Elements"},
	[27] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Проклятие Тьмы",		Length = 300,	Type = 4,   TexturePrefix = "Shadow"},
	[28] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Вытягивание жизни",			Length = 30,	Type = 5,   TexturePrefix = nil},
	[29] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Вой ужаса",		Length = 40,	Type = 3,   TexturePrefix = nil},
	[30] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Ритуал Рока",		Length = 3600,	Type = 0,   TexturePrefix = nil},
	[31] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Демонический доспех",			Length = 0,	Type = 0,   TexturePrefix = nil},
	[32] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Бесконечное дыхание",		Length = 0,	Type = 0,   TexturePrefix = nil},
	[33] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Невидимость",			Length = 0,	Type = 0,   TexturePrefix = nil},
	[34] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Око Килрогга",		Length = 0,	Type = 0,   TexturePrefix = nil},
	[35] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Порабощение демона",			Length = 0,	Type = 0,   TexturePrefix = nil},
	[36] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Шкура демона",			Length = 0,	Type = 0,   TexturePrefix = nil},
	[37] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Ритуал призыва",		Length = 0,	Type = 0,   TexturePrefix = nil},
	[38] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Связка души",			Length = 0,	Type = 0,   TexturePrefix = nil},
	[39] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Чутье на демонов",			Length = 0,	Type = 0,   TexturePrefix = nil},
	[40] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Проклятие изнеможения",		Length = 12,	Type = 4,   TexturePrefix = "Exhaust"},
	[41] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Жизнеотвод",			Length = 0,	Type = 0,   TexturePrefix = nil},
	[42] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Усиление проклятия",			Length = 180,	Type = 3,   TexturePrefix = nil},
	[43] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Защита от темной магии",			Length = 30,	Type = 3,   TexturePrefix = nil},
	[44] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Демоническое жертвоприношение",		Length = 0,	Type = 0,   TexturePrefix = nil},
};
-- Type 0 = Pas de Timer
-- Type 1 = Timer permanent principal
-- Type 2 = Timer permanent
-- Type 3 = Timer de cooldown
-- Type 4 = Timer de mal�diction
-- Type 5 = Timer de combat

NECROSIS_ITEM = {
	["Soulshard"] = "Осколок души",
	["Soulstone"] = "[яь] души",
	["Healthstone"] = "[яь] здоровья",
	["Spellstone"] = "[яь] чар",
	["Firestone"] = "[яь] огня",
	["Offhand"] = "Левая рука",
	["Twohand"] = "Двуручное",
	["InfernalStone"] = "Камень инфернала",
	["DemoniacStone"] = "Демоническая статуэтка",
	["Hearthstone"] = "Камень возвращения",
	["SoulPouch"] = {"Сума душ", "Сумка из ткани Скверны", "Сумка из сердцевинной ткани Скверны"}	
};


NECROSIS_STONE_RANK = {
	[1] = " (крошечного)",	-- Rank Minor
	[2] = " (малого)",	-- Rank Lesser
	[3] = "",		-- Rank Intermediate, no name
	[4] = " (большого)",	-- Rank Greater
	[5] = " (крупного)"	-- Rank Major
};

NECROSIS_NIGHTFALL = {
	["BoltName"] = "Стрела",
	["ShadowTrance"] = "Теневой транс"
};

NECROSIS_CREATE = {
	[1] = "Создание камня души",
	[2] = "Создание камня здоровья",
	[3] = "Создание камня чар",
	[4] = "Создание камня огня"
};

NECROSIS_PET_LOCAL_NAME = {
	[1] = "Бес",
	[2] = "Демон Бездны",
	[3] = "Суккуб",
	[4] = "Охотник Скверны",
	[5] = "Инферно",
	[6] = "Стражник ужаса"
};

NECROSIS_TRANSLATION = {
	["Cooldown"] = "Восстановление",
	["Hearth"] = "Камень возвращения",
	["Rank"] = "Уровень",
	["Invisible"] = "Обнаружение невидимости",
	["LesserInvisible"] = "Обнаружение простой невидимости",
	["GreaterInvisible"] = "Обнаружение большой невидимости",
	["SoulLinkGain"] = "Вы получаете связка души.",
	["SacrificeGain"] = "Вы получаете жертвоприношение.",
	["SummoningRitual"] = "Ритуал призыва"
};

end
