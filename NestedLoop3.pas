Program NestedLoop3;
uses crt;
var
     i,j,k: Integer;
begin
    clrscr;
    for i := 5 downto 1 do
        begin
            for j := 1 to i do
                begin
                        Write(i-j,'  ');
                end;
                WriteLn();
        end;
end.
