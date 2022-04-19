program Soal1;
uses crt;
var 
    xo : array[0..4, 0..4] of Char;
    i, j: integer;
begin
    clrscr;
    // Looping initialize value to array
    for i:=0 to 4 do
        begin
            for j:=0 to 4 do
                begin
                // Jika variable i dibagi 2 sisa 0 maka nilai samadengan X
                if(i mod 2 = 0 ) then
                  xo[i,j]:='X'
                else
                  xo[i,j]:='O';
                end;
        end;
    // Looping output
     for i:=0 to 4 do
        begin
            for j:=0 to 4 do
                begin
                    Write(xo[i,j],'  ');
                end;
            WriteLn()
        end;
  
end.