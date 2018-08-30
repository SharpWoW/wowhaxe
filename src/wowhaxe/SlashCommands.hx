package wowhaxe;

typedef SlashCommandHandler = String -> EditBox -> Void;

class SlashCommands {
    public static function get(key: String): SlashCommandHandler {
        return untyped __lua__("_G.SlashCmdList[key]");
    }

    public static function register(key: String, aliases: Array<String>, handler: SlashCommandHandler) {
        for (i in 0...aliases.length) {
            var name = 'SLASH_$key${i + 1}';
            var slash = '/${aliases[i]}';
            untyped __lua__("_G[name] = slash");
        }

        untyped __lua__("_G.SlashCmdList[key] = handler");
    }
}
