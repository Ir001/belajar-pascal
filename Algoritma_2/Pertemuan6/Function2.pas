program Function2;
uses crt;
var 
    a, b , grandTotal, ppn: real;
    function HitungTotal(hargaBarang, qty:real):real;
        begin
            HitungTotal := hargaBarang * qty;
        end;
    function HitungPPN(grandTotal:real):real;
        begin
            HitungPPN := grandTotal * 0.11;
        
        end;
begin
    clrscr;
    WriteLn('== Program PPN ==');
    Write('Input harga satuan barang : Rp.'); ReadLn(a);
    Write('Input jumlah barang : '); ReadLn(b);
    { Memanggil Function }
    grandTotal:= HitungTotal(a,b);
    ppn:= HitungPPN(grandTotal);

    WriteLn('Total Harga Barang : Rp.',grandTotal:8:0);
    WriteLn('Total PPN (11%) : Rp.',ppn:8:0);
end.