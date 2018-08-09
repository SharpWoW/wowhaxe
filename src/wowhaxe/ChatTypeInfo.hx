package wowhaxe;

import wowhaxe.data.*;

class ChatTypeInfo {
    public static function get(key: String): ChatTypeInfoData {
        return untyped __lua__("_G.ChatTypeInfo[key]");
    }
}
