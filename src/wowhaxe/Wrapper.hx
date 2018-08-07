package wowhaxe;

import haxe.macro.Context;
import haxe.macro.Expr;

class Wrapper {
    public static macro function wrap(fnExpr: Expr) {
        switch (fnExpr.expr) {
            case EFunction(_name, fn):
                var exprs:Array<Expr> = [];
                var l = fn.args.length; // total number of args
                var seenSplice = false;
                var spliceI = 0;
                for (i in 0...l) {
                    var param = fn.args[i];
                    var name = param.name;
                    var type = param.type;

                    if (name == "_") {
                        if (seenSplice)
                            spliceI++;

                        continue;
                    }

                    if (seenSplice) {

                    if (name == "args")
                        return Context.error("Cannot splice twice", fnExpr.pos);
                    else if (param.type == null)
                        exprs.push(macro var $name = __rest[$v{spliceI}]);
                    else
                        exprs.push(macro var $name: $type = __rest[$v{spliceI}]);
                    spliceI++;

                    } else {

                    if (param.name == "args") {
                        var diff = l - 1 - i;
                        exprs.push(macro var $name = __args.slice($v{i}, __args.length - $v{diff}));
                        exprs.push(macro var __rest = __args.splice($v{-diff}, $v{diff}));
                        seenSplice = true;
                    } else if (param.type == null)
                        exprs.push(macro var $name = __args[$v{i}]);
                    else
                        exprs.push(macro var $name: $type = __args[$v{i}]);

                    }
                }
                if (fn.expr != null)
                    exprs.push(fn.expr);

                var body = macro Reflect.makeVarArgs(function (__args) {
                    $b{exprs};
                });

                return body;

            default:
                return Context.error("Invalid type passed", fnExpr.pos);
        }
    }
}
