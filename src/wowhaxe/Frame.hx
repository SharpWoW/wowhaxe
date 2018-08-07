package wowhaxe;

import haxe.extern.Rest;

@:native("Frame")
extern class Frame {
    public function GetName(): String;

    public function RegisterEvent(id: String): Void;
    public function RegisterAllEvents(): Void;

    public function UnregisterEvent(id: String): Void;
    public function UnregisterAllEvents(id: String): Void;

    public function SetScript(script: String, handler: Frame -> Rest<Any> -> Void): Void;
}
