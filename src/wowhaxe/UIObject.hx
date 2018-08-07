package wowhaxe;

extern class UIObject {
    public function GetParent(): UIObject;

    public function GetAlpha(): Float;
    public function SetAlpha(alpha: Float): Void;

    public function GetName(): String;

    public function IsForbidden(): Bool;

    public function GetObjectType(): String;
    public function IsObjectType(type: String): Bool;
}
