# Restoring-Division-Algorithm-for-Unsigned-Integer-Division
### Implementation of Restoring Division Algorithm for unsigned integers in Verilog

A division algorithm provides a quotient and a remainder when we divide two number. They are generally of two type slow algorithm and fast algorithm. Slow division algorithm are restoring, non-restoring, non-performing restoring, SRT algorithm and under fast comes Newton–Raphson and Goldschmidt.

![image](https://user-images.githubusercontent.com/64649440/173132617-f4c00ab4-6e5a-467f-89be-d96dcf8ed1b1.png)

Here, register Q contain quotient and register A contain remainder. Here, n-bit dividend is loaded in Q and divisor is loaded in M. Value of Register is initially kept 0 and this is the register whose value is restored during iteration due to which it is named Restoring.

![image](https://user-images.githubusercontent.com/64649440/173132785-9f718814-30d3-44ad-ae86-dd107f97993f.png)

![image](https://user-images.githubusercontent.com/64649440/173133085-02d92031-4435-4e69-b649-01f1fcd44d78.png)

## References:
* Restoring Division Algorithm for Unsigned Integer - javatpoint
