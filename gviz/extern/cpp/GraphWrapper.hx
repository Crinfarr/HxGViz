package gviz.extern.cpp;

#if (cpp || bin)
import cpp.Star;
import gviz.extern.cpp.SubgraphWrapper;
import gviz.extern.cpp.EdgeWrapper;
import gviz.extern.cpp.NodeWrapper;

@:buildXml('
<files id="haxe">
    <compilerflag value="-I${haxelib:hxgviz}/include"/>
    <file name="${haxelib:hxgviz}/include/lib/GraphWrapper.cpp">
        <depend name="${haxelib:hxgviz}/include/lib/Wrappers.h"/>
    </file>
</files>
<target id="haxe">
    <lib name="-lgvc"/>
    <lib name="-lcgraph"/>
</target>
')
@:include("lib/Wrappers.h")
@:native("GraphWrapper")
@:structAccess
extern class GraphWrapper {
    private extern function new();

    public static extern function fromString(graphstring:String):Star<GraphWrapper>;
    public static extern function fromFile(filepath:String):Star<GraphWrapper>;
    public static extern function create(name:String, type:String):Star<GraphWrapper>;
	
    public extern function createSubgraph(name:String):Star<SubgraphWrapper>;
    public extern function createNode(name:String):Star<NodeWrapper>;
    public extern function createEdge(nodeA:NodeWrapper, nodeB:NodeWrapper, name:String):Star<EdgeWrapper>;

    public extern function setAttribute(att:String, val:String):Void;

    public extern function render(layoutengine:String, format:String):String;
    public extern function free():Void;
}
#end