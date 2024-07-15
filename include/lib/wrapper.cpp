#include <lib/wrapper.h>
#include <iostream>
using namespace std;

wrapper::wrapper()
{
    this->context = gvContext();
    this->rendered = "";
}
wrapper::~wrapper()
{
    gvFreeContext(this->context);
    delete graph;
}
wrapper wrapper::fromString(const char *graphstring)
{
    wrapper inst = wrapper();
    inst.graph = agmemread(graphstring);
    return inst;
}
wrapper wrapper::fromFile(const char *filepath)
{
    FILE *file = fopen(filepath, "r");
    wrapper inst = wrapper();
    inst.graph = agread(file, 0);
    fclose(file);
    return inst;
}
wrapper wrapper::create(char *name, const char *type)
{
    wrapper inst = wrapper();
    if (type == "agundirected")
    {
        inst.graph = agopen(name, Agundirected, 0);
    }
    else if (type == "agstrictundirected")
    {
        inst.graph = agopen(name, Agstrictundirected, 0);
    }
    else if (type == "agdirected")
    {
        inst.graph = agopen(name, Agdirected, 0);
    }
    else if (type == "agstrictdirected")
    {
        inst.graph = agopen(name, Agstrictdirected, 0);
    }
    else
    {
        throw "Invalid graph type ";
    }
    return inst;
}
char* wrapper::render() {
    cout << "Autofilling dot,svg";
    return render("dot", "svg");
}
char* wrapper::render(const char* layoutengine) {
    cout<<"Autofilling svg";
    return render(layoutengine, "svg");
}
char* wrapper::render(const char* layoutengine, const char* format) {
    gvLayout(context, graph, layoutengine);
    unsigned int writlen;
    gvRenderData(context, graph, format, &rendered, &writlen);
    gvFreeLayout(context, graph);
    return rendered;
}
void wrapper::free() {
    gvFreeRenderData(rendered);
}
void test() {
    wrapper n = wrapper::fromString("digraph {a -> b}");
    n.render();
}