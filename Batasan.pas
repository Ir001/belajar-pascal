program Batasan;

uses crt;

var
    i, limit:Integer;
begin
  clrscr;
  WriteLn('Nama : Irwan Antonio');
  WriteLn('NPM : 202143500224');
  Write('Input angka batasan :'); ReadLn(limit);
    for i:= 1 to limit do
        begin
              Write(i,' ');
        end;
    WriteLn();
    WriteLn('Jumlah seluruh angka: ',i);
end.