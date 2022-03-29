Program Quiz3;
Uses crt;
var
    students : array[1..99] of integer;
    gelombang, gel: integer;
begin
    clrscr;
    Write('Masukan Banyaknya Gelombang Pendaftaran : '); 
    Read(gelombang);
    for gel:=1 to gelombang do
        begin
            Write('Data Siswa Pada Gelombang ',gel,' : '); Read(students[gel]);
        end;
    WriteLn('===========================================================');
    for gel:=1 to gelombang do
        begin
            WriteLn('Gelombang ke ',gel,' yaitu ',students[gel], ' siswa');
        end;
    ReadLn;
end.