Program No3;
uses crt;
procedure hitung(a, b: integer);
begin
 writeln( a+b );
end;
procedure hitung(a: integer);
begin
 writeln( a*10 );
end;
function hitung(a, b, c: integer): integer;
begin
 hitung := a + b * c;
end;
begin
 writeln( hitung(10, 2, 3) );
 hitung(21, 33);
 hitung(32, 42);
 hitung(50);
 writeln( hitung(3, 4, 5) );
 hitung(10);
 writeln( hitung(6, 3, 2) );
 hitung(44, 50);
 readln;
end.