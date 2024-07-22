#include <lib/Wrappers.h>


SubgraphWrapper::SubgraphWrapper(SubgraphWrapper& parent, char* name) {
    this->subg = agsubg(parent.subg, name, 0);
    this->sgParent = &parent;
    this->rootParent = parent.rootParent;
}
SubgraphWrapper::SubgraphWrapper(GraphWrapper& parent, char* name) {
    this->subg = agsubg(parent.graph, name, 0);
    this->rootParent = &parent;
    this->sgParent = nullptr;
}
SubgraphWrapper::~SubgraphWrapper() {
    delete this->subg;
    delete this->rootParent;
    delete this->sgParent;
}

SubgraphWrapper* SubgraphWrapper::createSubgraph(char* name) {
    return new SubgraphWrapper(*this, name);
}
void GraphWrapper::setAttr(char* att, char* val) {
    //HACK this might be broken? idk
    agsafeset(this->graph, att, val, ""); 
}