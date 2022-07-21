program Kelipatan;

uses crt;

var
    i, a:Integer;
begin
  clrscr;
  WriteLn('Nama : Irwan Antonio');
  WriteLn('NPM : 202143500224');
  WriteLn('Angka kelipatan 2 dari 0 - 100');
    for i:= 1 to 100 do
        begin
            if(i mod 2 = 0) then
              Write(i,' ');
        end;
end.