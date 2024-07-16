package gviz.extern.cpp;

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
}