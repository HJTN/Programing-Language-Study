#include <iostream>
#include <vector>
#include <deque>
#include <list>
#include <forward_list>
using namespace std;

// 벡터 Main
int main () {
    vector<int> vI = { 10, 20, 30 };
    cout << "현재 벡터의 크기 : " << vI.size() << endl;

    vI.push_back(40);
    // iterator 사용, 벡터의 요소 뽑아 냄
    cout << "현재 벡터의 크기 : " << vI.size() << endl << "현재 벡터의 요소 : ";
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

    cout << "현재 데큐의 모든 요소 : ";
    for (deque<int>::iterator it = dq.begin(); it != dq.end(); it++)
        cout << *it << " ";
    cout << endl;

    dq.pop_back();
    dq.pop_front();
    cout << "현재 데큐의 모든 요소 : ";
    for (deque<int>::iterator it = dq.begin(); it != dq.end(); it++)
        cout << *it << " ";
    cout << endl;

    dq.at(0) = 10;
    cout << "at 사용" << dq[0] << endl;
}

// Forward_list Main
int main() {
    forward_list<int> fls01 = { 10, 20, 400, 30 };
    forward_list<int> fls02 = { 40, 50 };
    forward_list<int>::iterator it;

    cout << "현재 순방향 리스트 fls01의 모든 요소 : ";
    for (it = fls01.begin(); it != fls01.end(); it++)
        cout << *it << " ";
    cout << endl;

    cout << "현재 순방향 리스트 fls02의 모든 요소 : ";
    for (it = fls02.begin(); it != fls02.end(); it++)
        cout << *it << " ";
    cout << endl;

    it = fls01.begin();
    fls01.splice_after(it, fls02);

    cout << "현재 순방향 리스트 fls01의 모든 요소 : ";
    for (it = fls01.begin(); it != fls01.end(); it++)
        cout << *it << " ";
    cout << endl;

    cout << "현재 순방향 리스트 fls02의 모든 요소 : ";
    for (it = fls02.begin(); it != fls02.end(); it++)
        cout << *it << " ";
    cout << endl;
}