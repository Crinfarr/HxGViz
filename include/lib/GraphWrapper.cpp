#include <lib/Wrappers.h>
GraphWrapper::GraphWrapper() {
    this->context = gvContext();
    this->rendered = "";
}
GraphWrapper::~GraphWrapper() {
    gvFreeContext(this->context);
    delete graph;
}
GraphWrapper* GraphWrapper::fromString(const char* graphstring) {
    GraphWrapper* inst = new GraphWrapper();
    inst->graph = agmemread(graphstring);
    return inst;
}
GraphWrapper* GraphWrapper::fromFile(const char* filepath) {
    FILE* file = fopen(filepath, "r");
    GraphWrapper* inst = new GraphWrapper();
    inst->graph = agread(file, 0);
    fclose(file);
    return inst;
}
GraphWrapper* GraphWrapper::create(char* name, const char* type) {
    GraphWrapper* inst = new GraphWrapper();
    if (type == "agundirected") {
        inst->graph = agopen(name, Agundirected, 0);
    }
    else if (type == "agstrictundirected") {
        inst->graph = agopen(name, Agstrictundirected, 0);
    }
    else if (type == "agdirected") {
        inst->graph = agopen(name, Agdirected, 0);
    }
    else if (type == "agstrictdirected") {
        inst->graph = agopen(name, Agstrictdirected, 0);
    }
    else {
        throw "Invalid graph type ";
    }
    return inst;
}
SubgraphWrapper* GraphWrapper::createSubgraph(char* name) {
    return new SubgraphWrapper(*this, name);
}
NodeWrapper* GraphWrapper::createNode(char* name) {
    return new NodeWrapper(*this, name);
}
EdgeWrapper* GraphWrapper::createEdge(NodeWrapper& nodeA, NodeWrapper& nodeB, char* name) {
    return new EdgeWrapper(nodeA, nodeB, name);
}

void GraphWrapper::setAttr(char* att, char* val) {
    //HACK this might be broken? idk
    agsafeset(this->graph, att, val, ""); 
}

char* GraphWrapper::render(const char* layoutengine, const char* format) {
    gvLayout(context, graph, layoutengine);
    unsigned int writlen;
    gvRenderData(context, graph, format, &rendered, &writlen);
    gvFreeLayout(context, graph);
    return rendered;
}
void GraphWrapper::free() {
    gvFreeRenderData(rendered);
}