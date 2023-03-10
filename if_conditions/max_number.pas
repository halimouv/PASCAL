Program max_number;
Uses Wincrt;
Var
  a,b,max: Integer;
Begin
  Write('Enter value of a = ');
  Read(a);
  Write('Enter value of b = ');
  Read(b);
  If a>b Then
    max := a
  Else
    max := b;
  Write('Max number is : ',max);
End.