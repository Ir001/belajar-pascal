program Soal3;
uses crt;
var 
    xo : array[1..5, 0..5] of Char;
    i, j: integer;
    iGenap, jGenap : Boolean;
begin
    clrscr;
    // Looping initialize value to array
    for i:=1 to 5 do
        begin
            for j:=1 to 5 do
                begin
                iGenap := (i mod 2 = 0);
                jGenap := (j mod 2 = 0);
                if(iGenap) then
                    if(jGenap) then // Jika baris genap dan kolom genap = X
                        xo[i,j]:='X'
                    else
                        xo[i,j]:='O'
                else
                    if(jGenap = False) then // Jika baris ganjil dan kolom ganjil = X
                        xo[i,j]:='X'
                    else
                        xo[i,j]:='O'
                end;
        end;
    // Looping output
     for i:=1 to 5 do
        begin
            for j:=1 to 5 do
                begin
                    Write(xo[i,j],'  ');
                end;
            WriteLn()
        end;
  
end.