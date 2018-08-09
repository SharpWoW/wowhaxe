package wowhaxe;

import haxe.extern.Rest;

import wowhaxe.Chat.DEFAULT_CHAT_FRAME;
import wowhaxe.Global.CreateFrame;
import wowhaxe.Global.print;
import wowhaxe.Wrapper.wrap;

class Main {
    private static var frame: Frame;

    public static function main() {
        frame = CreateFrame("Frame");
        frame.SetScript("OnEvent", wrap(function(self: Frame, event: String, args: Array<Any>) {
            trace('OnEvent happened');
            switch (event) {
                case "ADDON_LOADED":
                    addonLoaded(args[0]);
                    return;

                case "PLAYER_ENTERING_WORLD":
                    playerEnteringWorld();
                    return;

                case "ZONE_CHANGED_NEW_AREA":
                    var info = ChatTypeInfo.get("RAID");
                    DEFAULT_CHAT_FRAME.AddMessage("You changed zone", null, null, null, info.id);
                    return;
            }
        }));
        frame.RegisterEvent("ADDON_LOADED");
        frame.RegisterEvent("PLAYER_ENTERING_WORLD");
        frame.RegisterEvent("ZONE_CHANGED_NEW_AREA");
    }

    private static function addonLoaded(name: String) {
        if (name != "WowHaxe")
            return;

        var playerName = Unit.UnitName("player");
        print('Welcome to $name, $playerName!');
    }

    private static function playerEnteringWorld() {
        print("You are entering the world!");
    }
}
