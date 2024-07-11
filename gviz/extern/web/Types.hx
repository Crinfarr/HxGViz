package gviz.extern.web;

import haxe.extern.EitherType;

typedef RenderOptions = {

    format:Null<String>,
    engine:Null<String>,
    yInvert:Null<Bool>,
    reduce:Null<Bool>,
    graphAttributes:Null<Attributes>,
    nodeAttributes:Null<Attributes>,
    edgeAttributes:Null<Attributes>,
    images:Null<Array<ImageSize>>
}

typedef RenderResult = haxe.extern.EitherType<SuccessResult, FailureResult>;
typedef SuccessResult = {
    /**
     * ALWAYS "success"
     */
    status:String,
    output:String,
    errors:Array<RenderError>
}
typedef FailureResult = {
    /**
     * ALWAYS "failure"
     */
    status:String,
    errors:Array<RenderError>

}
typedef RenderError = {
    /**
     * "error" or "warning"
     */
    level:String,
    message:String
}
typedef Graph = {
	name:Null<String>,
	strict:Null<Bool>,
    directed:Null<Bool>,
    graphAttributes:Null<Attributes>,
	nodeAttributes:Null<Attributes>,
	edgeAttributes:Null<Attributes>,
    nodes:Null<Array<Node>>,
    edges:Null<Array<Edge>>,
    subgraphs:Null<Array<Subgraph>>
}
typedef Attributes = Map<String,
    EitherType<
        EitherType<String, Float>,
        EitherType<Bool, HTMLString>
    >
>;
typedef Node = {
    name:String,
    attributes:Null<Attributes>
}
typedef Edge = {
    tail:String,
    head:String,
    attributes:Null<Attributes>
}
typedef Subgraph = {
	name:Null<String>,
	graphAttributes:Null<Attributes>,
	nodeAttributes:Null<Attributes>,
	edgeAttributes:Null<Attributes>,
	nodes:Null<Array<Node>>,
	edges:Null<Array<Edge>>,
	subgraphs:Null<Array<Subgraph>>
}
typedef ImageSize = {
    name:String,
    width:EitherType<String, Float>,
    height:EitherType<String, Float>
}
typedef HTMLString = {
    html:String
}
