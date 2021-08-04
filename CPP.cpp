#include <iostream>
#include <iterator>
#include <set>
#include <map>
using namespace std;

// set Main
int main() {
    int arr[] = { 10, 20, 30, 40, 50 };
    set<int> st(arr, arr + 3);
    set<int>::iterator it;

    cout << "Current set elements : ";
    for (it = st.begin(); it != st.end(); it++)
        cout << *it << " ";

    st.insert(60);
    st.insert(70);
    st.erase(30);
    cout << endl << "Current set elements : ";
    copy(st.begin(), st.end(), ostream_iterator<int>(cout, " "));
}
/*
// map Main
int main() {
    map<string, int> mp;
    map<string, int>::iterator it;
    mp.insert(pair<string, int>("math", 80));
    mp["english"] = 100;

    cout << "Current map elements : ";
    for (it = mp.begin(); it != mp.end(); it++)
        cout << it->first << " : " << it->second << endl;
}
*/