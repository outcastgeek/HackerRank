# simple_array_sum

import future, strutils

proc printf(formatstr: cstring)
    {.header: "<stdio.h>", varargs.}

proc solve_me_first(a, b:int): int =
  a + b

when isMainModule:
  let
    num1: int = parseInt(readLine(stdin))
    num2: int = parseInt(readLine(stdin))
    sum: int = solve_me_first(num1, num2)

  echo "Echoed Sum: ", sum
  printf("Printed Sum: %d\n", sum)

