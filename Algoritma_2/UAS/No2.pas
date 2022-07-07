Program No2;

uses crt;
type
    larik = array[1..6] of integer; { Inisialisasi array}
const 
    limit = 6;
    data : larik = (36, 90, 18,72, 81,45); {Inisialisasi nilai array}
var
    x : integer;

procedure swap(var a, b: integer);
    var c:integer;
    begin
        c:=a;
        a:=b;
        b:=c; 
    end;
procedure bubbleSortDesc(var data:larik);
    var i, j : Integer; {Inisialisasi variable}
    begin
       for i := 1 to 5 do { Ulangi Program dibawah selama i 1 sampai 5}
        begin  
            for j:=6 downto i+1 do { Ulangi Program dibawah selama j 6 sampai hasil kalkulasi i+1}
            begin
                if(data[j] > data[j-1]) then  {pemeriksaan jika nilai array j lebih besar dari array yang sebelah kiri}
                swap(data[j], data[j-1]); {memangil fungsi swap untuk menukar posisi jika kondisi atas terpenuhi}
            end 
        end
    end;

begin  
    clrscr; { Clear Screen}
    bubbleSortDesc(data); {Memanggil Function bubblesort desc}
    Write('Hasil Descending : ');
    {Menampilkan hasil sorting descending}
    for x:=1 to 6 do
      Write(data[x],', ');
end.