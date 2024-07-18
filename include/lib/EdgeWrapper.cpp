#include <Wrappers.h>

EdgeWrapper::EdgeWrapper(NodeWrapper& nodeA, NodeWrapper& nodeB, char* name) {
    if (nodeA.rootParent != nodeB.rootParent) {
        throw "Cannot connect nodes with different roots";
    }
    this->edge = agedge(nodeA.rootParent->graph, nodeA.node, nodeB.node, name, 1);
}

EdgeWrapper::~EdgeWrapper() {
    delete this->edge;
}