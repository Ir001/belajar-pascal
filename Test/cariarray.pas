program cariarray;
uses crt;
type
        data=array [1..100] of integer;
var
        i,n,r,indeks:integer;
        a:data;
procedure tukar(var a,b:integer);
var c:integer;
begin
        c:=a;
        a:=b;
        b:=c;
end;

function seqsearch1(xx : integer): integer;
  var i : integer;
  begin
    i := 1;
    while ((i<n) and (a[i] <> xx)) do
      i:=i+1;
      if a[i] = xx then
        seqsearch1:=i
        else
        seqsearch1:=1;
  end;
procedure tampil(a:data);
var i:integer;
begin
        for i:=1 to n do
        write (a[i]:5);
        writeln;
end;
procedure buble(var a:data);
var i,j:integer;
begin
        for i:=1 to n-1 do
        begin
                for j:=n downto i+1 do
                begin
                        if (a[j]<a[j-1]) then tukar (a[j],a[j-1]);
                end;
        end;
end;
begin
        clrscr;
        writeln ('------------------------------------------');
        writeln ('             Pencarian Binary             ');
        writeln ('------------------------------------------');
        write ('Masukan Jumlah Data = '); readln(n);
        for i:=1 to n do
        begin
                write ('Indeks [',i,'] : '); readln(a[i]);
        end;
        writeln;
        buble(a);
        write('Data sesudah diurutkan : ');
        tampil(a);
        writeln;
        write('Cari    :'); readln(r);
        writeln;
        writeln('Data yang dicari : ',r);
        indeks:=seqsearch1(r);
          if indeks <> 0 then
            write('Ditemukan pada indeks ke-',indeks)
            else
            write('Tidak ditemukan');
          writeln;
        writeln;
        
end.