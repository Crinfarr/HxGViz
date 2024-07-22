package gviz.extern.cpp;

import cpp.Star;

@:buildXml('
<files id="haxe">
    <file name="${haxelib:hxgviz}/include/lib/SubgraphWrapper.cpp">
        <depend name="${haxelib:hxgviz}/include/lib/Wrappers.h"/>
    </file>
</files>
')
@:include("lib/SubgraphWrapper.h")
@:native("SubgraphWrapper")
extern class SubgraphWrapper {
    public extern function createSubgraph(name:String):Star<SubgraphWrapper>;
    public extern function setAttr(att:String, val:String):Void;
}