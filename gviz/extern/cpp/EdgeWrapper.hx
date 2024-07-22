package gviz.extern.cpp;

@:buildXml('
<files id="haxe">
    <file name="${haxelib:hxgviz}/include/lib/EdgeWrapper.cpp">
        <depend name="${haxelib:hxgviz}/include/lib/Wrappers.h"/>
    </file>
</files>
')
@:include("lib/EdgeWrapper.h")
@:native("EdgeWrapper")
extern class EdgeWrapper {
    public extern function setAttr(att:String, val:String):Void;
}