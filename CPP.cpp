#include <iostream>
using namespace std;

class Book {
    private:
        void set_percent();
    public:
        Book();
        Book(string title, int total_page);
        string title;
        int currentPage;
        int totalPage;
        void Move(int page);
};

int main() {
    Book webBook("CPP Constructor", 350);

    webBook.Move(30);
    cout << webBook.currentPage << endl;
    cout << webBook.title << " " << webBook.totalPage << endl;
}

// 멤버 함수 정의 == 일반 함수 정의
void Book::Move(int page) {
    currentPage = page;
}

Book::Book(string title, int total_page) {
    this->title = title;
    this->totalPage = total_page;
}