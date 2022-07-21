program No3;
uses crt;
var 
    larik:array[1..50] of integer;
    n,i,j,min,temp,x,k:integer;
    m:real;

begin
    clrscr;
    for i:=1 to Length(larik) do
    begin
        write('Masukan data ke-', i,' = '); readln(larik[i]);
    end;
    writeln;
    write('Data hasil input : ');
    for i := 1 to Length(larik) do
    write(larik[i],' ');
    writeln;
    writeln;

    for i := 1 to Length(larik) - 1 do
    begin
        min := i;
        for j := i to Length(larik) do
        begin
            if(larik[j] < larik[min]) then
            min := j;
        end;
        temp := larik[i];
        larik[i] := larik[min];
        larik[min] := temp;
    end;
    write('Data setelah di urutkan : ');
    for i := 1 to Length(larik) do
    write(larik[i],' , ');
    writeln;
    writeln;

    x := 0; k := Length(larik); m := 0;
    for i := 1 to Length(larik) do
        begin
            m := m + larik[i];
            if(larik[i] < k) then
                k := larik[i]
            else if(larik[i] > x) then
                x := larik[i]
        end;
    m := m / Length(larik);
    writeln('Nilai Terbesar : ', x);
    writeln('Nilai Terkecil : ', k);
    writeln('Nilai Rata-rata : ', m:0:2);
end.