Program factorial;
Uses Wincrt;
Var
  n,i,s: Integer;
Begin
  Write('Enter value of n = ');
  Read(n);
  s := 1;
  For i:=1 To n Do
    Begin
      s := s*i;
    End;
  Write(s,' Factorial of :',n);
End .