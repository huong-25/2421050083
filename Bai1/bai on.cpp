#include <iostream>
using namespace std;

long long luyThua(int a, int n)
{
    long long b = 1;

    while (n > 0)
    {
        if (n % 2 == 1)
            b = b * a;

        a = a * a;
        n = n / 2;
    }

    return b;
}

int main()
{
    int a, n;

    cout << "Nhap a = ";
    cin >> a;

    cout << "Nhap n = ";
    cin >> n;

    cout << a << "^" << n << " = " << luyThua(a, n);

    return 0;
}