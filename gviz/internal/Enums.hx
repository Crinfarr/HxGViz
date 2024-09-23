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
	Tb;
	Lr;
	Bt;
	Rl;
}

private enum AspectRatioType {
	XByX(xdim:Int, ydim:Int);
	Fill;
	Auto;
}

private enum NodeShape {
	Ellipse;
	Polygon(sides:Int, skew:Float, distortion:Float);
	Oval;
	Circle;
	Point;
	Egg;
	Triangle;
	Plaintext;
	Plain;
	Diamond;
	Trapezium;
	Parallelogram;
	House;
	Pentagon;
	Hexagon;
	Septagon;
	Octagon;
	DoubleCircle;
	DoubleOctagon;
	TripleOctagon;
	InvTriangle;
	InvTrapezium;
	InvHouse;
	MDiamond;
	MSquare;
	MCircle;
	Rect;
	Rectangle;
	Box;
	Square;
	Star;
	None;
	Underline;
	Cylinder;
	Note;
	Tab;
	Folder;
	Box3d;
	Component;
	Promoter;
	Cds;
	Terminator;
	Utr;
	PrimerSite;
	RestrictionSite;
	FivePOverhang;
	ThreePOverhang;
	NOverhang;
	Assembly;
	Signature;
	Insulator;
	RiboSite;
	RNAStab;
	ProteaseSite;
	ProteinStab;
	RPromoter;
	RArrow;
	LArrow;
	LPromoter;
}

private enum EdgePortPosition {
	North;
	NorthEast;
	East;
	SouthEast;
	South;
	SouthWest;
	West;
	NorthWest;
	Center;
	Auto;
}

private enum GVColorType {
	ByName(name:X11Color);
	ByHex(hex:String);
	ByRGB(r:Int, g:Int, b:Int);
}

