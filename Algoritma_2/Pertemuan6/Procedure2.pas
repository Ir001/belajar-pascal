program Procedure2;
uses crt;
var 
    a, b : real;
    procedure HitungPPN(var hargaBarang, qty:real);
    var 
        grandTotal, ppn :real;
    begin
        grandTotal := hargaBarang * qty;
        ppn := grandTotal * 0.11;
        WriteLn('Total Harga Barang : Rp.',grandTotal:8:0);
        WriteLn('Total PPN (11%) : Rp.',ppn:8:0);
    end;
begin
    clrscr;
    WriteLn('== Program PPN ==');
    Write('Input harga satuan barang : Rp.'); ReadLn(a);
    Write('Input jumlah barang : '); ReadLn(b);
    HitungPPN(a,b);
end.