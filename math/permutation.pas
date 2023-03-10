Program permutation;
Uses Wincrt;
Var
  x,y,z: Integer;
Begin
  Write('Enter value of X = ');
  Read(x);
  Write('Enter value of Y Y = ');
  Read(y);
  z := x ;
  x := y ;
  y := z;
  Writeln('Value of X = ',x);
  Writeln(' Value of Y = ',y);
End.
