#include <include/lib/wrapper.h>

wrapper::wrapper()
{
    this->context = gvContext();
}

wrapper::~wrapper()
{
    gvFreeContext(this->context);
}

gvchart::gvchart(Agraph_t *wrap)
{
    this->internalgraph = wrap;
}
gvchart::~gvchart()
{
    delete this->internalgraph;
}

struct wrapper::graph
{
    gvchart fromFile(char *filepath)
    {
        FILE *fp = fopen(filepath, "rw");
        return gvchart(agread(fp, 0));
        fclose(fp);
        delete fp;
    }
    gvchart fromString(char *graphstr)
    {
        return gvchart(agmemread(graphstr));
    }
};