private enum X11Color {
	Snow;
	GhostWhite;
	WhiteSmoke;
	Gainsboro;
	FloralWhite;
	OldLace;
	Linen;
	AntiqueWhite;
	PapayaWhip;
	BlanchedAlmond;
	Bisque;
	PeachPuff;
	NavajoWhite;
	Moccasin;
	Cornsilk;
	Ivory;
	LemonChiffon;
	Seashell;
	Honeydew;
	MintCream;
	Azure;
	AliceBlue;
	Lavender;
	LavenderBlush;
	MistyRose;
	White;
	Black;
	DarkSlateGray;
	DarkSlateGrey;
	DimGray;
	DimGrey;
	SlateGray;
	SlateGrey;
	LightSlateGray;
	LightSlateGrey;
	Gray;
	Grey;
	LightGrey;
	LightGray;
	MidnightBlue;
	Navy;
	NavyBlue;
	CornflowerBlue;
	DarkSlateBlue;
	SlateBlue;
	MediumSlateBlue;
	LightSlateBlue;
	MediumBlue;
	RoyalBlue;
	Blue;
	DodgerBlue;
	DeepSkyBlue;
	SkyBlue;
	LightSkyBlue;
	SteelBlue;
	LightSteelBlue;
	LightBlue;
	PowderBlue;
	PaleTurquoise;
	DarkTurquoise;
	MediumTurquoise;
	Turquoise;
	Cyan;
	LightCyan;
	CadetBlue;
	MediumAquamarine;
	Aquamarine;
	DarkGreen;
	DarkOliveGreen;
	DarkSeaGreen;
	SeaGreen;
	MediumSeaGreen;
	LightSeaGreen;
	PaleGreen;
	SpringGreen;
	LawnGreen;
	Green;
	Chartreuse;
	MediumSpringGreen;
	GreenYellow;
	LimeGreen;
	YellowGreen;
	ForestGreen;
	OliveDrab;
	DarkKhaki;
	Khaki;
	PaleGoldenrod;
	LightGoldenrodYellow;
	LightYellow;
	Yellow;
	Gold;
	LightGoldenrod;
	Goldenrod;
	DarkGoldenrod;
	RosyBrown;
	IndianRed;
	SaddleBrown;
	Sienna;
	Peru;
	Burlywood;
	Beige;
	Wheat;
	SandyBrown;
	Tan;
	Chocolate;
	Firebrick;
	Brown;
	DarkSalmon;
	Salmon;
	LightSalmon;
	Orange;
	DarkOrange;
	Coral;
	LightCoral;
	Tomato;
	OrangeRed;
	Red;
	HotPink;
	DeepPink;
	Pink;
	LightPink;
	PaleVioletRed;
	Maroon;
	MediumVioletRed;
	VioletRed;
	Magenta;
	Violet;
	Plum;
	Orchid;
	MediumOrchid;
	DarkOrchid;
	DarkViolet;
	BlueViolet;
	Purple;
	MediumPurple;
	Thistle;
	Snow1;
	Snow2;
	Snow3;
	Snow4;
	Seashell1;
	Seashell2;
	Seashell3;
	Seashell4;
	AntiqueWhite1;
	AntiqueWhite2;
	AntiqueWhite3;
	AntiqueWhite4;
	Bisque1;
	Bisque2;
	Bisque3;
	Bisque4;
	PeachPuff1;
	PeachPuff2;
	PeachPuff3;
	PeachPuff4;
	NavajoWhite1;
	NavajoWhite2;
	NavajoWhite3;
	NavajoWhite4;
	LemonChiffon1;
	LemonChiffon2;
	LemonChiffon3;
	LemonChiffon4;
	Cornsilk1;
	Cornsilk2;
	Cornsilk3;
	Cornsilk4;
	Ivory1;
	Ivory2;
	Ivory3;
	Ivory4;
	Honeydew1;
	Honeydew2;
	Honeydew3;
	Honeydew4;
	LavenderBlush1;
	LavenderBlush2;
	LavenderBlush3;
	LavenderBlush4;
	MistyRose1;
	MistyRose2;
	MistyRose3;
	MistyRose4;
	Azure1;
	Azure2;
	Azure3;
	Azure4;
	SlateBlue1;
	SlateBlue2;
	SlateBlue3;
	SlateBlue4;
	RoyalBlue1;
	RoyalBlue2;
	RoyalBlue3;
	RoyalBlue4;
	Blue1;
	Blue2;
	Blue3;
	Blue4;
	DodgerBlue1;
	DodgerBlue2;
	DodgerBlue3;
	DodgerBlue4;
	SteelBlue1;
	SteelBlue2;
	SteelBlue3;
	SteelBlue4;
	DeepSkyBlue1;
	DeepSkyBlue2;
	DeepSkyBlue3;
	DeepSkyBlue4;
	SkyBlue1;
	SkyBlue2;
	SkyBlue3;
	SkyBlue4;
	LightSkyBlue1;
	LightSkyBlue2;
	LightSkyBlue3;
	LightSkyBlue4;
	SlateGray1;
	SlateGray2;
	SlateGray3;
	SlateGray4;
	LightSteelBlue1;
	LightSteelBlue2;
	LightSteelBlue3;
	LightSteelBlue4;
	LightBlue1;
	LightBlue2;
	LightBlue3;
	LightBlue4;
	LightCyan1;
	LightCyan2;
	LightCyan3;
	LightCyan4;
	PaleTurquoise1;
	PaleTurquoise2;
	PaleTurquoise3;
	PaleTurquoise4;
	CadetBlue1;
	CadetBlue2;
	CadetBlue3;
	CadetBlue4;
	Turquoise1;
	Turquoise2;
	Turquoise3;
	Turquoise4;
	Cyan1;
	Cyan2;
	Cyan3;
	Cyan4;
	DarkSlateGray1;
	DarkSlateGray2;
	DarkSlateGray3;
	DarkSlateGray4;
	Aquamarine1;
	Aquamarine2;
	Aquamarine3;
	Aquamarine4;
	DarkSeaGreen1;
	DarkSeaGreen2;
	DarkSeaGreen3;
	DarkSeaGreen4;
	SeaGreen1;
	SeaGreen2;
	SeaGreen3;
	SeaGreen4;
	PaleGreen1;
	PaleGreen2;
	PaleGreen3;
	PaleGreen4;
	SpringGreen1;
	SpringGreen2;
	SpringGreen3;
	SpringGreen4;
	Green1;
	Green2;
	Green3;
	Green4;
	Chartreuse1;
	Chartreuse2;
	Chartreuse3;
	Chartreuse4;
	OliveDrab1;
	OliveDrab2;
	OliveDrab3;
	OliveDrab4;
	DarkOliveGreen1;
	DarkOliveGreen2;
	DarkOliveGreen3;
	DarkOliveGreen4;
	Khaki1;
	Khaki2;
	Khaki3;
	Khaki4;
	LightGoldenrod1;
	LightGoldenrod2;
	LightGoldenrod3;
	LightGoldenrod4;
	LightYellow1;
	LightYellow2;
	LightYellow3;
	LightYellow4;
	Yellow1;
	Yellow2;
	Yellow3;
	Yellow4;
	Gold1;
	Gold2;
	Gold3;
	Gold4;
	Goldenrod1;
	Goldenrod2;
	Goldenrod3;
	Goldenrod4;
	DarkGoldenrod1;
	DarkGoldenrod2;
	DarkGoldenrod3;
	DarkGoldenrod4;
	RosyBrown1;
	RosyBrown2;
	RosyBrown3;
	RosyBrown4;
	IndianRed1;
	IndianRed2;
	IndianRed3;
	IndianRed4;
	Sienna1;
	Sienna2;
	Sienna3;
	Sienna4;
	Burlywood1;
	Burlywood2;
	Burlywood3;
	Burlywood4;
	Wheat1;
	Wheat2;
	Wheat3;
	Wheat4;
	Tan1;
	Tan2;
	Tan3;
	Tan4;
	Chocolate1;
	Chocolate2;
	Chocolate3;
	Chocolate4;
	Firebrick1;
	Firebrick2;
	Firebrick3;
	Firebrick4;
	Brown1;
	Brown2;
	Brown3;
	Brown4;
	Salmon1;
	Salmon2;
	Salmon3;
	Salmon4;
	LightSalmon1;
	LightSalmon2;
	LightSalmon3;
	LightSalmon4;
	Orange1;
	Orange2;
	Orange3;
	Orange4;
	DarkOrange1;
	DarkOrange2;
	DarkOrange3;
	DarkOrange4;
	Coral1;
	Coral2;
	Coral3;
	Coral4;
	Tomato1;
	Tomato2;
	Tomato3;
	Tomato4;
	OrangeRed1;
	OrangeRed2;
	OrangeRed3;
	OrangeRed4;
	Red1;
	Red2;
	Red3;
	Red4;
	DebianRed;
	DeepPink1;
	DeepPink2;
	DeepPink3;
	DeepPink4;
	HotPink1;
	HotPink2;
	HotPink3;
	HotPink4;
	Pink1;
	Pink2;
	Pink3;
	Pink4;
	LightPink1;
	LightPink2;
	LightPink3;
	LightPink4;
	PaleVioletRed1;
	PaleVioletRed2;
	PaleVioletRed3;
	PaleVioletRed4;
	Maroon1;
	Maroon2;
	Maroon3;
	Maroon4;
	VioletRed1;
	VioletRed2;
	VioletRed3;
	VioletRed4;
	Magenta1;
	Magenta2;
	Magenta3;
	Magenta4;
	Orchid1;
	Orchid2;
	Orchid3;
	Orchid4;
	Plum1;
	Plum2;
	Plum3;
	Plum4;
	MediumOrchid1;
	MediumOrchid2;
	MediumOrchid3;
	MediumOrchid4;
	DarkOrchid1;
	DarkOrchid2;
	DarkOrchid3;
	DarkOrchid4;
	Purple1;
	Purple2;
	Purple3;
	Purple4;
	MediumPurple1;
	MediumPurple2;
	MediumPurple3;
	MediumPurple4;
	Thistle1;
	Thistle2;
	Thistle3;
	Thistle4;
	Gray0;
	Grey0;
	Gray1;
	Grey1;
	Gray2;
	Grey2;
	Gray3;
	Grey3;
	Gray4;
	Grey4;
	Gray5;
	Grey5;
	Gray6;
	Grey6;
	Gray7;
	Grey7;
	Gray8;
	Grey8;
	Gray9;
	Grey9;
	Gray10;
	Grey10;
	Gray11;
	Grey11;
	Gray12;
	Grey12;
	Gray13;
	Grey13;
	Gray14;
	Grey14;
	Gray15;
	Grey15;
	Gray16;
	Grey16;
	Gray17;
	Grey17;
	Gray18;
	Grey18;
	Gray19;
	Grey19;
	Gray20;
	Grey20;
	Gray21;
	Grey21;
	Gray22;
	Grey22;
	Gray23;
	Grey23;
	Gray24;
	Grey24;
	Gray25;
	Grey25;
	Gray26;
	Grey26;
	Gray27;
	Grey27;
	Gray28;
	Grey28;
	Gray29;
	Grey29;
	Gray30;
	Grey30;
	Gray31;
	Grey31;
	Gray32;
	Grey32;
	Gray33;
	Grey33;
	Gray34;
	Grey34;
	Gray35;
	Grey35;
	Gray36;
	Grey36;
	Gray37;
	Grey37;
	Gray38;
	Grey38;
	Gray39;
	Grey39;
	Gray40;
	Grey40;
	Gray41;
	Grey41;
	Gray42;
	Grey42;
	Gray43;
	Grey43;
	Gray44;
	Grey44;
	Gray45;
	Grey45;
	Gray46;
	Grey46;
	Gray47;
	Grey47;
	Gray48;
	Grey48;
	Gray49;
	Grey49;
	Gray50;
	Grey50;
	Gray51;
	Grey51;
	Gray52;
	Grey52;
	Gray53;
	Grey53;
	Gray54;
	Grey54;
	Gray55;
	Grey55;
	Gray56;
	Grey56;
	Gray57;
	Grey57;
	Gray58;
	Grey58;
	Gray59;
	Grey59;
	Gray60;
	Grey60;
	Gray61;
	Grey61;
	Gray62;
	Grey62;
	Gray63;
	Grey63;
	Gray64;
	Grey64;
	Gray65;
	Grey65;
	Gray66;
	Grey66;
	Gray67;
	Grey67;
	Gray68;
	Grey68;
	Gray69;
	Grey69;
	Gray70;
	Grey70;
	Gray71;
	Grey71;
	Gray72;
	Grey72;
	Gray73;
	Grey73;
	Gray74;
	Grey74;
	Gray75;
	Grey75;
	Gray76;
	Grey76;
	Gray77;
	Grey77;
	Gray78;
	Grey78;
	Gray79;
	Grey79;
	Gray80;
	Grey80;
	Gray81;
	Grey81;
	Gray82;
	Grey82;
	Gray83;
	Grey83;
	Gray84;
	Grey84;
	Gray85;
	Grey85;
	Gray86;
	Grey86;
	Gray87;
	Grey87;
	Gray88;
	Grey88;
	Gray89;
	Grey89;
	Gray90;
	Grey90;
	Gray91;
	Grey91;
	Gray92;
	Grey92;
	Gray93;
	Grey93;
	Gray94;
	Grey94;
	Gray95;
	Grey95;
	Gray96;
	Grey96;
	Gray97;
	Grey97;
	Gray98;
	Grey98;
	Gray99;
	Grey99;
	Gray100;
	Grey100;
	DarkGrey;
	DarkGray;
	DarkBlue;
	DarkCyan;
	DarkMagenta;
	DarkRed;
	LightGreen;
}

