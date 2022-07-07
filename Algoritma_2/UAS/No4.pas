program No4;
uses crt;
type
        larik = array[1..10] of integer;
var
        q               : integer; // Query to find
        data, sortData            : larik;
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
                write(divIndex);
                y:=1;
                for x:= y to divIndex do
                        begin
                                y:=divIndex;
                                if q = data[x] then
                                begin
                                        hasQ := true;
                                        indexFound := x;
                                end
                                else
                                begin
                                        if q < data[x] then
                                        lastIndex :=  x-1
                                        else
                                        activeIndex := x+1;
                                end;
                        end;
                       
            end;
            binary:=indexFound;
    end;

        


procedure sortingAsc; // Procedure for sorting
    var     min,sorting,k : integer;

    begin
    sortData := data;
    sorting:= 1; 
        for x:= 1 to n-1 do
        begin
        min:=x;
            for y:= sorting to n do
            begin
                    if sortData[y] < sortData[min] then
                    min:=y;

                    if sortData[x] <> sortData[min] then
                    begin
                    k:= sortData[x];
                end;

                    if sortData[x] > sortData[min]  then
                    begin
                            sortData[x] := sortData[min];
                            sortData[min]:= k;
                    end;
            end;
        sorting:=sorting+1;
        end;
        Write('Urutan ascending: ');
        for x:=1 to n do
          begin
                Write(sortData[x],',');
          end;
        WriteLn;
        x:=1
    end;
procedure sortingDesc; // Procedure for sorting
    var     min,sorting,k : integer;

    begin
    sorting:= 1; 
    sortData := data;

        for x:= 1 to n-1 do
        begin
        min:=x;
            for y:= sorting to n do
            begin
                    if sortData[y] > sortData[min] then
                    min:=y;

                    if sortData[x] <> sortData[min] then
                    begin
                    k:= sortData[x];
                end;

                    if sortData[x] < sortData[min]  then
                    begin
                            sortData[x] := sortData[min];
                            sortData[min]:= k;
                    end;
            end;
        sorting:=sorting+1;
        end;
        Write('Urutan descending: ');
        for x:=1 to n do
          begin
                Write(data[x],',');
          end;
        WriteLn;
        x:=0;

    end;
begin   
        clrscr;
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
        sortingAsc; // Execute Procedure named sorting
        sortingDesc; // Execute Procedure named sorting
    for x:= 1 to n do
      
        writeln('Data ke-',x,' : ',data[x],' ');
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