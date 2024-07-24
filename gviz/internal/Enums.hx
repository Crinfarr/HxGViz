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
    //TODO
}
private enum AspectRatioType {
    XByX(xdim:Int, ydim:Int);
    Fill;
    Auto;
}
private enum NodeShape {
    Ellipse;
    Polygon(sides:Int);
    //TODO
}
private enum EdgePortPosition {
	Center;
	Left;
	Right;
	Top;
	Bottom;
    //TODO
}
private enum GVColorType {
    ByName(name:String); //TODO
    ByHex(hex:String);
    ByRGB(r:Int, g:Int, b:Int);
}
private enum GVOverlayRange {
    All;
    ByID(id:String);
    IDRange(startID:String, endID:String);
}
private enum GVStyleOptionsType {
    Bold;
    Dotted;
    Filled;
    //TODO
}
private enum EdgeArrowheadType {
    Normal;
    //TODO
}
private enum EdgeArrowtailType {
	Normal;
	// TODO
}
private enum EdgeDirectionType {
    Forward;
    Back;
    Both;
    None;
}
private enum GVCharsetType {
    UTF8;
    //TODO
}
private enum GVAlignmentType {
    Left;
    Right;
    Centered;
}
private enum GraphLabelLocation {
    Top;
    Bottom;
}
private enum GraphOutputOrderType {
    Breadthfirst;
    //TODO
}
private enum GraphPageDirectionType {
    BL;
    //TODO
}
/**
 * On page 16 of https://www.graphviz.org/pdf/libguide.pdf
 */

enum GraphAttribute {
    //Geometric options
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
    //Decorative options
    Bgcolor(color:GVColorType);
    Charset(set:GVCharsetType);
    Ffontcolor(color:GVColorType);
    Labeljust(align:GVAlignmentType);
    Labelloc(align:GraphLabelLocation);
    Layers(names:Array<String>);
    @:deprecated Layersep(separator:String);//Internally used, changing this will probably break everything
    Nojustify(enable:Bool);
    Outputorder(order:GraphOutputOrderType);
    Pagedir(order:GraphPageDirectionType);
    Samplepoints(amt:Int);
    Stylesheet(xml:String);//advanced topic
    Truecolor(model:String);//I don't know how to use this
}
enum NodeAttribute {
    //Geometric options
    Distortion(amt:Float);
    FixedSize(on:Bool);
    Fontname(name:String);
    Fontsize(size:Int);
    Group(name:String);
    Height(amt:Float);
    Label(text:String);
    Margin(xamt:Float, yamt:Float);
    Orientation(angle:Float);
    @:deprecated Peripheries(num:Int);//not sure how this works
    Pin(on:Bool);
    Regular(state:Bool);
    Root(on:Bool);
    Shape(shape:NodeShape);
    Shapefile(path:String);
	@:deprecated Sides(polysides:Int); // Use Shape(Polygon(sides))
    Skew(amt:Float);
    Width(inches:Float);
    Z(zcoordinate:Float);
    //Decorative options
    Color(color:GVColorType);
    Fillcolor(color:GVColorType);
    Fontcolor(color:GVColorType);
    Layer(overlaytype:GVOverlayRange);
    Nojustify(enable:Bool);
    Style(type:Array<GVStyleOptionsType>);
}
enum EdgeAttribute {
    //Geometric options
    Constraint(enable:Bool);
    Fontname(name:String);
    Fontsize(size:Int);
    Headclip(enable:Bool);
    Headport(type:EdgePortPosition);
    Label(text:String);
    Len(x:Float, y:Float);
    Lhead(cluster:String);
    Ltail(cluster:String);
    Minlen(length:Int);
    Samehead(tag:String);
    Sametail(tag:String);
    Tailclip(enable:Bool);
    Tailport(type:EdgePortPosition);
    Weight(importance:Int);
    //Decorative options
    Arrowhead(type:EdgeArrowheadType);
    Arrowsize(scale:Float);
    Arrowtail(type:EdgeArrowtailType);
    Color(color:GVColorType);
    Decorate(enable:Bool);
    Dir(direction:EdgeDirectionType);
    Fontcolor(color:GVColorType);
    Headlabel(text:String);
    Labelangle(degrees:Float);
    Labeldistance(scale:Float);
    Labelfloat(enable:Bool);
    Labelfontcolor(color:GVColorType);
    Labelfontname(name:String);
    Labelfontsize(pts:Int);
    Layer(overlay:GVOverlayRange);
    Nojustify(enable:Bool);
    Style(type:Array<GVStyleOptionsType>);
    Taillabel(text:String);
}