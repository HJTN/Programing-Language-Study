#include <iostream>
#include <iterator>
#include <stack>
#include <queue>
using namespace std;

// stack Main
int main() {
    stack<int> st;
    int decimal = 123;

    do {
        st.push(decimal % 2);
        decimal /= 2;
    } while (decimal);

    while(!st.empty()) {
        cout << st.top();
        st.pop();
    }
}
/*
// queue Main
int main() {
    int n = 20;
    queue<int> que;
    que.push(0);
    que.push(1);

    for (int i = 2; i < n; i++) {
        int temp = que.front();
        cout << temp << " ";
        que.pop();
        que.push(temp + que.front());
    }
}

// priority_queue Main
int main() {
    priority_queue<int> pq;
    pq.push(10);
    pq.push(20);
    pq.push(100);
    pq.push(3);

    while(!pq.empty()) {
        cout << pq.top() << " ";
        pq.pop();
    }
}
*/