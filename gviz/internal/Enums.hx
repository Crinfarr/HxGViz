package gviz.internal;

import gviz.extern.cpp.NodeWrapper;

enum GraphType {
	Undirected(strict:Bool);
	Directed(strict:Bool);
}

private enum ClusterRank {
    Local;
    Global;
    None;
}
private enum EdgeOrderingType {
    Out;
    In;
}
private enum OrientationType {
    Portrait;
    Landscape;
}
private enum RankType {
    Same;
    Min;
    Max;
    Source;
    Sink;
}
private enum RankDirType {
    TB;
    LR;
}
private enum AspectRatioType {
    XByX(xdim:Int, ydim:Int);
    Fill;
    Auto;
}

enum GraphAttribute {
    Center(on:Bool);
    ClusterRank(rank:ClusterRank);
    Compound(on:Bool);
    Concentrate(on:Bool);
    DefaultDist(amt:Float);
    Dim(val:Int);
    Dpi(val:String);
    Epsilon(val:Float);
    Fontname(name:String);
    Fontpath(path:String);
    Fontsize(pts:Int);
    Label(text:String);
    Margin(val:Int);
    MaxIter(num:Float);
    MCLimit(num:Float);
    MinDist(distance:Float);
    Mode(modename:String);
    Model(modelname:String);
    NodeSep(amount:Float);
    @:deprecated NSLimit;//DONT USE REQUIRES INTERNAL FUNCTION VALUES I CAN'T IMPLEMENT
    Ordering(type:EdgeOrderingType);
    Orientation(type:OrientationType);
    Overlap(on:Bool);
    @:deprecated Pack;//DONT USE I HAVE NO IDEA WHAT THIS DOES
    @:deprecated PackMode;//DONT USE I DONT KNOW WHATS VALID TO SET HERE
    Pagination(xsize:Float, ysize:Float);
    Quantum(multiplier:Float);
    Rank(type:RankType);
    RankDir(dir:RankDirType);
    RankSep(inches:Float);
    Ratio(type:AspectRatioType);
    RemInCross(on:Bool);
    Resolution(val:String);
	// TODO global node type
    #if (cpp || bin)
    Root(rootnode:NodeWrapper);
    #elseif (js || web)
    Root(rootnode:Node);
    #end
    Rotate(degrees:Float);
    SearchSize(size:Float);
    Sep(factor:Float);
    Size(max:Float);
    @:deprecated Splines(on:Bool);//DONT USE I HAVE NO IDEA IF THIS IS THE RIGHT DATA TYPE
    @:deprecated Start;//DONT USE I DONT KNOW ANY VALUES THIS CAN TAKE
    VoroMargin(factor:Float);
    Viewport(windowXS:Float, windowXE:Float, windowYS:Float, windowYE:Float);
}