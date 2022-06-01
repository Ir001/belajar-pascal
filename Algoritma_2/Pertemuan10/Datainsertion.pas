Program Datainsertion;
uses crt;
const panjangNPM = 12;
var 
    i, j, k : Integer;
    NPMStr                   : String;
    temp                : Char;

procedure insertionSortAsc(var NPMStr : String);
begin
    for i:= 2 to panjangNPM do
        begin
            temp := NPMStr[i];
            j:=i-1;

                while(temp < NPMStr[j]) and (j > 0) do
                j:=j-1;

                for k:= i downto j+1 do
                    NPMStr[k] := NPMStr[k-1];
                    NPMStr[j+1]:=temp;
        end;
end;

begin
    Write('Masukan NPM :'); ReadLn(NPMStr);
    Write('NPM Sebelum Disorting :'); 
    WriteLn(NPMStr);
    insertionSortAsc(NPMStr);
    Write('NPM Setelah Disorting :');
    WriteLn(NPMStr);
end.