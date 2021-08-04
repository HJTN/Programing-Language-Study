#include <iostream>
using namespace std;

typedef struct node* nodePointer;
typedef struct node {
    string str;
    int num;
    double doub;
    char x;
} node;

int main()
{
    nodePointer temp = new node;
    temp->doub = 9.2;
    temp->num = 100;
    cout << temp->doub << " " << temp->num << endl;

    delete temp;
}