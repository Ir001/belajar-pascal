Program Nomor2;

uses crt;
var
    limit, i : Integer;
begin
    clrscr;
    Write('Input Batasan Angka : '); Read(limit);
    WriteLn('=========================================');
    for i:=1 to limit do
        begin
            if ((i mod 5 = 0) AND (i mod 3 = 0)) then
                Write(' Kita ')
            else if((i mod 3) = 0) then
                Write(' Saya ')
            else if((i mod 5) = 0) then
                Write(' Kamu ')
            else 
                Write(' ',i,' ');            
        end;
    WriteLn();
    ReadLn
end.