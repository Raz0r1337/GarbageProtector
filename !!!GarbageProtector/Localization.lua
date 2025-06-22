local _, core = ...

local setmetatable, rawset, format = setmetatable, rawset, string.format
local L = setmetatable({}, {
	__newindex = function(self, key, value)
		rawset(self, key, value == true and key or value)
	end,
	__index = function(self, key)
		return key
	end
})
function L:F(line, ...)
	line = L[line]
	return format(line, ...)
end
core.L = L

local GAME_LOCALE = GetLocale()

-- default (enUS/enGB)
L["Eanbled"] = true
L["Disabled"] = true
L["Handling |cffffd700%s|r calls is now %s."] = true

L.EnabledTooltip = [[
This option effectively decides whether GarbageProtector's hooks do anything.
GarbageProtector hooks these functions on load either way.
If you want to completely disable the hooks, you'll have to disable GarbageProtector from the addons list and reload UI.
]]

L["Handle collectgarbage calls"] = true
L.CollecteGarbageTooltip = "Screw those irresponsible collectgarbage calls! Yeah!"

L.UpdateAddOnMemoryUsageTooltip = [[
UpdateAddOnMemoryUsage is a waste of CPU time and some addons call it periodically when they shouldn't.
This option effectively decides whether GarbageProtector's UpdateAddOnMemoryUsage hook should prevent execution.

Warning: All in-game memory usage reports obtained with GetAddOnMemoryUsage will be reported as 0 or the last returned value if this is enabled.
]]

L["Acceptable commands:"] = true
L["open the options interface"] = true
L["list CLI slash commands"] = true
L["toggle whether GP should handle any function calls"] = true
L["toggle whether GP should handle collectgarbage calls (prevents collectgarbage calls for slow full garbage collection cycles)"] = true
L["toggle whether GP should handle UpdateAddOnMemoryUsage calls (makes GetAddOnMemoryUsage always return 0 or the last returned value)"] = true

-- localizations:

if GAME_LOCALE == "deDE" then

L["Eanbled"] = "Aktiviert"
L["Disabled"] = "Deaktiviert"
L["Handling |cffffd700%s|r calls is now %s."] = "Verarbeitung von |cffffd700%s|r-Aufrufen ist jetzt %s."

L.EnabledTooltip = [[
Diese Option steuert, ob die von GarbageProtector installierten Hooks zur Laufzeit aktiv sind.
Die betroffenen Funktionen werden beim Laden des Addons in jedem Fall gehookt.
Um das Hooking vollständig zu unterbinden, muss GarbageProtector über die Addon-Verwaltung deaktiviert und das UI neu geladen werden.
]]

L["Handle |cffffd700%s|r calls"]  = "Verarbeitung von |cffffd700%s|r-Aufrufen"
L.CollecteGarbageTooltip = "Weg mit diesen r\195\188cksichtslosen collectgarbage-Aufrufen!  Ja!"

L.UpdateAddOnMemoryUsageTooltip = [[
UpdateAddOnMemoryUsage ist eine Verschwendung von CPU-Zeit, und einige Addons rufen es periodisch auf, obwohl sie es nicht sollten.
Diese Option steuert, ob der UpdateAddOnMemoryUsage-Hook von GarbageProtector die Ausführung verhindern soll.

Warnung: Alle im Spiel abgefragten Speichernutzungswerte per GetAddOnMemoryUsage werden entweder als 0 oder als zuletzt zurückgegebener Wert angezeigt, wenn diese Option aktiviert ist.
]]

L["Acceptable commands:"] = "Zul\195\164ssige Befehle:"
L["open the options interface"] = "Optionenfenster \195\182ffnen"
L["list CLI slash commands"] = "Liste der verf\195\188gbaren Slash-Befehle"
L["toggle whether GP should handle any function calls"] = "Schaltet die globale Funktionsverarbeitung durch GP ein oder aus."
L["toggle whether GP should handle collectgarbage calls (prevents collectgarbage calls for slow full garbage collection cycles)"] = "collectgarbage-Aufrufe durch GP blockieren (vermeidet Lag durch GC)"
L["toggle whether GP should handle UpdateAddOnMemoryUsage calls (makes GetAddOnMemoryUsage always return 0 or the last returned value)"] = "UpdateAddOnMemoryUsage blockieren (GetAddOnMemoryUsage gibt 0 oder alten Wert zur\195\188ck)"

elseif GAME_LOCALE == "esES" then

elseif GAME_LOCALE == "esMX" then

elseif GAME_LOCALE == "frFR" then

L["Eanbled"] = "Activé"
L["Disabled"] = "Désactivé"
L["Handling |cffffd700%s|r calls is now %s."] = "Gestion de la fonction |cffffd700%s|r est maintenant %s"

L.EnabledTooltip = [[
Cette option décide si GarbageProtector doit être activé ou pas.
GarbageProtector hook les fonctions après le chargement.
Si vous voulez empécher le hook, veuillez désactiver le addon et recharger votre interface.
]]

L["Handle |cffffd700%s|r calls"] = "Gérer la fonction |cffffd700%s|r"
L.CollecteGarbageTooltip = "Screw those irresponsible collectgarbage calls! Yeah!"
L.UpdateAddOnMemoryUsageTooltip = [[
UpdateAddOnMemoryUsage is a waste of CPU time and some addons call it periodically when they shouldn't.
This option effectively decides whether GarbageProtector's UpdateAddOnMemoryUsage hook should prevent execution.

Warning: All in-game memory usage reports obtained with GetAddOnMemoryUsage will be reported as 0 or the last returned value if this is enabled.
]]

L["Acceptable commands:"] = "Commandes acceptées:"
L["open the options interface"] = "ouvre l'interface options"
L["list CLI slash commands"] = "liste les commandes acceptées"
L["toggle whether GP should handle any function calls"] = "active ou désactive les fonctions de l'addon"
-- L["toggle whether GP should handle collectgarbage calls (prevents collectgarbage calls for slow full garbage collection cycles)"] = true
-- L["toggle whether GP should handle UpdateAddOnMemoryUsage calls (makes GetAddOnMemoryUsage always return 0 or the last returned value)"] = true

elseif GAME_LOCALE == "koKR" then

elseif GAME_LOCALE == "ruRU" then

elseif GAME_LOCALE == "zhCN" then

elseif GAME_LOCALE == "zhTW" then

end
