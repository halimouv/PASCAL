Program denominator;
Uses Wincrt;
Var
  n,i: Integer;
Begin
  Write('Enter value of n= ');
  read(n);
  For i:=1 To n Do
    Begin
      If n Mod i=0 Then
        Writeln(' - ',i,' Denominator of : ',n);
    End ;
End.
