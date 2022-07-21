program No3;
uses crt;
type
    larik = array[1..11] of integer;
        
var
        data : larik = (15, 18, 23,30,33,41,45,48,53,60,72);
        q               : integer; // Query to find
        n,x,y,idx    : integer;
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
begin   
    clrscr;
    n := 11;
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