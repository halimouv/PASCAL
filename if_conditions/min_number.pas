Program Min_number;
Uses Wincrt;
Var
  a,b,min: Integer;
Begin
  Write('Enter value of a = ');
  Read(a);
  Write('Enter value of b = ');
  Read(b);
  If a<b Then
    min := a
  Else
    min := b;
  Write('Min number is : ',min);
End.