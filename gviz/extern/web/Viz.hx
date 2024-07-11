package gviz.extern.web;

import js.html.svg.SVGElement;
import gviz.extern.web.Types.RenderOptions;
import gviz.extern.web.Types.RenderResult;
import haxe.extern.EitherType;
import js.lib.Promise;
import gviz.extern.web.Types.Graph;

#if (js || web)
extern class Viz {
    function instance():Promise<Viz>;
    
    static final formats:Array<String>;
    static final engines:Array<String>;
    static final graphvizVersion:String;

    @:deprecated final formats:Array<String>;
    @:deprecated final engines:Array<String>;
    @:deprecated final graphvizVersion:String;

    public function render(input:EitherType<String, Graph>, options:RenderOptions):RenderResult;
    public function renderString(input:EitherType<String, Graph>, options:RenderOptions):String;
    public function renderSVGElement(input:EitherType<String, Graph>, options:RenderOptions):SVGElement;
    public function renderJSON(input:EitherType<String, Graph>, options:RenderOptions):{};
}
#end