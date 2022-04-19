program Gabungan;
uses crt;
    var 
        produk :string;
        total, hargaBarang, qty, selisih, jumlahBayar : real;
    function hitungTotal(hargaBarang, qty:real):real;
        begin
            hitungTotal := hargaBarang * qty;
        end;

    procedure prosesBayar(var bayar, tagihan:real);
        begin
            if(bayar = tagihan) then
                Write('Membayar dengan uang pas.')
            else if(bayar > tagihan) then
                begin
                    selisih:= bayar - tagihan;
                    WriteLn('Kembalian Rp.', selisih:8:0)
                end
            else
                begin
                    selisih:= bayar - tagihan;
                    WriteLn('==== Warning ===');
                    WriteLn('Uang Kurang Rp.', selisih:8:0);
                end; 
        end;
begin
    WriteLn('=== Program Kasir Sederhana ====');
    Write('Input nama produk : '); ReadLn(produk);
    Write('Input harga satuan : Rp.'); ReadLn(hargaBarang);
    Write('Input jumlah barang : '); ReadLn(qty);
    WriteLn('Produk : ', produk,' Rp.', hargaBarang:8:0, ' x ', qty:8:0);

    total:= hitungTotal(hargaBarang, qty); { Memanggil function Total}

    WriteLn('Total tagihan: Rp.', total:8:0);
    Write('Input Jumlah Bayar: Rp.'); ReadLn(jumlahBayar);
    
    prosesBayar(jumlahBayar, total);
    ReadLn;
end.