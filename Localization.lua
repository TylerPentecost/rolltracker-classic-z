local _, RTC = ...

-- Basic localizations

RTC.PassTags = {}
function RTC.GetLocale()
    local ColRed = "|cffff4040"

    local DefaultEnGB = {
        ["MsgNbRolls"] = "%d Roll(s)",
        ["MsgRollCleared"] = "All rolls have been cleared.",
        ["MsgUndoRoll"] = "Undo all rolls.",
        ["MsgAnnounce"] = "%s won with a roll of %d.",
        ["MsgAnnounceItem"] = "%s won %s with a roll of %d.",
        ["MsgAnnounceTie"] = "Tie, %s won with a roll of %d.",
        ["MsgAnnounceTieItem"] = "Tie, %s won %s with a roll of %d.",
        ["MsgNotRolled"] = "The following people still need to roll or say '%s'",
        ["MsgCheat"] = "Ignoring %s's roll of %s (%s-%s).", -- (player, roll, max_roll, min_roll)
        ["MsgStart"] = "New roll starting now! Type '/rnd' or '%s'",
        ["MsgStartGreenAndNeed"] = "New roll starting now! Type '/rnd' for need, '/rnd 1-50' for greed or '%s'",
        ["MsgNextItem"] = "Next item: %s",
        ["MsgTooltip"] = "|cffff4040Left click|r to open RTC |n|cffff4040Shift+Left click|r to open 'Loot Rolls'|n|cffff4040Right click|r to open options",
        ["MsgBar"] = "==============================",
        ["MsgLocalRestart"] = "The setting is not transferred until after a restart (/reload)",
        ["MsgNbLoots"] = "%d stored loot(s).",
        ["MsgLootLine"] = "%s: %s receives loot: %s", -- date, name, item
        ["MsgLootCleared"] = "All stored loots have been cleared.",
        ["MsgUndoLoot"] = "Undo all loots.",
        ["MsgLTnotenabled"] = "Loot Tracker is not enabled.",
        ["MsgRaidRoll"] = "%s won. (%d)",
        ["MsgForcedAnnounce"] = "No rolls",
        ["MsgStartCD"] = "Start a countdown with right click on [Announce] or '/rtc cd'",
        ["MsgPastLoots"] = "Past loots:",
        ["MsgAddNote"] = "%s note",
        ["MsgNotesCleared"] = "All player notes cleared",
        ["TxtGreed"] = "Greed",
        ["TxtNeed"] = "Need",
        ["TxtLine"] = "------------------------------------------------------------------------------------------------------",
        ["pass"] = "pass",
        ["BtnClear"] = "Clear",
        ["BtnUndo"] = "Undo",
        ["BtnNotRolled"] = "Not rolled",
        ["BtnRoll"] = "Roll",
        ["BtnAnnounce"] = "Announce",
        ["BtnGreed"] = "Greed",
        ["BtnPass"] = "Pass",
        ["BtnOpen"] = "Open",
        ["BtnConfig"] = "Settings",
        ["BtnLootRolls"] = "Loot Rolls",
        ["BtnOpenLoot"] = "Loot Tracker",
        ["BtnCSVExport"] = "CSV Export",
        ["BtnCancel"] = "Cancel",
        ["BtnRaidRoll"] = "Raid Roll",
        ["BtnColorNormal"] = "Colour text",
        ["BtnColorCheat"] = "Colour cheat",
        ["BtnColorGuild"] = "Colour guild",
        ["BtnColorInfo"] = "Colour info",
        ["BtnColorChat"] = "Colour chat message",
        ["BtnColorScroll"] = "Colour list entry",
        ["EdtWhiteList"] = "Whitelist ItemIds",
        ["EdtNbLoots"] = "Maximum stored loot",
        ["EdtCSVexport"] = "CSV-Export-Format",
        ["EdtCDRefresh"] = "Refresh Countdown after roll (seconds)",
        ["EdtDefaultCD"] = "Default Countdown (seconds)",
        ["EdtAutoCloseDelay"] = "Delayed closing in seconds",
        ["EdtAnnounceList"] = "Entries in the announcement list",
        ["TxtCSVJokers"] = "%% %name% %class% %timestamp% %dd% %mm% %yy% %HH% %MM% %SS%",
        ["TxtCSVJokers2"] = "%iname% %irarity% %iraritytxt% %ilevel% %iid% %iprice% %icount% %itype% %itypetxt%",
        ["TxtCSVJokersTitle"] = "For CSV-Export you can use this jokers:",
        ["TxtItemType"] = "Attention! ItemType is independent of the rarity!",
        ["TabRoll"] = "Rolls",
        ["TabLoot"] = "Loot",
        ["TabCSV"] = "CSV",
        ["PanelLootTracker"] = "Loot Tracker",
        ["HeaderRarity"] = "Track Rarity",
        ["HeaderItemType"] = "Track ItemType",
        ["HeaderSettings"] = "Settings",
        ["HeaderCustomLocales"] = "Localization",
        ["HeaderCSV"] = "CSV-Export",
        ["PanelAbout"] = "About",
        ["HeaderSlashCommand"] = "Slash Commands",
        ["HeaderCredits"] = "Credits",
        ["HeaderInfo"] = "Information",
        ["HeaderUsage"] = "Usage",
        ["Cboxshowminimapbutton"] = "Show minimap button",
        ["CboxLockMinimapButton"] = "Lock minimap button position",
        ["CboxLockMinimapButtonDistance"] = "Minimize minimap button distance",
        ["CboxCloseOnClear"] = "Close window after [Clear]",
        ["CboxClearOnAnnounce"] = "Clear rolls after [Announce]",
        ["CboxCloseOnAnnounce"] = "Close window after [Announce]",
        ["CboxClearOnClose"] = "Clear rolls after [Close]",
        ["CboxIgnoreDouble"] = "Ignore double rolls",
        ["CboxRejectOutBounds"] = "Reject rolls with bounds other than (1-100)",
        ["CboxAnnounceIgnoreDouble"] = "Only with [Announce]: Ignore double rolls",
        ["CboxAnnounceRejectOutBounds"] = "Only with [Announce]: Reject rolls with bounds other than (1-100)",
        ["CboxPromoteRolls"] = "Treat 69 as 101",
        ["CboxAutoCountdownWithItem"] = "Automatically start Countdown when linking item",
        ["CboxNeedAndGreed"] = "Use Need '/rnd' and Greed '/rnd 1-50' system, ignores out of bounce",
        ["CboxShowNotRolled"] = "Show [Not rolled] button",
        ["CboxAutoLootRolls"] = "Open 'Loot Rolls' automatically",
        ["CboxAutoCloseLootRolls"] = "Automatic close 'Loot Rolls' when everyone has rolled",
        ["CboxClearOnStart"] = "Clear when somebody starts a new roll",
        ["CboxOpenOnStart"] = "Open when somebody starts a new roll",
        ["CboxColorName"] = "Colorize names by class",
        ["CboxShowClassIcon"] = "Show class icon",
        ["CboxOnDebug"] = "Show debug information",
        ["CboxShowGuildRank"] = "Show guild rank",
        ["CboxAutmaticAnnounce"] = "Automatic announce rolls",
        ["CboxNotfiyInnone"] = "Enable on overworld",
        ["CboxNotfiyInpvp"] = "Enable in battleground",
        ["CboxNotfiyInparty"] = "Enable in dungeon",
        ["CboxNotfiyInraid"] = "Enable in raid dungeon",
        ["CboxLTShortMessage"] = "Short Message",
        ["CboxLTTrackSolo"] = "Track solo",
        ["CboxLTTrackGroup"] = "Track party",
        ["CboxLTTrackSRaid"] = "Track raid with 10 or less members",
        ["CboxLTTrackBRaid"] = "Track raid with 11 or more members",
        ["CboxLTEnable"] = "Enable loot tracking",
        ["CboxLTSmallFont"] = "Small font",
        ["CboxLTShowIcon"] = "Show item icon",
        ["SlashClearRolls"] = "Clear rolls",
        ["SlashClearLoot"] = "Clear loot",
        ["SlashClearLootRolls"] = "Clear 'Loot Rolls'",
        ["SlashUndoRolls"] = "Recover last rolls",
        ["SlashUndoLoot"] = "Recover last loots",
        ["SlashAnnounce"] = "Announce winner of the last roll",
        ["SlashNotRolled"] = "Remind everyone who has not rolled",
        ["SlashClose"] = "Close main window",
        ["SlashReset"] = "Reset position of main window",
        ["SlashConfig"] = "Open Configuration",
        ["SlashAbout"] = "Open about",
        ["SlashStart"] = "Announce a new roll, <value> can be empty or itemlink",
        ["SlashOpen"] = "Open main window",
        ["SlashRaidRoll"] = "Roll a player name",
        ["SlashRaidRollList"] = "Output all player",
        ["SlashCountdown"] = "Countdown <value> in seconds",
        ["SlashNotes"] = "Print all notes",
        ["SlashClearNotes"] = "Clear all notes",
        ["AboutInfo"] = "Have you ever tried to roll the 'Onyxia Hide Backpack' in a raid? RTC collects all roll results and sorts them. Ever thought about whether you wanted something for your second-equip, but didn't know if somebody needed it? RTC can automatically open the Blizzard 'Loot rolls' window, where you can see immediately who needs or has greed.|nIn raid ever lost the overview, who got what? Again, RTC can help you. On request, it records all items, including a variable export function.",
        ["AboutSlashCommand"] = "<value> can be true, 1, enable, false, 0, disable. If <value> is omitted, the current status switches.",
        ["AboutUsage"] = "RTC will automatically open when someone rolls the dice. Double rolls or rolls outside the default range are ignored on request.|nBy default, the automatic opening of 'Loot Rolls' is disabled. Likewise, the 'Loot Tracker' must be turned on manually.",
    }

    RTC.PassTags[DefaultEnGB.pass] = true

    local L = {}
    setmetatable(DefaultEnGB,
        {
            __index = function(_, k)
                return "[" .. k .. "]"
            end
        })
    setmetatable(L,
        {
            __index = DefaultEnGB
        })
    L["AboutCredits"] = "RollTracker Classic is an updated version of 'RollTracker Lite', originally by Jerry Chong - zanglang@gmail.com."
    return L
end
