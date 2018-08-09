package wowhaxe;

import wowhaxe.data.*;

extern class LayeredRegion extends VisibleRegion {
    public function GetDrawLayer(): Layer;
    public function SetDrawLayer(layer: String, sublevel?: Int): Void;
    public function SetVertexColor(r: Float, g: Float, b: Float, alpha?: Float): Void;
}
