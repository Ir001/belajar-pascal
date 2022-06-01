Program Larik;
uses crt;
var
    i : Integer;
    // Deklarasi Array
    nilaiPelajaran : array[1..3] of Integer;
begin
    clrscr;
    for i:=1 to 3 do
        begin
            // Set nilai array
            nilaiPelajaran[i]:= (10*i) + 50;
        end;
    for i:=1 to 3 do
        begin
            // Mengakses array
            WriteLn('Nilai No. Absen ',i,' = ', nilaiPelajaran[i]);
        end;
end.
