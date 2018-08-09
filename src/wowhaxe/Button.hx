package wowhaxe;

@:native("Button")
extern class Button extends Frame {
    public function Click(): Void;

    public function Disable(): Void;
    public function Enable(): Void;
    public function IsEnabled(): Bool;

    public function GetButtonState(): String;

    public function GetText(): String;
    public function GetTextHeight(): Float;
    public function GetTextWidth(): Float;

    public function LockHighlight(): Void;
    public function UnlockHighlight(): Void;

    public function RegisterForClicks(clickType: String, clickTypes?: Rest<String>): Void;

    public function SetButtonState(state: String, lock?: Bool): Void;

    public function SetFont(font: String, size: Float, flags?: String): Void;

    public function SetText(text: String): Void;
    public function SetFormattedText(format: String, parameters?: Rest<Any>): Void;

    public function SetPushedTextOffset(x: Float, y: Float): Void;
}
