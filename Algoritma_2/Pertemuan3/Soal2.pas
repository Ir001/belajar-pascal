program Soal2;
uses crt;
var 
    xo : array[0..4, 0..4] of Char;
    kolom, baris: integer;
begin
    clrscr;
    // Looping initialize value to array
    for kolom:=0 to 4 do
        begin
            for baris:=0 to 4  do
                begin
                if(kolom = baris) then
                  xo[kolom,baris]:='X'
                else if(kolom < baris) then
                  xo[kolom,baris]:='O'
                else
                  xo[kolom,baris]:=' ';
                end;
        end;
    // Looping output
     for kolom:=0 to 4 do
        begin
            for baris:=0 to 4 do
                begin
                    Write(xo[kolom,baris],'  ');
                end;
            WriteLn()
        end;
  
end.