Program UtsKomisi;
uses crt;
var
    employee:string;
    sales,commission:real;
begin
    {  UTS 202143500224 Irwan Antonio P1 S1C 2021 }
    clrscr;
    write('Nama Karyawan: '); readln(employee);
    write('Nilai Penjualan: '); readln(sales);
    commission:=sales*5/100;
    write('Komisi yang didapat oleh ',employee, ' adalah sebesar ',commission:0:0);
end.
