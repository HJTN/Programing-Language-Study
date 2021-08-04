#include <iostream>
#include <iterator>
#include <vector>
#include <deque>
#include <list>
#include <forward_list>
using namespace std;
/*
// 벡터 Main
int main () {
    vector<int> vI = { 10, 20, 30 };
    cout << "Current vector size : " << vI.size() << endl;

    vI.push_back(40);
    // iterator 사용, 벡터의 요소 뽑아 냄
    cout << "Current vector size : " << vI.size() << endl << "Current vector elements : ";
    for (vector<int>::iterator it = vI.begin(); it != vI.end(); it++)
        cout << *it << " ";
    cout << endl;

    // 벡터의 요소 뽑아 냄
    copy(vI.begin(), vI.end(), ostream_iterator<int>(cout, " "));
}

// Deque Main
int main() {
    deque<int> dq = { 20 };
    dq.push_back(30);
    dq.push_front(10);

    cout << "Current deque elements : ";
    for (deque<int>::iterator it = dq.begin(); it != dq.end(); it++)
        cout << *it << " ";
    cout << endl;

    dq.pop_back();
    dq.pop_front();
    cout << "Current deque elements : ";
    for (deque<int>::iterator it = dq.begin(); it != dq.end(); it++)
        cout << *it << " ";
    cout << endl;

    dq.at(0) = 10;
    cout << "Use at method " << dq[0] << endl;
}
*/
// Forward_list Main
int main() {
    forward_list<int> fls01 = { 10, 20, 400, 30 };
    forward_list<int> fls02 = { 40, 50 };
    forward_list<int>::iterator it;

    cout << "Current forward_list fls01 elements : ";
    for (it = fls01.begin(); it != fls01.end(); it++)
        cout << *it << " ";
    cout << endl;

    cout << "Current forward_list fls02 elements : ";
    for (it = fls02.begin(); it != fls02.end(); it++)
        cout << *it << " ";
    cout << endl;

    it = fls01.begin();
    fls01.splice_after(it, fls02);

    cout << "Current forward_list fls01 elements : ";
    for (it = fls01.begin(); it != fls01.end(); it++)
        cout << *it << " ";
    cout << endl;

    cout << "Current forward_list fls02 elements : ";
    for (it = fls02.begin(); it != fls02.end(); it++)
        cout << *it << " ";
    cout << endl;
}
