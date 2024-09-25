package gviz.internal;

#if cpp
import haxe.Exception;
import gviz.extern.cpp.GraphWrapper;
import gviz.internal.Enums.GraphType;
import gviz.internal.Enums.GraphAttribute;
import gviz.internal.Node;
#if use_uuids
import gviz.helpers.UUID;
#end

using haxe.EnumTools.EnumValueTools;
#end

class Graph {
	#if cpp
	@:allow(gviz.internal.Node)
	@:allow(gviz.internal.Edge)
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

	#if use_uuids
	public final uuid:String;
	#end

	public function new(#if !use_uuids graphname:String = "", #end graphType:GraphType) {
		#if use_uuids
		this.uuid = UUID.v4;
		#end
		intGraph = GraphWrapper.create(#if use_uuids uuid #else graphname #end, parseGtype(graphType));
	}

	public function addNode(#if !use_uuids name:String #end):Node {
		return new Node(this, #if !use_uuids name #end);
	}

	public function connect(nodeA:Node, nodeB:Node, #if !use_uuids edgeName:String #end):Edge {
		return new Edge(nodeA, nodeB, #if use_uuids UUID.v5(this.uuid, UUID.v4) #else edgeName #end, this);
	}

	// public function createNode(nodename:String=""):Node {
	//     // final wrapper:NodeWrapper = intGraph.createNode(nodename);
	//     final node = new Node(this);
	//     return node;
	// }
	// public function createEdge(edgename:String="", nodeA:NodeWrapper, nodeB:NodeWrapper) {
	//     final edge:EdgeWrapper = intGraph.createEdge(nodeA, nodeB, edgename);
	// }
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
