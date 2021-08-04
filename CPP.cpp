#include <iostream>
#include <list>
using namespace std;

int main()
{
    list<int> ls = { 10, 20, 30 };
    ls.push_back(100);
    ls.push_front(3);

    list<int>::iterator iter = ls.begin();
    *iter = 5;      // list[0] = 5;

    for (iter = ls.begin(); iter != ls.end(); iter++)
        cout << *iter << " ";
}