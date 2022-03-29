program Quiz1;
uses crt;
var
    option, panjang,lebar, result : Integer;
    menu : String;
begin
    clrscr;
    writeln('Nama : Irwan Antonio');
    writeln('NPM : 202143500224');
    writeln('Select Program : ');
    writeln('1. Hitung Luas');
    writeln('2. Hitung Keliling');
    writeln('3. Panjang Diagonal');
    writeln(' Your option: '); readln(option);
    case (option) of
        1 : begin
            write('Input panjang : '); readln(panjang);
            write('Input lebar : '); readln(lebar);
            result:=panjang*lebar;
            menu:='Hitung Luas (Panjang * Lebar)';
            end;
        2 : begin
            write('Input panjang : '); readln(panjang);
            write('Input lebar : '); readln(lebar);
            result:=(2*panjang)+(2*lebar);
            menu:='Hitung keliling (2 * Panjang + 2 * Lebar)';
            end;
    end;
    writeln('Anda telah memilih ',menu, ' dengan hasil ', result);
  
end.
