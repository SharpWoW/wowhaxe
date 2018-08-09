package wowhaxe;

import wowhaxe.data.*;

extern class MessageFrame extends Frame implements FontInstance {
    public function AddMessage(text: String, ?red: Float, ?green: Float, ?blue: Float, ?messageId: Int, ?holdTime: Int): Void;

    public function Clear(): Void;

    public function GetFadeDuration(): Int;
    public function SetFadeDuration(seconds: Int): Void;
    public function GetFading(): Bool;
    public function SetFading(status: Bool): Void;

    public function GetInsertMode(): String;
    public function SetInsertMode(mode: String): Void;

    public function SetTimeVisible(seconds: Int): Void;

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
