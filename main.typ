#import "template.typ": *


#show: CoverInfo.with(
  ClassName: "多尺度材料模拟与计算",
  ReportName: "一维周期性原子链",
  Name: "张三",
  StudentID: "XXXXXXXXXXXX",
  School: "材料科学与工程学院",
  Date: (2024, 02, 28),
)


// 正文
= 实验目的

这里是实验目的。这里是实验目的。这里是实验目的。这里是实验目的。这里是实验目的。
这里是实验目的。这里是实验目的。这里是实验目的。这里是实验目的。这里是实验目的。


= 实验原理

这里是实验方法。这里是实验方法。这里是实验方法。这里是实验方法。这里是实验方法。
这里是实验方法。这里是实验方法。这里是实验方法。这里是实验方法。这里是实验方法。

无编号公式：

有编号公式，如公式


参考文献引用@ZHU2023119062


= 实验内容

== 实验内容1

这里是实验内容1。这里是实验内容1。这里是实验内容1。这里是实验内容1。这里是实验内容1。
这里是实验内容1。这里是实验内容1。这里是实验内容1。这里是实验内容1。这里是实验内容1。

== 实验内容2

这里是实验内容2。这里是实验内容2。这里是实验内容2。这里是实验内容2。这里是实验内容2。
这里是实验内容2。这里是实验内容2。这里是实验内容2。这里是实验内容2。这里是实验内容2。

= 结果与讨论

== 结果

这里是结果。这里是结果。这里是结果。这里是结果。这里是结果。
这里是结果。这里是结果。这里是结果。这里是结果。这里是结果。

== 讨论

这里是讨论。这里是讨论。这里是讨论。这里是讨论。这里是讨论。
这里是讨论。这里是讨论。这里是讨论。这里是讨论。这里是讨论。

= 结论

这里是结论。这里是结论。这里是结论。这里是结论。这里是结论。
这里是结论。这里是结论。这里是结论。这里是结论。这里是结论。


// 参考文献
#{
  pagebreak()

  bibliography(
    "refs.bib",
    title: "参考文献",
    style: "gb-7714-2015-numeric",
  )
}

#[

#pagebreak(weak: true)

#set heading(numbering: none)
#counter(heading).update(0)
#set heading(level: 2, numbering: "A.1")

= 附录A

#show: codly-init.with()
#codly(
  languages: (
    python: (name: "Python", icon: icon("assets/brand-python.svg"), color: rgb("#CE412B")),
    rust: (name: "Rust", icon: icon("assets/brand-rust.svg"), color: rgb("#3572A5")),
    cpp: (name: "C++", icon: icon("assets/brand-cpp.svg"), color: rgb("#3572A5")),
  )
)

== Python代码

Python源代码：

```python
def main():
    operation = input("Enter operator (+, -, *, /): ")
    num1 = float(input("Enter first number: "))
    num2 = float(input("Enter second number: "))

    if operation == '+':
        result = num1 + num2
    elif operation == '-':
        result = num1 - num2
    elif operation == '*':
        result = num1 * num2
    elif operation == '/':
        if num2 == 0:
            print("Error: Division by zero!")
            return
        result = num1 / num2
    else:
        print("Error: Invalid operator!")
        return

    print("Result:", result)

if __name__ == "__main__":
    main()
```

== C++ 代码

```cpp
#include <iostream>
using namespace std;

// Function to add two numbers
float add(float a, float b) {
    return a + b;
}

// Function to subtract two numbers
float subtract(float a, float b) {
    return a - b;
}

// Function to multiply two numbers
float multiply(float a, float b) {
    return a * b;
}

// Function to divide two numbers
float divide(float a, float b) {
    if (b == 0) {
        cerr << "Error: Division by zero!" << endl;
        return 0;
    }
    return a / b;
}

int main() {
    char operation;
    float num1, num2, result;

    cout << "Enter operator (+, -, *, /): ";
    cin >> operation;

    cout << "Enter two numbers: ";
    cin >> num1 >> num2;

    switch(operation) {
        case '+':
            result = add(num1, num2);
            break;
        case '-':
            result = subtract(num1, num2);
            break;
        case '*':
            result = multiply(num1, num2);
            break;
        case '/':
            result = divide(num1, num2);
            break;
        default:
            cerr << "Error: Invalid operator!" << endl;
            return -1;
    }

    cout << "Result: " << result << endl;

    return 0;
}
```

== Rust 代码

Rust源代码：

```rust
pub fn main() {
    println!("Hello, world!");
}
```

= 附录B

这里是附录B。这里是附录B。这里是附录B。这里是附录B。这里是附录B。
这里是附录B。这里是附录B。这里是附录B。这里是附录B。这里是附录B。

]