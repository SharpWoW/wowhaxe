package wowhaxe;

@:native("_G")
extern class Chat {
    public static var DEFAULT_CHAT_FRAME: MessageFrame;

    public static function GetChatTypeIndex(typeCode: String): Int;
}
