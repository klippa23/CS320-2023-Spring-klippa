fun fact(x: int): int =
  if x > 0 then x * fact(x-1) else 1;

fun testOverflow(n: int): int = 
 fact(n) handle Overflow => 0;

fun increase(i: int): int = 
 if testOverflow(i) = 0 then i else increase(i+1);

val N = increase(0);
