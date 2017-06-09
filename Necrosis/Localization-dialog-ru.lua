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

function Necrosis_Localization_Dialog_Ru()

	function NecrosisLocalization()
		Necrosis_Localization_Speech_Ru();
	end

	NECROSIS_COOLDOWN = {
		["Spellstone"] = "Готовность Камня чар",
		["Healthstone"] = "Готовность Камня здоровья"
	};

	NecrosisTooltipData = {
		["Main"] = {
			Label = "|c00FFFFFFNecrosis|r",
			Stone = {
				[true] = "Есть";
				[false] = "Нет";
			},
			Hellspawn = {
				[true] = "Вкл";
				[false] = "Выкл";
			},
			["Soulshard"] = "Осколки душ: ",
			["InfernalStone"] = "Камни инфернала: ",
			["DemoniacStone"] = "Демонические статуэтки: ",
			["Soulstone"] = "\nКамень души: ",
			["Healthstone"] = "Камень здоровья: ",
			["Spellstone"] = "Камень чар: ",
			["Firestone"] = "Камень огня: ",
			["CurrentDemon"] = "Демон: ",
			["EnslavedDemon"] = "Демон: Порабощенный",
			["NoCurrentDemon"] = "Демон: Отсутствует",
		},
		["Soulstone"] = {
			Label = "|c00FF99FFКамень души|r",
			Text = {"Создать","Использовать","Используется","Ожидание"}
		},
		["Healthstone"] = {
			Label = "|c0066FF33Камень здоровья|r",
			Text = {"Создать","Использовать"}
		},
		["Spellstone"] = {
			Label = "|c0099CCFFКамень чар|r",
			Text = {"Создать","Экипировать","В руке"}
		},
		["Firestone"] = {
			Label = "|c00FF4444Камень огня|r",
			Text = {"Создать","Экипировать","В руке"}
		},
		["SpellTimer"] = {
			Label = "|c00FFFFFFТаймер заклинаний|r",
			Text = "Активное заклинание на цели",
			Right = "[Правый Клик] Использовать Камень Возвращения в "
		},
		["ShadowTrance"] = {
			Label = "|c00FFFFFFТеневой транс|r"
		},
		["Domination"] = {
			Label = "|c00FFFFFFГосподство Скверны|r"
		},
		["Enslave"] = {
			Label = "|c00FFFFFFПорабощение|r"
		},
		["Armor"] = {
			Label = "|c00FFFFFFДемонический доспех|r"
		},
		["Invisible"] = {
			Label = "|c00FFFFFFОбнаружение невидимости|r"
		},
		["Aqua"] = {
			Label = "|c00FFFFFFБесконечное дыхание|r"
		},
		["Kilrogg"] = {
			Label = "|c00FFFFFFОко Килрогга|r"
		},
		["Banish"] = {
			Label = "|c00FFFFFFИзгнание|r"
		},
		["TP"] = {
			Label = "|c00FFFFFFРитуал призыва|r"
		},
		["SoulLink"] = {
			Label = "|c00FFFFFFСвязка души|r"
		},
		["ShadowProtection"] = {
			Label = "|c00FFFFFFЗащита от темной магии|r"
		},
		["Imp"] = {
			Label = "|c00FFFFFFБес|r"
		},
		["Void"] = {
			Label = "|c00FFFFFFДемон Бездны|r"
		},
		["Succubus"] = {
			Label = "|c00FFFFFFСуккуб|r"
		},
		["Fel"] = {
			Label = "|c00FFFFFFОхотника Скверны|r"
		},
		["Infernal"] = {
			Label = "|c00FFFFFFИнфернал|r"
		},
		["Doomguard"] = {
			Label = "|c00FFFFFFСтражник ужаса|r"
		},
		["Sacrifice"] = {
			Label = "|c00FFFFFFДемоническое жертвоприношение|r"
		},
		["Amplify"] = {
			Label = "|c00FFFFFFУсиление проклятия|r"
		},
		["Weakness"] = {
			Label = "|c00FFFFFFПроклятие слабости|r"
		},
		["Agony"] = {
			Label = "|c00FFFFFFПроклятие агонии|r"
		},
		["Reckless"] = {
			Label = "|c00FFFFFFПроклятие безрассудства|r"
		},
		["Tongues"] = {
			Label = "|c00FFFFFFПроклятие косноязычия|r"
		},
		["Exhaust"] = {
			Label = "|c00FFFFFFПроклятие изнеможения|r"
		},
		["Elements"] = {
			Label = "|c00FFFFFFCurse of Elements|r"
		},
		["Shadow"] = {
			Label = "|c00FFFFFFПроклятие Тьмы|r"
		},
		["Doom"] = {
			Label = "|c00FFFFFFПроклятие рока|r"
		},
		["Mount"] = {
			Label = "|c00FFFFFFСкакун Скверны|r"
		},
		["Buff"] = {
			Label = "|c00FFFFFFМеню заклинаний|r\n[Правый Клик] Для удержания меню открытым"
		},
		["Pet"] = {
			Label = "|c00FFFFFFМеню демонов|r\n[Правый Клик] Для удержания меню открытым"
		},
		["Curse"] = {
			Label = "|c00FFFFFFМеню проклятий|r\n[Правый Клик] Для удержания меню открытым"
		},
		["Radar"] = {
			Label = "|c00FFFFFFЧутье на демонов|r"
		},
		["AmplifyCooldown"] = "[Правый Клик] Усиление проклятия",
		["DominationCooldown"] = "[Правый Клик] Быстрый вызов",
		["LastSpell"] = "[Средний клик] Произнесение ",
	};


	NECROSIS_SOUND = {
		["Fear"] = "Interface\\AddOns\\Necrosis\\sounds\\Fear-Ru.mp3",
		["SoulstoneEnd"] = "Interface\\AddOns\\Necrosis\\sounds\\SoulstoneEnd-Ru.mp3",
		["EnslaveEnd"] = "Interface\\AddOns\\Necrosis\\sounds\\EnslaveDemonEnd-Ru.mp3",
		["ShadowTrance"] = "Interface\\AddOns\\Necrosis\\sounds\\ShadowTrance-Ru.mp3",
		["ShadowVulnerability"] = "Interface\\AddOns\\Necrosis\\sounds\\ShadowVulnerability-En.mp3"
	};


	NECROSIS_NIGHTFALL_TEXT = {
		["NoBoltSpell"] = "Кажется у вас нет способности Стрела Тьмы.",
		["Message"] = "<white>S<lightPurple1>h<lightPurple2>a<purple>d<darkPurple1>o<darkPurple2>w T<darkPurple1>r<purple>a<lightPurple2>n<lightPurple1>c<white>e"
	};


	NECROSIS_MESSAGE = {
		["Error"] = {
			["InfernalStoneNotPresent"] = "Вы не можете сделать этого. Необходим Камень инфернала!!!",
			["SoulShardNotPresent"] = "Вы не можете сделать этого. Необходим Осколок души!!!",
			["DemoniacStoneNotPresent"] = "Вы не можете сделать этого. Необходима Демоническая статуэтка!!!",
			["NoRiding"] = "У вас нет никакого Коня!!!",
			["NoFireStoneSpell"] = "Вы не можете создать Камень огня!!!",
			["NoSpellStoneSpell"] = "Вы не можете создать Камень чар!!!",
			["NoHealthStoneSpell"] = "Вы не можете создать Камень здоровья!!!",
			["NoSoulStoneSpell"] = "Вы не можете создать Камень души!!!",
			["FullHealth"] = "Вы не можете использовать свой Камень здоровья, у вас нет повреждений",
			["BagAlreadySelect"] = "Ошибка: Эта сумка уже выбрана.",
			["WrongBag"] = "Ошибка: Число должно быть 0 -  4.",
			["BagIsNumber"] = "Ошибка: Пожалуйста, введите число.",
			["NoHearthStone"] = "Ошибка: У вас нет Камня здоровья в инвенторе"
		},
		["Bag"] = {
			["FullPrefix"] = "Ваша ",
			["FullSuffix"] = " полна!",
			["FullDestroySuffix"] = " полна. Следующий осколок будет уничтожен!",
			["SelectedPrefix"] = "Вы выбрали ",
			["SelectedSuffix"] = " сохр. осколки"
		},
		["Interface"] = {
			["Welcome"] = "<white>Введите /necro для отображения окна настроек",
			["TooltipOn"] = "[+] Всплывающие подсказки включены" ,
			["TooltipOff"] = "[-] Всплывающие подскажки выключены",
			["MessageOn"] = "[+] Оповещения в окне чата - включены",
			["MessageOff"] = "[-] Оповещения в окне чата - выключены",
			["MessagePosition"] = "<- Здесь появятся системные сообщения Necrosis ->",
			["DefaultConfig"] = "<lightYellow>Загружена стандартная конфигурация.",
			["UserConfig"] = "<lightYellow>Конфигурация успешно загружена.",
			["CurseSelection"] = " выбрано по умолчанию. Применение использует назначение \"Применение выбранного проклятия\".",
			["CurseAmplify"] = "<lightYellow>Усиленное Проклятие будет запущенно по возможности.",
			["CursePetAttack"] = "<lightYellow>Произнесение стандартного проклятия которое приведет вашего питомца в атаку."
		},
		["Help"] = {
			"/necro recall -- Команда для размещение окна Necrosis и его кнопок в центре экрана.",
			"/necro sm -- Замена сообщений камня душ и призыва краткой версией рейд-готовности."
		},
		["EquipMessage"] = "Экипировать ",
		["SwitchMessage"] = " вместо ",
		["Information"] = {
			["FearProtect"] = "Ваша цель не поддается страху!",
			["EnslaveBreak"] = "Ваш демон разорвал цепи!",
			["SoulstoneEnd"] = "<lightYellow>Ваш Камень Души выдохся!"
		}
	};


	-- Gestion XML - Menu de configuration

	NECROSIS_COLOR_TOOLTIP = {
		["Purple"] = "Пурпурный",
		["Blue"] = "Синий",
		["Pink"] = "Розовый",
		["Orange"] = "Оранжевый",
		["Turquoise"] = "Бирюзовый",
		["X"] = "X"
	};
	
	NECROSIS_CONFIGURATION = {
		["Menu1"] = "Настройки осколков",
		["Menu2"] = "Настройки Сообщений",
		["Menu3"] = "Настройки Кнопок",
		["Menu4"] = "Настройки Таймера",
		["Menu5"] = "Графические Настройки",
		["MainRotation"] = "Выбор угла Necrosis",
		["ShardMenu"] = "|CFFB700B7I|CFFFF00FFn|CFFFF50FFv|CFFFF99FFe|CFFFFC4FFn|CFFFF99FFt|CFFFF50FFo|CFFFF00FFr|CFFB700B7y :",
		["ShardMenu2"] = "|CFFB700B7S|CFFFF00FFh|CFFFF50FFa|CFFFF99FFr|CFFFFC4FFd C|CFFFF99FFo|CFFFF50FFu|CFFFF00FFn|CFFB700B7t :",
		["ShardMove"] = "Размещать осколки душ в выбранной сумке",
		["ShardDestroy"] = "Разрушать все новые осколки, если сумка полна",
		["SpellMenu1"] = "|CFFB700B7S|CFFFF00FFp|CFFFF50FFe|CFFFF99FFl|CFFFFC4FFls :",
		["SpellMenu2"] = "|CFFB700B7P|CFFFF00FFl|CFFFF50FFa|CFFFF99FFy|CFFFFC4FFe|CFFFF99FFr :",
		["TimerMenu"] = "|CFFB700B7G|CFFFF00FFr|CFFFF50FFa|CFFFF99FFp|CFFFFC4FFh|CFFFF99FFi|CFFFF50FFc|CFFFF00FFa|CFFB700B7l T|CFFFF00FFi|CFFFF50FFm|CFFFF99FFe|CFFFFC4FFrs :",
		["TimerColor"] = "Отображать белый, а не желтый текст таймера",
		["TimerDirection"] = "Таймер растет вверх",
		["TranseWarning"] = "Сообщать когда я вхожу в состояние транса",
		["SpellTime"] = "Включить индикатор продолжительности заклинания",
		["AntiFearWarning"] = "Предупреждать когда моя цель не поддается страху.",
		["ShadowVulnerabilityWarning"] = "Оповещать меня когда на цели Уязвимость к Тьме",
		["GraphicalTimer"] = "Отображать графический таймер, вместо текстового",	
		["TranceButtonView"] = "Отображать скрытые кнопки для их перемещения.",
		["ButtonLock"] = "Блокировать кнопки вокруг Сферы Necrosis.",
		["MainLock"] = "Блокировать кнопки и Сферу Necrosis.",
		["BagSelect"] = "Выбор контейнера для осколков душ",
		["BuffMenu"] = "Меню баффов слева",
		["PetMenu"] = "Меню питомцев слева",
		["CurseMenu"] = "Меню проклятий слева",
		["STimerLeft"] = "Показывать строки таймера слева от кнопки таймера",
		["ShowCount"] = "Отображать счетчик осколков в Necrosis",
		["CountType"] = "Показывать количество камней",
		["Circle"] = "Отображать события на графической сфере",
		["Sound"] = "Воспроизводить звуковые эффекты",
		["ShowMessage"] = "Включить различные оповещения",
		["ShowDemonSummon"] = "Показывать сообщения для демонов",
		["ShowSteedSummon"] = "Показывать сообщения для коней",
		["ChatType"] = "Объявлять сообщения Necrosis как системные",
		["NecrosisSize"] = "Размер кнопок Necrosis",
		["BanishSize"] = "Размер кнопки Изгнания",
		["TranseSize"] = "Размер кнопок Транса и Анти-страха",
		["Skin"] = "Скин сферы Necrosis",
		["Show"] = {
			["Firestone"] = "Показывать кнопку Камня огня",
			["Spellstone"] = "Показывать кнопку Камня чар",
			["Healthstone"] = "Показывать кнопку Камня здоровья",
			["Soulstone"] = "Показывать кнопку Камня Души",
			["Steed"] = "Показывать кнопку вызова Коня",
			["Buff"] = "Показывать кнопку Заклинаний",
			["Curse"] = "Показывать кнопку Проклятий",
			["Demon"] = "Показывать кнопку Демонов",
			["Tooltips"] = "Показывать подсказки"
		},
		["Count"] = {
			["Shard"] = "Осколки душ",
			["Inferno"] = "Камни призыва демонов",
			["Rez"] = "Таймер оживления"
		},
        -- added by Sylvette
		["StoneTrade"] = "Разрешить обмен осколков в бою"
	};

end
