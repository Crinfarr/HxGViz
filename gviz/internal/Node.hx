package gviz.internal;

import haxe.ValueException;
import haxe.exceptions.ArgumentException;
import gviz.internal.Enums.NodeAttribute;
import gviz.extern.cpp.NodeWrapper;

using haxe.EnumTools.EnumValueTools;
using StringTools;

@:haxe.warning('-Wdeprecated')
class Node {
	#if cpp
	private final node:NodeWrapper;
    
    private final style:Array<String> = [];

	public function new(wrapped:NodeWrapper) {
		this.node = wrapped;
	}

	public function setAttr(att:NodeAttribute) {
		switch (att) {
			case Margin(xamt, yamt):
				this.node.setAttr('margin', '$xamt,$yamt');
			case Shape(shape):
				this.node.setAttr('shape', switch (shape) {
					case Polygon(sides, skew, distortion):
						this.setAttr(Skew(skew));
						this.setAttr(Distortion(distortion));
						this.setAttr(Sides(sides));
						'polygon';
					case _:
						shape.getName().toLowerCase();
				});
			case Color(color), FillColor(color), FontColor(color):
				this.node.setAttr(att.getName().toLowerCase(), switch (color) {
					case ByName(name):
						name.getName().toLowerCase();
					case ByHex(hex):
						hex;
					case ByRGB(r, g, b):
                        if (r > 0xff || g > 0xff || b > 0xff)
                            throw new ValueException('Invalid RGB value: R:$r G:$g B:$b');
						"#" + (r << 16 & g << 8 & b).hex();
				});
            case Layer(overlaytype):
                this.node.setAttr('layer', switch (overlaytype) {
                    case All:
                        "all";
                    case ByID(id):
                        id;
                    case IDRange(startID, endID):
                        '$startID:$endID';
                });
            case Style(styletype):
                for (inst in styletype) {
                    switch (inst) {
                        case Tapered:
                            throw new ValueException('Tapered style can only be used on edges');
                        case _:
                            while (this.style.length != 0)
                                this.style.pop();
                            style.push(inst.getName().toLowerCase());
                    }
                }
                this.node.setAttr('style', this.style.join(','));
			case _:
				this.node.setAttr(att.getName().toLowerCase(), '${att.getParameters()[0]}');
		}
	}
	#elseif js
	#end
}
