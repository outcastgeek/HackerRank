// Created by Benjamin EBBY on 2/1/16.
//

/**
 * Let's start simple.
 * Can you complete the function solveMeFirst to return the sum of two integers passed as input parameters?
 * You can pick your favorite programming language.
 */

import std.stdio;

int solveMeFirst (int a,int b) {
    // Hint: Type return a+b below
    return a+b;
}

void main()
{
    int a,b,res;
    readf("%d %d", &a,&b);
    res = solveMeFirst(a,b);
    writeln(res);
}
