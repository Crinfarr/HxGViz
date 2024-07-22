package gviz.extern.cpp;

import cpp.Star;
import gviz.extern.cpp.EdgeWrapper;

@:buildXml('
<files id="haxe">
    <file name="${haxelib:hxgviz}/include/lib/NodeWrapper.cpp">
        <depend name="${haxelib:hxgviz}/include/lib/Wrappers.h"/>
    </file>
</files>
')
@:include("lib/NodeWrapper.h")
@:native("NodeWrapper")
extern class NodeWrapper {
    public extern function connectNode(target:NodeWrapper, name:String):Star<EdgeWrapper>;
    public extern function setAttr(att:String, val:String):Void;
}