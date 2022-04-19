program Tiga_bilang_terbesar;
uses crt;
var
  benar,salah,Jumlah_soal,Jawaban,counter: integer;
  a,b:integer;
  Nilai:real;
  option:char;
begin
  { NPM : 202143500224 }
  { Nama  : Irwan Antonio }
  option:='y';
  while (option = 'y') do
    begin
      clrscr;
      randomize;
      benar := 0;
      Salah := 0;
      write('Input jumlah soal : ');
      readln(Jumlah_soal);
      for counter := 1 to Jumlah_soal do
        begin
          a:= random(100);
          b:= random(100);
          write('Soal',counter,' : ',a,' + ',b,' = ');
          readln(Jawaban);
          if jawaban = (a+b) then
            benar := benar + 1
          else
            salah := salah + 1;
        end;
      Nilai := benar/Jumlah_soal*100;
      writeln('Jumlah jawaban yang benar : ',benar);
      writeln('Jumlah jawaban yang salah : ',salah);
      writeln('Nilai                     : ',Nilai:0:0);
      write('Apakah Anda ingin mengulang ? (y/n) :'); ReadLn(option);
    end;
  clrscr;
  WriteLn('Terimakasih');
  readln;
end.