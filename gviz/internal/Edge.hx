package gviz.internal;

import haxe.ValueException;
import gviz.internal.Enums.EdgeAttribute;
import gviz.extern.cpp.EdgeWrapper;

using StringTools;
class Edge {
	#if cpp
	final edge:EdgeWrapper;
	final parent:Graph;

	public final line:{start:Node, end:Node};

	@:allow(gviz.internal.Graph)
	@:allow(gviz.internal.Node)
	private function new(nodeA:Node, nodeB:Node, name:String, parent:Graph) {
		this.parent = parent;
		this.edge = parent.intGraph.createEdge(nodeA.node, nodeB.node, name);
		this.line = {
            start: nodeA,
            end: nodeB
        };
	}
    public function setAttr(att:EdgeAttribute) {
        switch(att) {
            case Layer(overlaytype):
                this.edge.setAttr('layer', switch(overlaytype) {
                    case All:
                        "all";
                    case ByID(id):
                        id;
                    case IDRange(startID, endID):
                        '$startID:$endID';
                });
            case Color(colortype), Fontcolor(colortype), Labelfontcolor(colortype):
                this.edge.setAttr(att.getName().toLowerCase(), switch (colortype) {
                    case ByName(name):
                        name.getName().toLowerCase();
                    case ByHex(hex):
                        hex;
                    case ByRGB(r, g, b):
                        if (r>255 || g>255 || b>255)
                            throw new ValueException('Invalid RGB value: R:$r, G:$g, B:$b');
                        "#"+(r<<16&g<<8&b).hex();
                });
            case Len(x, y):
                this.edge.setAttr('len', '$x,$y');
            case Dir(direction):
                this.edge.setAttr('dir', direction.getName().toLowerCase());
            case Arrowhead(type), Arrowtail(type):
                this.edge.setAttr(att.getName().toLowerCase(), type.getName().toLowerCase());
            case Headport(type), Tailport(type):
                this.edge.setAttr(att.getName().toLowerCase(), type.getName().toLowerCase());
            case _:
                this.edge.setAttr(att.getName().toLowerCase(), '${att.getParameters()[0]}');
        }
    }
	#elseif js
	#end
}
