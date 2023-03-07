Program sqr;
Uses Wincrt;
Var
  n,k,s: Integer;
Begin
  Write('Donner la valuer de n= ') ;
  Read(n);
  s := 0 ;
  For k:=0 To n-1 Do
    Begin
      s := s+2*k+1 ;
    End;
  Write(s,' Sqr of : ',n);
End.