Program distance;
Uses WinCrt;
Var
 Xa,Xb,Ya,Yb: Integer;
 dist : Real;
Function dista(Xa,Ya,Xb,Yb:Integer): Real;
Var
 dist: Real;
Begin
 dist := Sqrt (Sqr(Xa-Xb)+Sqr(Ya-Yb));
 dista := dist;
End;
Begin
 // Input
 TextColor(Cyan);
 Write('Enter value of [Xa] = ');
 Read (Xa);
 Write('Enter value of [Ya] = ');
 Read (Ya);
 Write('Enter value of [Xb] = ');
 Read (Xb);
 Write('Enter value of [Yb] = ');
 Read (Yb);
 // Output
 dist := dista(Xa,Ya,Xb,Yb);
 Writeln('The distance between A(',Xa,',',Ya,') and B(',Xb,',',Yb,') is : ',dist:0:2);
 Read(dist);
End.