private enum GVOverlayRange {
	/**
	 * Applies to all elements in the graph
	 */
	All;

	/**
	 * Applies to a specific element identified by its ID
	 */
	ByID(id:String);

	/**
	 * Applies to a range of elements between two specified IDs
	 */
	IDRange(startID:String, endID:String);
}

@:allow(gviz.internal.Node)
private enum GVStyleOptionsType {
	/**
	 * Renders the element with a dashed line style
	 */
	Dashed;

	/**
	 * Renders the element with a dotted line style
	 */
	Dotted;

	/**
	 * Renders the element with a solid line style
	 */
	Solid;

	/**
	 * Makes the element invisible
	 */
	Invis;

	/**
	 * Renders the element with a bold line style
	 */
	Bold;

	/**
	 * Edges only: Renders the edge with a tapered style
	 */
	Tapered;

	/**
	 * Nodes only: Adds diagonal lines to the node shape
	 */
	Diagonals;

	/**
	 * Clusters and Nodes: Applies rounded corners to the shape
	 */
	Rounded;

	/**
	 * Fills the shape with the specified fill color
	 */
	Filled;

	/**
	 * Nodes, Clusters, and Graphs: Applies a radial gradient fill
	 */
	Radial;

	/**
	 * Clusters/Rectangles only: Applies a striped fill pattern
	 */
	Striped;

