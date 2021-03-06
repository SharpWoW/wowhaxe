package wowhaxe;

import haxe.extern.Rest;

extern class AnimationGroup extends ParentedObject implements ScriptObject {
    public function GetScript(script: String): Null<Frame -> Rest<Any> -> Void>;
    public function SetScript(script: String, handler: Null<Frame -> Rest<Any> -> Void>): Void;
    public function HasScript(script: String): Bool;
}
