program Pertemuan2Soal1;
uses crt;
const
    charArr : array[0..5] of Char = ('A', 'B','C','D','E','F');
var 
    i: integer;
begin
    clrscr;
    WriteLn('Name : Irwan Antonio');
    WriteLn('NPM : 202143500224');
    WriteLn('====================');
    for i:=0 to 5 do
        begin
            WriteLn('Nilai konstan ke ', i, ' = ' , charArr[i]);
        end;
  
end.