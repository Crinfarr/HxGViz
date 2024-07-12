#include <graphviz/gvc.h>
class wrapper
{
private:
    GVC_t* context;
public:
    wrapper();
    ~wrapper();
    void open();
    struct graph;
};