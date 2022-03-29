Program Nomor4;
uses crt;
var
    i,j : Integer;
begin
    clrscr;
    for i:=1 to 5 do
        begin
            for j:=i to 5 do
                begin
                  Write(i+j,' ');
                end;
            WriteLn();
        end;
    ReadLn
end.