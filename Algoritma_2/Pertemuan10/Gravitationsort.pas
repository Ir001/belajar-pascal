program Gravitationsort;
uses crt;

const n = 12;
var
    i,j : integer;
    NPMStr : String;
    temp : Char;

procedure gravitationSortAsc(var NPM:String);
    begin
        for j := 1 to n-1 do
        begin
            for i := 1 to n-j do
            begin
                if NPM[i] > NPM[i+1] then 
                begin
                    temp := NPM[i+1];
                    NPM[i+1] := NPM[i];
                    NPM[i] := temp;
                end;
            end;
        end;
    end;
begin
     clrscr;
     WriteLn('Input your NPM : '); ReadLn(NPMStr);
     WriteLn('Before Sorted : ');
     WriteLn(NPMStr);
     gravitationSortAsc(NPMStr);
     WriteLn('After Sorted (ASC): ');
     WriteLn(NPMStr);
end.