	/**
	 * Elliptical nodes only: Divides the node into wedge-shaped sections
	 */
	Wedged;
}

private enum EdgeArrowType {
	Normal;
	Inv;
	Dot;
	InvDot;
	ODot;
	InvODot;
	None;
	Tee;
	Empty;
	InvEmpty;
	Diamond;
	ODiamond;
	EDiamond;
	Crow;
	Box;
	OBox;
	Open;
	HalfOpen;
	Vee;
}

private enum EdgeDirectionType {
	Forward;
	Back;
	Both;
	None;
}

private enum GVCharsetType {
	Utf8;
	Latin1;
	Big5;
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
	BreadthFirst;
	NodesFirst;
	EdgesFirst;
}

private enum GraphPageDirectionType {
	Bl;
	Br;
	Tl;
	Tr;
	Rb;
	Rt;
	Lb;
	Lt;
}

enum GraphAttribute {
	/**
	 * Geometric options
	 */
	/**
	 * Centers the drawing on the page
	 */
	Center(on:Bool);

	/**
	 * Specifies how to rank nodes in the same cluster
	 */
	ClusterRank(rank:ClusterRank);

	/**
	 * Allows edges between clusters
	 */
	Compound(on:Bool);

	/**
	 * Enables edge concentrators for reducing clutter
	 */
	Concentrate(on:Bool);

