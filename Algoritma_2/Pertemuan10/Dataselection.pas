Program Dataselection;
uses crt;
const NPMLength = 12;
var 
    i, j, min, lengthOfName : Integer;
    temp : Char;
    NPMStr : String;

procedure selectionSortAsc(var NPMStr : String);
begin
    for i:= 1 to NPMLength-1 do
        begin
            min := i;
            for j:= i to NPMLength do
                begin
                    if NPMStr[j] < NPMStr[min] then
                    min:=j;
                end;
            temp:=NPMStr[i];
            NPMStr[i]:=NPMStr[min];
            NPMStr[min] := temp;
        end;
end;

begin
    Write('Input your NPM :'); ReadLn(NPMStr);
    WriteLn('NPM Before Sorted :', NPMStr);
    selectionSortAsc(NPMStr);
    WriteLn('NPM After Sorted (ASC) :', NPMStr);
end.