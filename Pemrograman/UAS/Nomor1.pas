Program Nomor1;

uses crt;
var
    number, i : Integer;
begin
    clrscr;
    i:=1;
    Write('Input Sebuah Angka : '); Read(number);
    WriteLn('=========================================');
    while (i<=10) do
        begin
            WriteLn(number, ' x ', i, ' = ', (number*i));
            i:=i+1;
        end;
    ReadLn
end.