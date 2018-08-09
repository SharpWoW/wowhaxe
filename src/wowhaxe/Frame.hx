package wowhaxe;

import haxe.extern.Rest;

@:native("Frame")
extern class Frame extends VisibleRegion implements ScriptObject {
    public function RegisterEvent(event: String): Void;
    public function RegisterUnitEvent(event: String, units: Rest<String>): Void;
    public function RegisterAllEvents(): Void;
    public function UnregisterEvent(event: String): Void;
    public function UnregisterAllEvents(event: String): Void;
    public function IsEventRegistered(event: String): Bool;

    public function GetScript(script: String): Null<Frame -> Rest<Any> -> Void>;
    public function SetScript(script: String, handler: Null<Frame -> Rest<Any> -> Void>): Void;
    public function HasScript(script: String): Bool;

    public function SetScale(scale: Float): Void;

    public function SetTopLevel(isTopLevel: Bool): Void;
    public function SetUserPlaced(isUserPlaced: Bool): Void;
    public function SetMovable(isMovable: Bool): Void;
    public function SetResizable(isResizable: Bool): Void;
    public function StartMoving(): Void;
    public function StartSizing(point: String): Void;
    public function StopMovingOrSizing(): Void;
}
