package wowhaxe;

@:native("_G")
extern class Global {
    public static function CreateFrame(type: String): Frame;

    public static function print(message: Dynamic): Void;
}
