package gviz.internal;

import gviz.extern.cpp.EdgeWrapper;
import gviz.extern.cpp.NodeWrapper;
import haxe.Exception;
import gviz.extern.cpp.GraphWrapper;
import gviz.internal.Enums.GraphType;
import gviz.internal.Enums.GraphAttribute;
import gviz.extern.web.GraphLayer;

using haxe.EnumTools.EnumValueTools;

class Graph {
    #if cpp
    final intGraph:gviz.extern.cpp.GraphWrapper;
	private static function parseGtype(type:GraphType):String {
		switch (type) {
			case Undirected(strict):
				return 'ag${(strict) ? "strict" : ""}undirected';
			case Directed(strict):
				return 'ag${(strict) ? "strict" : ""}directed';
			default:
				throw new Exception("Invalid GraphType: " + type.getName());
		}
	}
	public function new(graphname:String = "", graphType:GraphType) {
		intGraph = GraphWrapper.create(graphname, parseGtype(graphType));
    }
    public function createNode(nodename:String=""):Node {
        final wrapper:NodeWrapper = intGraph.createNode(nodename);
        final node = new Node(wrapper);
        return node;
    }
    public function createEdge(edgename:String="", nodeA:NodeWrapper, nodeB:NodeWrapper) {
        final edge:EdgeWrapper = intGraph.createEdge(nodeA, nodeB, edgename);
        //TODO edge interface Edge class
    }
    public function setAttribute(attribute:GraphAttribute) {
        switch (attribute) {
            case ClusterRank(enumval):
                this.intGraph.setAttribute(attribute.getName(), '${enumval.getName()}');
            case _:
                this.intGraph.setAttribute(attribute.getName(), '${attribute.getParameters()[0]}');
        }
    }

    #elseif js
    final intGraph:GraphLayer;
    public function new(graphname:String = "", graphType:GraphType) {
        intGraph = new GraphLayer(graphType);
    }
    #end
}