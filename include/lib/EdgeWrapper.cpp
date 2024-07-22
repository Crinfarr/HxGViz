#include <Wrappers.h>

EdgeWrapper::EdgeWrapper(NodeWrapper& nodeA, NodeWrapper& nodeB, char* name) {
    if (nodeA.rootParent != nodeB.rootParent) {
        throw "Cannot connect nodes with different roots";
    }
    this->edge = agedge(nodeA.rootParent->graph, nodeA.node, nodeB.node, name, 1);
}
void GraphWrapper::setAttr(char* att, char* val) {
    //HACK this might be broken? idk
    agsafeset(this->graph, att, val, ""); 
}
EdgeWrapper::~EdgeWrapper() {
    delete this->edge;
}