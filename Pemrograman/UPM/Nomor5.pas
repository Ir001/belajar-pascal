Program Nomor5;
uses crt;
var
    i,j : Integer;
begin
    clrscr;
    for i:=5 downto 1 do
        begin
            for j:=i to 5 do
                if(j mod 2 = 0) then
                    Write(1,'  ')
                else
                    Write(0,'  ');
            WriteLn();
        end;
    ReadLn
end.