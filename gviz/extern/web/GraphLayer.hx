package gviz.extern.web;
#if (js || web)
import gviz.extern.web.Types;
import gviz.internal.Enums.GraphType;

abstract GraphLayer(Types.Graph) from Types.Graph to Types.Graph {
    public function new(type:GraphType) {
    }
}
#end