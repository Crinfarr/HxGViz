#include <graphviz/gvc.h>

class SubgraphWrapper;

// Classy wrapper for graphviz graphs
class GraphWrapper {
public:
    static GraphWrapper* fromString(const char* graphstring);
    static GraphWrapper* fromFile(const char* filepath);
    static GraphWrapper* create(char* name, const char* type);

    SubgraphWrapper* createSubgraph(char* name);
    NodeWrapper* createNode(char* name);
    EdgeWrapper* createEdge(NodeWrapper& nodeA, NodeWrapper& nodeB, char* name);

    char* render(const char* layoutengine, const char* format);
    void free();

private:
    friend class SubgraphWrapper;
    friend class NodeWrapper;
    friend class EdgeWrapper;
    GraphWrapper();
    ~GraphWrapper();
    GVC_t* context;
    Agraph_t* graph;
    char* rendered;
};

// Classy wrapper for graphviz subgraphs
class SubgraphWrapper {
public:
    SubgraphWrapper* createSubgraph(char* name);

protected:
    // allow GraphWrapper to make subgraphs
    friend class GraphWrapper;
    friend class NodeWrapper;
    friend class EdgeWrapper;
    SubgraphWrapper(GraphWrapper& parent, char* name);
    SubgraphWrapper(SubgraphWrapper& parent, char* name);
    ~SubgraphWrapper();

private:
    SubgraphWrapper* sgParent;
    GraphWrapper* rootParent;
    Agraph_t* subg;
};

class NodeWrapper {
public:
    EdgeWrapper* connectNode(NodeWrapper& target, char* name);
protected:
    friend class GraphWrapper;
    friend class SubgraphWrapper;
    friend class EdgeWrapper;

    NodeWrapper(GraphWrapper& parent, char* name);
    NodeWrapper(SubgraphWrapper& parent, char* name);
    ~NodeWrapper();

private:
    GraphWrapper* rootParent;
    SubgraphWrapper* gwParent;
    Agnode_t* node;
};

class EdgeWrapper {
public:
protected:
    friend class GraphWrapper;
    friend class SubgraphWrapper;
    friend class NodeWrapper;
    EdgeWrapper(NodeWrapper& nodeA, NodeWrapper& nodeB, char* name);
    ~EdgeWrapper();
private:
    NodeWrapper* startNode;
    NodeWrapper* endNode;
    Agedge_t* edge;
};