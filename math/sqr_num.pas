Program sqr_num;
Uses Wincrt;
Var
  x: Real;
Begin
  Write('Enter value of x = ');
  Read(x);
  Writeln('Sqr of x=(',x:0:2,') is ',Sqr(x): 0: 2)
End.