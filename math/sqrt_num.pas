Program sqrt_num;
Uses Wincrt;
Var
  x:Real;
Begin
  Write('Enter value of x = ');
  Read(x);
	If x >= 0 Then
		WriteLn('Sqrt of x=(',x:0:2,') is ',Sqrt(x):0:2)
	Else
		WriteLn('Incorrect value !');
End.
