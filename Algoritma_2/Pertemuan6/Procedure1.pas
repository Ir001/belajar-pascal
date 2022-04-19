program Procedure1;
uses crt;
    var 
        produk :string;
        a, b : real;
    procedure ProgramKasir(var hargaBarang, qty:real);
        var
            total,selisih, jumlahBayar : real;
        begin
            total := hargaBarang * qty;
            WriteLn('Produk : ', produk,' Rp.', hargaBarang:8:0, ' x ', qty:8:0);
            WriteLn('Total tagihan: Rp.', total:8:0);
            Write('Input Jumlah Bayar: Rp.'); ReadLn(jumlahBayar);
            if(jumlahBayar = total) then
                Write('Membayar dengan uang pas.')
            else if(jumlahBayar > total) then
                begin
                    selisih:= jumlahBayar - total;
                    WriteLn('Kembalian Rp.', selisih:8:0)
                end
            else
                begin
                    selisih:= jumlahBayar - total;
                    WriteLn('==== Warning ===');
                    WriteLn('Uang Kurang Rp.', selisih:8:0);
                end; 
        end;
begin
    WriteLn('=== Program Kasir Sederhana ====');
    Write('Input nama produk : '); ReadLn(produk);
    Write('Input harga satuan : Rp.'); ReadLn(a);
    Write('Input jumlah barang : '); ReadLn(b);
    ProgramKasir(a, b);
    ReadLn;
end.