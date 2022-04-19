Program NestedLoop1;
uses crt;
var
     i,j: Integer;
begin
    clrscr;
    for i := 1 to 5 do
        begin
            for j := 1 to i do
                begin
                Write('*  ');
                end;
            WriteLn();
        end;
end.