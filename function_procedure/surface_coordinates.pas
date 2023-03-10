Program surf_coor_right_tp2;
Uses Wincrt;
Var
 Xa,Ya,Xb,Yb,Xc,Yc,res: Real;
 // Function 3 coordinates only
Function surf_coor (a,b,c,d,e,f:Real): Real;
Var
 l1,l2,l3: Real;
Begin
 l1 := a*(f-d);
 l2 := c*(b-f);
 l3 := e*(d-b);
 surf_coor := Abs (0.5*(l1+l2+l3));
End;
Begin
 Write('Enter value of [Xa] = ');
 Read (Xa);
 Write('Enter value of [Ya] = ');
 Read (Ya);
 Write('Enter value of [Xb] = ');
 Read (Xb);
 Write('Enter value of [Yb] = ');
 Read (Yb);
 Write('Enter value of [Xc] = ');
 Read (Xc);
 Write('Enter value of [Yc] = ');
 Read (Yc);
 res := surf_coor(Xa,Ya,Xb,Yb,Xc,Yc);
 Write('Surface of A(',Xa:0:0,',',Ya:0:0,') / B(',Xb:0:0,',',Yb:0:0,') / C(',Xc:0:0,',',Yc:0:0,
 ') is = ',res:0:3,' m2');
End.