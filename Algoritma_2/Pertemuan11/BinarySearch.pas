program BinarySearch;
uses crt;

var
        q               : integer; // Query to find
        data            : array[1..10] of integer;
        n,x,y,idx    : integer;
        pilih           : char;
function binary(q: integer):integer;
    var
            activeIndex,lastIndex,divIndex: integer;
            hasQ:boolean;
            indexFound: integer;
    begin
            activeIndex := 1; // Active Index on loop
            lastIndex := n; // Last index of array
            hasQ :=false; // Variable flag if query was found or not
            indexFound := 0; // Index was search by query
            while ((activeIndex <= lastIndex) and (not hasQ)) do 
            begin
                divIndex:= (activeIndex+lastIndex) div 2;
                if q = data[divIndex] then
                    begin
                            hasQ := true;
                            indexFound := divIndex;
                    end
                else
                    begin
                            if q < data[divIndex] then
                            lastIndex :=  divIndex-1
                            else
                            activeIndex := divIndex+1;
                    end;
            end;
            binary:=indexFound;
    end;


procedure sorting; // Procedure for sorting
    var     min,sorting,k : integer;

    begin
    sorting:= 1; 
        for x:= 1 to n-1 do
        begin
        min:=x;
            for y:= sorting to n do
            begin
                    if data[y] < data[min] then
                    min:=y;

                    if data[x] <> data[min] then
                    begin
                    k:= data[x];
                end;

                    if data[x] > data[min]  then
                    begin
                            data[x] := data[min];
                            data[min]:= k;
                    end;
            end;
        sorting:=sorting+1;
        end;
    end;
begin   
    writeln('========================================');
    writeln('           Binary Search                ');
    writeln('    202143500224 | Irwan Antonio        ');
    writeln('========================================');
    write('Jumlah data : '); readln(n);
    writeln;
            for x:= 1 to n do
            begin
            write('Indeks[',x,'] : '); readln(data[x]);
            end;
            writeln;
    sorting; // Execute Procedure named sorting
    writeln('Data setelah diurutkan : ');
    for x:= 1 to n do
        writeln('Index[',x,'] : ',data[x],' ');
        writeln;
        write('Cari     : '); readln(q);
        idx:=binary(q); // Find index of query value
        if idx <> 0 then
        begin
                writeln('Data yang dicari : ',q);
                writeln('Ditemukan pada idx ke-',idx);
        end
        else
                write(q,' Tidak ditemukan');
end.