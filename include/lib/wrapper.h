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

class gvchart
{
public:
    gvchart(Agraph_t *wrap);
    ~gvchart();

private:
    Agraph_t *internalgraph;
};