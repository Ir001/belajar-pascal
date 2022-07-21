program No1;
uses crt;
var panjang, lebar, perhitungan : real;
function KelilingPersegiPanjang(p, l :real):real;
    begin
        KelilingPersegiPanjang := 2 * (p+l); {2 * (Panjang + Lebar) }
    end;
begin
    clrscr;
    WriteLn('== Perhitungan Keliling Persegi Panjang =='); 
    Write('Input Panjang (p) : '); Read(panjang);
    Write('Input Lebar (l) : '); Read(lebar);
    perhitungan := KelilingPersegiPanjang(panjang,lebar);
    WriteLn;
    WriteLn('Keliling (2*(p+l)) : ', perhitungan:0:0);
    WriteLn;
end.