Program Dataselection;
uses crt;
const panjangNPM = 12;
var 
    i, j, min : Integer;
    temp : Char;
    NPM : String;

procedure selectionSortAsc(var NPM : String);
begin
    for i:= 1 to panjangNPM-1 do
        begin
            min := i;
            for j:= i to panjangNPM do
                begin
                    if NPM[j] < NPM[min] then
                    min:=j;
                end;
            temp:=NPM[i];
            NPM[i]:=NPM[min];
            NPM[min] := temp;
        end;
end;

begin
    Write('Input your NPM :'); ReadLn(NPM);
    WriteLn('NPM Before Sorted :', NPM);
    selectionSortAsc(NPM);
    WriteLn('NPM After Sorted (ASC) :', NPM);
end.