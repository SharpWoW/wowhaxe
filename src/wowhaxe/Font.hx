package wowhaxe;

import wowhaxe.data.*;

extern class Font implements FontInstance {
    public function CopyFontObject(otherFont: Font): Void;

    public function GetParent(): UIObject;

    public function GetAlpha(): Float;
    public function SetAlpha(alpha: Float): Void;

    public function GetName(): String;

    public function IsForbidden(): Bool;

    public function GetObjectType(): String;
    public function IsObjectType(type: String): Bool;

    public function GetFont(): FontInfo;
    public function GetFontObject(): FontInstance;
    public function GetJustifyH(): String;
    public function GetJustifyV(): String;
    public function GetShadowColor(): FontColor;
    public function GetShadowOffset(): FontOffset;
    public function GetSpacing(): Float;
    public function GetTextColor(): FontColor;
    public function SetFont(path: String, height: Float, ?flags: String): Void;
    public function SetJustifyH(justifyH: String): Void;
    public function SetJustifyV(justifyV: String): Void;
    public function SetShadowColor(r: Float, g: Float, b: Float, ?a: Float): Void;
    public function SetShadowOffset(x: Float, y: Float): Void;
    public function SetSpacing(spacing: Float): Void;
    public function SetTextColor(r: Float, g: Float, b: Float, ?a: Float): Void;
}
