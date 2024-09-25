package gviz.internal;

import gviz.extern.cpp.EdgeWrapper;

class Edge {
	#if cpp
	final edge:EdgeWrapper;
    final parent:Graph;
    @:allow(gviz.internal.Graph)
	@:allow(gviz.internal.Node)
	private function new(nodeA:Node, nodeB:Node, name:String, parent:Graph) {
        this.parent = parent;
        this.edge = parent.intGraph.createEdge(nodeA.node, nodeB.node, name);
    }
	#elseif js
	#end
}
