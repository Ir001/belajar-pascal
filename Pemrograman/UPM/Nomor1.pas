Program Nomor1;
uses crt;
var
    nama:String;
    jhari_kerja, jjam_lembur:Integer;
    upah, uang_lembur, trans_lembur, gaji: Real;
begin
    clrscr;
    Write('Input Nama : '); Read(nama);
    Write('Input Jumlah Hari Kerja: '); Read(jhari_kerja);
    Write('Input Jumlah Jam Lembur: '); Read(jjam_lembur);
    
    upah:=jhari_kerja*30000;
    uang_lembur:=jjam_lembur*5000;

    if (jjam_lembur > 10) then
        trans_lembur:=(10/100)*uang_lembur
    else
        trans_lembur:=0;
    
    gaji:=upah+uang_lembur+trans_lembur;

    WriteLn('Gaji ',nama, ' adalah Rp. ',gaji:0:0);    

end.