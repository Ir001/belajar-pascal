Program NestedLoop2;
uses crt;
var
     i,j: Integer;
begin
    clrscr;
    for i := 5 downto 1 do
        begin
            for j := 5 downto i do
                begin
                Write(j,'  ');
                end;
            WriteLn();
        end;
end.
