program Pertemuan2Soal2;
uses crt, SysUtils;
var 
    max, i: integer;
    strArr : array[0..5] of string;
    intArr : array[0..5] of integer;
begin
    clrscr;
    WriteLn('Name : Irwan Antonio');
    WriteLn('NPM : 202143500224');
    for i:=0 to 5 do
        begin
            strArr[i] := 'i am string index '+ IntToStr(i);
            intArr[i] := i;
        end;
    for i:=0 to 5 do
        begin
            WriteLn('String Array: ',strArr[i]);
            WriteLn('Interger Array: ',intArr[i]);
        end;
  
end.