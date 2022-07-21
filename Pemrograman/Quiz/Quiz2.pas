Program Quiz2;
Uses crt;
var
    nilai1, nilai2, jumlah, bagi, kali : Real;
    x, y : Integer;
begin
    clrscr;
    WriteLn('================= TABEL PERKALIAN, PEMBAGIAN, PENJUMLAHAN =================');
    WriteLn('===========================================================================');
    WriteLn('   NILAI 1 |   NILAI 2 |   HASIL PERKALIAN |   PEMBAGIAN   |   PENJUMLAHAN');
    WriteLn('===========================================================================');
    for x :=5 to 9 do
        begin
            for y:= 2 to 4 do
              begin
                nilai1:= x;
                nilai2:= 5 + y;
                jumlah:= nilai1 * nilai2;
                bagi:= nilai1 / nilai2;
                kali:= nilai1 + nilai2;
                WriteLn('       ',nilai1:0:0,'    |     ',nilai2:0:0,'      |       ', kali:0:0,'      |       ',bagi:0:2,'      |       ',jumlah:0:0 );
              end;
        end;
end.