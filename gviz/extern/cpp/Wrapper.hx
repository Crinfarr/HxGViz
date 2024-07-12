package gviz.extern.cpp;

#if (cpp||bin)
@:native("wrapper")
@:include("../../include/lib/wrapper.h")
extern class Wrapper {
    public extern function new();
}
#end