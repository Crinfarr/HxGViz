package gviz.extern.cpp;

#if (cpp||bin)
@:native("wrapper")
@:buildXml('
<files id="haxe">
    <compilerflag value="-I${haxelib:hxgviz}/include"/>
    <file name="${haxelib:hxgviz}/include/lib/wrapper.cpp">
        <depend name="${haxelib:hxgviz}/include/lib/wrapper.h"/>
    </file>
</files>
<target id="haxe">
    <lib name="-lgvc"/>
    <lib name="-lcgraph"/>
</target>
')
@:include("lib/wrapper.h")
@:structAccess
extern class Wrapper {
    private extern function new();

    public static extern function fromString(graphstring:String):Wrapper;
    public static extern function fromFile(filepath:String):Wrapper;
    public static extern function create(name:String, type:String):Wrapper;
	public extern overload function render():String;
	public extern overload function render(layoutengine:String):String;
	public extern overload function render(layoutengine:String, format:String):String;
    public extern function free():Void;
}
#end