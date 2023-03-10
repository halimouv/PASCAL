Program paire_inpaire;
Uses Wincrt;
Var
  n: Integer;
Begin
  Write('Enter value of n = ');
  Read(n);
  If n Mod 2 = 0 Then
    Begin
      Write('==> ',n,' is even number');
    End
  Else
    Begin
      Write('==> ',n,' is odd number');
    End
End.
