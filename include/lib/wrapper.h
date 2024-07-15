#include <graphviz/gvc.h>
class wrapper
{
public:
    static wrapper fromString(const char* graphstring);
    static wrapper fromFile(const char* filepath);
    static wrapper create(char* name, const char* type);

    wrapper();
    ~wrapper();

    char* render(const char* layoutengine, const char* format);
    char* render(const char* layoutengine);
    char* render();
    void free();
private:    
    GVC_t* context;
    Agraph_t* graph;
    char* rendered;
};