	/**
	 * Sets the default separation between nodes
	 */
	DefaultDist(amt:Float);

	/**
	 * Sets the number of dimensions for the layout
	 */
	Dim(val:Int);

	/**
	 * Sets the resolution of the output in dots per inch
	 */
	Dpi(val:String);

	/**
	 * Sets the error tolerance for the layout algorithm
	 */
	Epsilon(val:Float);

	/**
	 * Sets the default font name for the graph
	 */
	Fontname(name:String);

	/**
	 * Specifies the directory to search for fonts
	 */
	Fontpath(path:String);

	/**
	 * Sets the default font size for the graph
	 */
	Fontsize(pts:Int);

	/**
	 * Sets the label for the entire graph
	 */
	Label(text:String);

	/**
	 * Sets the page margin (in points)
	 */
	Margin(val:Int);

	/**
	 * Sets the maximum number of iterations in the layout algorithm
	 */
	MaxIter(num:Float);

	/**
	 * Sets the maximum cycle count for the mincross algorithm
	 */
	MCLimit(num:Float);

	/**
	 * Sets the minimum separation between all nodes
	 */
	MinDist(distance:Float);

	/**
	 * Sets the graph layout mode
	 */
	Mode(modename:String);

	/**
	 * Sets the graph layout model
	 */
	Model(modelname:String);

	/**
	 * Sets the minimum space between two adjacent nodes in the same rank
	 */
	NodeSep(amount:Float);

	/**
	 * Deprecated attribute, do not use
	 */
	@:deprecated NSLimit;

	/**
	 * Sets the order in which edges are arranged
	 */
	Ordering(type:EdgeOrderingType);

	/**
	 * Sets the graph orientation
	 */
	Orientation(type:OrientationType);

	/**
	 * Controls node overlap removal
	 */
	Overlap(on:Bool);

	/**
	 * Deprecated attribute, do not use
	 */
	@:deprecated Pack;

	/**
	 * Deprecated attribute, do not use
	 */
	@:deprecated PackMode;

	/**
	 * Sets the number of pages to spread the graph over
	 */
	Pagination(xsize:Float, ysize:Float);

	/**
	 * Sets the node label resolution
	 */
	Quantum(multiplier:Float);

	/**
	 * Sets the type of rank assignment
	 */
	Rank(type:RankType);

	/**
	 * Sets the direction of rank assignment in the graph
	 */
	RankDir(dir:RankDirType);

	/**
	 * Sets the minimum vertical space between ranks
	 */
	RankSep(inches:Float);

	/**
	 * Sets the aspect ratio for the drawing
	 */
	Ratio(type:AspectRatioType);

	/**
	 * Removes edge crossings
	 */
	RemInCross(on:Bool);

	/**
	 * Sets the resolution of the layout
	 */
	Resolution(val:String);

	/**
	 * Sets the root node of the graph (platform-specific)
	 */
	#if (cpp || bin)
	Root(rootnode:NodeWrapper);
	#elseif (js || web)
	Root(rootnode:Node);
	#end

