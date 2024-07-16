#include <lib/Wrappers.h>

NodeWrapper::NodeWrapper(SubgraphWrapper& parent, char* name) {
    this->node = agnode(parent.subg, name, 0);
    this->gwParent = &parent;
    this->rootParent = parent.rootParent;
}
NodeWrapper::NodeWrapper(GraphWrapper& parent, char* name) {
    this->gwParent = nullptr;
    this->rootParent = &parent;
}
NodeWrapper::~NodeWrapper() {
    delete this->gwParent;
    delete this->rootParent;
    delete this->node;
}