Program Nomor3;
var
    // Inisialisasi variable x sebagai tipe data integer
    x:Integer;
begin
    // perulangan dari 1 sampai 5 maka lakukan perintah:
    // terdapat 3 decision proses yaitu:
    // jika hasil dari x modulo 2 sama dengan 0 maka tampilkan 'Merah'
    // jika hasil dari x modulo 3 sama dengan 0 maka tampilkan 'Kuning'
    // selain itu tampilkan 'Hijai'
    for x:=1 to 5 do
        if(x mod 2 = 0) then
            WriteLn('Merah')
        else if(x mod 3 = 0) then
            WriteLn('Kuning')
        else
            WriteLn('Hijau');
    ReadLn;
end.