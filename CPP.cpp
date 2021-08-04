#include <iostream>
using namespace std;

namespace temp {
    int val = 50;
    int getVal() {
        return val * 10;
    }
}

int main()
{
    double val = 10.0;
    cout << val << endl;    // prints 10.0
    cout << temp::getVal() << endl;     // prints 500
}