	/**
	 * Sets the rotation angle of the final layout
	 */
	Rotate(degrees:Float);

	/**
	 * Sets the maximum number of nodes to look at during crossing minimization
	 */
	SearchSize(size:Float);

	/**
	 * Sets the margin to use when packing graphs
	 */
	Sep(factor:Float);

	/**
	 * Sets the maximum size of the drawing
	 */
	Size(max:Float);

	/**
	 * Deprecated attribute, do not use
	 */
	@:deprecated Splines(on:Bool);

	/**
	 * Deprecated attribute, do not use
	 */
	@:deprecated Start;

	/**
	 * Sets the Voronoi diagram margin factor
	 */
	VoroMargin(factor:Float);

	/**
	 * Sets the clipping window for the graph
	 */
	Viewport(windowXS:Float, windowXE:Float, windowYS:Float, windowYE:Float);

	/**
	 * Decorative options
	 */
	/**
	 * Sets the background color of the graph
	 */
	Bgcolor(color:GVColorType);

	/**
	 * Sets the character encoding used for text
	 */
	Charset(set:GVCharsetType);

	/**
	 * Sets the font color for html-like labels
	 */
	Ffontcolor(color:GVColorType);

	/**
	 * Sets the justification for graph labels
	 */
	Labeljust(align:GVAlignmentType);

	/**
	 * Sets the vertical placement of graph labels
	 */
	Labelloc(align:GraphLabelLocation);

	/**
	 * Specifies a list of layer names for the graph
	 */
	Layers(names:Array<String>);

	/**
	 * Deprecated attribute, internally used
	 */
	@:deprecated Layersep(separator:String);

	/**
	 * Controls whether labels should be justified
	 */
	Nojustify(enable:Bool);

	/**
	 * Sets the order in which the graph is drawn
	 */
	Outputorder(order:GraphOutputOrderType);

	/**
	 * Sets the traversal order of pages
	 */
	Pagedir(order:GraphPageDirectionType);

	/**
	 * Sets the number of points used to represent circles and ellipses
	 */
	Samplepoints(amt:Int);

	/**
	 * Specifies a stylesheet for the graph (advanced topic)
	 */
	Stylesheet(xml:String);

	/**
	 * Sets the color model (usage unclear)
	 */
	Truecolor(model:String);
}

enum NodeAttribute {
	/**
	 * Geometric options
	 */
	/**
	 * Sets the amount of distortion for the node shape
	 */
	Distortion(amt:Float);

	/**
	 * Determines if the node size is fixed or can be adjusted
	 */
	FixedSize(on:Bool);

	/**
	 * Sets the font name for the node label
	 */
	Fontname(name:String);

	/**
	 * Sets the font size for the node label
	 */
	Fontsize(size:Int);

	/**
	 * Assigns the node to a named group for layout purposes
	 */
	Group(name:String);

	/**
	 * Sets the height of the node
	 */
	Height(amt:Float);

	/**
	 * Sets the text label for the node
	 */
	Label(text:String);

	/**
	 * Sets the margin space around the node's label
	 */
	Margin(xamt:Float, yamt:Float);

	/**
	 * Sets the rotation angle of the node
	 */
	Orientation(angle:Float);

	/**
	 * Sets the number of node outlines (deprecated)
	 */
	/**
	 * eprecated Peripheries(num:Int); // not sure how this works
	 */
	/**
	 * Fixes the node's position during layout
	 */
	Pin(on:Bool);

	/**
	 * Makes polygonal nodes appear more regular/symmetric
	 */
	Regular(state:Bool);

	/**
	 * Specifies if the node should be treated as a root in directed graphs
	 */
	Root(on:Bool);

	/**
	 * Sets the shape of the node
	 */
	Shape(shape:NodeShape);

	/**
	 * Specifies a custom shape file for the node
	 */
	Shapefile(path:String);

	/**
	 * Sets the number of sides for polygonal shapes (Use Shape(Polygon(sides)) instead)
	 */
	Sides(polysides:Int);

	/**
	 * Sets the skew amount for the node shape
	 */
	Skew(amt:Float);

	/**
	 * Sets the width of the node
	 */
	Width(inches:Float);

