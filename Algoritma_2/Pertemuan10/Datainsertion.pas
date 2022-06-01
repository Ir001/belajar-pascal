Program Datainsertion;

uses crt;
const NPMLength = 12;
var 
    i, j, k, lengthOfName : Integer;
    NPMStr                   : String;
    temp                : Char;

procedure insertionSortAsc(var npm : String);
begin
    for i:= 2 to NPMLength do
        begin
            temp := npm[i];
            j:=i-1;

                while(temp < npm[j]) and (j > 0) do
                j:=j-1;

                for k:= i downto j+1 do
                    npm[k] := npm[k-1];
                    npm[j+1]:=temp;
        end;
end;

begin
    Write('Input Your NPM :'); ReadLn(NPMStr);
    Write('NPM Before Sorted :'); 
    WriteLn(NPMStr);
    insertionSortAsc(NPMStr);
    Write('NPM After Sorted :');
    WriteLn(NPMStr);
end.