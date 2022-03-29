Program Nomor4;
uses crt;
var
    times: array[0..4] of Integer;
    i : Integer;
begin
    clrscr;
    for i:=0 to 3 do
        begin
            Write('Input bilangan ke-',i+1,': '); Read(times[i]);
        end;
    WriteLn('=====================================');
    for i:=0 to 3 do
        begin
            WriteLn(times[i],' x ', i+1, ' = ', (times[i] * (i+1)));      
        end;
    ReadLn
end.