	/**
	 * Sets the z-coordinate for 3D layouts
	 */
	Z(zcoordinate:Float);

	/**
	 * Decorative options
	 */
	/**
	 * Sets the color of the node's outline
	 */
	Color(color:GVColorType);

	/**
	 * Sets the fill color of the node
	 */
	FillColor(color:GVColorType);

	/**
	 * Sets the font color for the node label
	 */
	FontColor(color:GVColorType);

	/**
	 * Specifies the overlay layer for the node
	 */
	Layer(overlaytype:GVOverlayRange);

	/**
	 * Controls whether node labels should be justified
	 */
	Nojustify(enable:Bool);

	/**
	 * Sets the style options for the node
	 */
	Style(type:Array<GVStyleOptionsType>);
}

enum EdgeAttribute {
	/**
	 * Geometric options
	 */
	/**
	 * Determines if the edge should be used for layout constraints
	 */
	Constraint(enable:Bool);

	/**
	 * Sets the font name for edge labels
	 */
	Fontname(name:String);

	/**
	 * Sets the font size for edge labels
	 */
	Fontsize(size:Int);

	/**
	 * Controls whether the head of the edge connects to the node boundary
	 */
	Headclip(enable:Bool);

	/**
	 * Specifies where on the head node to connect the edge
	 */
	Headport(type:EdgePortPosition);

	/**
	 * Sets the text label for the edge
	 */
	Label(text:String);

	/**
	 * Specifies an ideal length for the edge
	 */
	Len(x:Float, y:Float);

	/**
	 * Sets the head of the edge to a cluster
	 */
	Lhead(cluster:String);

	/**
	 * Sets the tail of the edge to a cluster
	 */
	Ltail(cluster:String);

	/**
	 * Sets the minimum rank difference between head and tail nodes
	 */
	Minlen(length:Int);

	/**
	 * Groups edges with the same head and tag
	 */
	Samehead(tag:String);

	/**
	 * Groups edges with the same tail and tag
	 */
	Sametail(tag:String);

	/**
	 * Controls whether the tail of the edge connects to the node boundary
	 */
	Tailclip(enable:Bool);

	/**
	 * Specifies where on the tail node to connect the edge
	 */
	Tailport(type:EdgePortPosition);

	/**
	 * Sets the weight (importance) of the edge for ranking
	 */
	Weight(importance:Int);

	/**
	 * Decorative options
	 */
	/**
	 * Specifies the style of arrowhead at the head of the edge
	 */
	Arrowhead(type:EdgeArrowType);

	/**
	 * Sets the scaling factor for arrow sizes
	 */
	Arrowsize(scale:Float);

	/**
	 * Specifies the style of arrowhead at the tail of the edge
	 */
	Arrowtail(type:EdgeArrowType);

	/**
	 * Sets the color of the edge
	 */
	Color(color:GVColorType);

	/**
	 * Indicates if the edge should be drawn with decorations
	 */
	Decorate(enable:Bool);

	/**
	 * Specifies the direction of the edge
	 */
	Dir(direction:EdgeDirectionType);

	/**
	 * Sets the font color for the edge label
	 */
	Fontcolor(color:GVColorType);

	/**
	 * Sets a label near the head of the edge
	 */
	Headlabel(text:String);

	/**
	 * Specifies the angle for edge labels
	 */
	Labelangle(degrees:Float);

	/**
	 * Sets the scaling factor for the distance of edge labels from the edge
	 */
	Labeldistance(scale:Float);

	/**
	 * Allows edge labels to be placed on their natural side of the edge
	 */
	Labelfloat(enable:Bool);

	/**
	 * Sets the font color for head and tail labels
	 */
	Labelfontcolor(color:GVColorType);

	/**
	 * Sets the font name for head and tail labels
	 */
	Labelfontname(name:String);

	/**
	 * Sets the font size for head and tail labels
	 */
	Labelfontsize(pts:Int);

	/**
	 * Specifies the overlay layer for the edge
	 */
	Layer(overlay:GVOverlayRange);

	/**
	 * Controls whether edge labels should be justified
	 */
	Nojustify(enable:Bool);

	/**
	 * Sets the style options for the edge
	 */
	Style(type:Array<GVStyleOptionsType>);

	/**
	 * Sets a label near the tail of the edge
	 */
	Taillabel(text:String);
}
