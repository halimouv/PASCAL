Program mobile_app_users;
Uses Wincrt;

Const u = 4;
Type
  users = Record
    uid: Integer;
    email: String[30];
    uname: String[24];
    password: String[20];
    gold_memebership: Boolean;
    developer: Boolean;
    beta_tester: Boolean;
    prime: Boolean;
    prime_plus: Boolean;
  End;
  uarray = Array [1..u] Of users ;
Procedure add_users (Var a:uarray);
Var
  i: Integer;
  x: String;
Begin
  For i:=1 To u Do
    Begin
      a[i].uid := i;
      Writeln('==================================');
      Write('Enter E-MAIL user [',i,'] : ');
      Readln(a[i].email);
      Write('Enter Username of [',i,'] : ');
      Readln(a[i].uname);
      Write('Enter password of [',i,'] : ');
      Readln(a[i].password);
      Write('iSUser [',i,'] gold_memebership ? (true/false) : ');
      Readln(x);
      If x = 'true' Then
        a[i].gold_memebership := True
      Else
        a[i].gold_memebership := False;
      //
      Write('iSUser [',i,'] developer ? (true/false) : ');
      Readln(x);
      If x = 'true' Then
        a[i].developer := True
      Else
        a[i].developer := False;
      //
      Write('iSUser [',i,'] beta_tester ? (true/false) : ');
      Readln(x);
      If x = 'true' Then
        a[i].beta_tester := True
      Else
        a[i].beta_tester := False;
      //
      Write('iSUser [',i,'] prime ? (true/false) : ');
      Readln(x);
      If x = 'true' Then
        a[i].prime := True
      Else
        a[i].prime := False;
      //
      Write('iSUser [',i,'] prime_plus ? (true/false) : ');
      Readln(x);
      If x = 'true' Then
        a[i].prime_plus := True
      Else
        a[i].prime_plus := False;
      Clrscr;
    End;
End;
Function devs(a:uarray): Integer;
Var
  i,dev: Integer;
Begin
  dev := 0 ;
  For i:=1 To u Do
    If a[i].developer = True Then
      dev := dev+1;
  devs := dev;
End;

Function testers(a:uarray): Integer;
Var
  i,test: Integer;
Begin
  test := 0 ;
  For i:=1 To u Do
    If a[i].beta_tester = True Then
      test := test+1;
  testers := test;
End;

Function goldusers(a:uarray): Integer;
Var
  i,gold: Integer;
Begin
  gold := 0 ;
  For i:=1 To u Do
    If a[i].gold_memebership = True Then
      gold := gold+1;
  goldusers := gold;
End;

Function prime(a:uarray): Integer;
Var
  i,pri: Integer;
Begin
  pri := 0 ;
  For i:=1 To u Do
    If a[i].prime = True Then
      pri := pri+1;
  prime := pri;
End;

Function primeplus(a:uarray): Integer;
Var
  i,pri: Integer;
Begin
  pri := 0 ;
  For i:=1 To u Do
    If a[i].prime_plus = True Then
      pri := pri+1;
  primeplus := pri;
End;
Var
  tabusers : uarray ;
  developers,betatesters,golduser,primes,primesplus,rw: Integer;
Begin
  Writeln('MOBILE APP USERS');
  Writeln('==================================');
  Writeln('Enter users details');
  add_users(tabusers);
  developers := devs(tabusers);
  golduser := goldusers(tabusers);
  primes := prime(tabusers);
  betatesters := testers(tabusers);
  primesplus := primeplus(tabusers) ;
  // Output
  rw := 0;
  Gotoxy(2,2);
  Write('UID');
  Gotoxy(8,2);
  Write('USERNAME');
  Gotoxy(30,2);
  Write('EMAIL');
  Gotoxy(56,2);
  Write('GOLD_MEMBER');
  Gotoxy(69,2);
  Write('DEVELOPER');
  // USER ID
  For rw:=1 To u Do
    Begin
      Gotoxy(2,2+rw);
      Write(tabusers[rw].uid);
    End ;
  // USERNAME
  For rw:=1 To u Do
    Begin
      Gotoxy(8,2+rw);
      Write(tabusers[rw].uname);
    End ;
  // EMAIL
  For rw:=1 To u Do
    Begin
      Gotoxy(30,2+rw);
      Write(tabusers[rw].email);
    End ;
  // CHECK IS GOLD MEMEBERSHIP
  For rw:=1 To u Do
    Begin
      Gotoxy(56,2+rw);
      If tabusers[rw].gold_memebership = True Then
        TextColor(yellow);
      If tabusers[rw].gold_memebership = False Then
        TextColor(red);
      Write(tabusers[rw].gold_memebership);
      TextColor(white);
    End ;
  // CHECK IS DEVELOPER
  For rw:=1 To u Do
    Begin
      Gotoxy(69,2+rw);
      If tabusers[rw].developer = True Then
        TextColor(cyan);
      If tabusers[rw].developer = False Then
        TextColor(Red);
      Write(tabusers[rw].developer);
      TextColor(white);
    End;
  Writeln;
  Writeln;
  Writeln(' ==================================');
  Writeln(' Total of developers in app : ',developers);
  Writeln(' ==================================');
  Writeln(' Total of Beta-Testers in app : ',betatesters);
  Writeln(' ==================================');
  Writeln(' Total of Prime in app : ',primes);
  Writeln(' ==================================');
  Writeln(' Total of PrimePlus in app : ',primesplus);
  Writeln(' ==================================');
  Writeln(' Total of Gold Memebership in app : ',golduser);
  Writeln(' ==================================');
End.