package wowhaxe;

import haxe.extern.EitherType;

import wowhaxe.data.*;

extern class Region extends ParentedObject {
    public function SetParent(parent: EitherType<String, Region>): Void;

    public function GetNumPoints(): Int;

    public function GetPoint(n: Int): Point;

    public function GetCenter(): Position;
    public function GetBottom(): Float;
    public function GetLeft(): Float;
    public function GetRight(): Float;
    public function GetTop(): Float;

    public function GetRect(): Rectangle;

    public function GetHeight(): Float;
    public function SetHeight(height: Float): Void;

    public function GetWidth(): Float;
    public function SetWidth(width: Float): Void;

    public function SetSize(width: Float, height: Float): Void;

    public function Show(): Void;
    public function Hide(): Void;
    public function IsShown(): Bool;
    public function IsVisible(): Bool;
    public function SetShown(shown: Bool): Void;

    public function IsDragging(): Bool;
    public function IsProtected(): Bool;

    public function IsMouseOver(top: Float = 0.0, bottom: Float = 0.0, left: Float = 0.0, right: Float = 0.0): Bool;

    @:overload(function(point: String): Void {})
    @:overload(function(point: String, relativeTo: EitherType<String, Region>): Void {})
    @:overload(function(point: String, relativeTo: EitherType<String, Region>, relativePoint: String): Void {})
    @:overload(function(point: String, ofsx: Float = 0.0, ofsy: Float = 0.0): Void {})
    @:overload(function(point: String, ofsx: Float = 0.0): Void {})
    public function SetPoint(point: String, relativeTo: EitherType<String, Region>, relativePoint: String, ofsx: Float = 0.0, ofsy: Float = 0.0): Void;

    public function SetAllPoints(?relativeTo: EitherType<String, Region>): Void;

    public function ClearAllPoints(): Void;

    public function StopAnimating(): Void;
}
