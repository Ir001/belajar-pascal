program DataBilanganPrima;
uses crt;
const
    max = 15;
type 
    larik = array[1..max] of integer;
var
    i, idx, bilangan, searchPrima, indexFound : integer;
    bilanganPrima : larik;

function binarySearch(q :integer; n : integer):integer;
    var  
        left,mid,right,i,idx:integer;
        found :boolean;
    begin
        left:=n;
        right:=1;
        found:=false;
        idx := -1;
        while not(found) do
            begin
                mid:=(left + right) div 2;
                If bilanganPrima[mid]=q then
                    begin
                        found:=true;
                        idx := mid;
                    end
                else if (q < bilanganPrima[mid]) then
                    left := mid - 1
                else right:= mid+1;
                    if (right > left) then
                        begin
                            found:=true;
                        end;
            end;
        binarySearch:= idx;
    end;
    
function isPrima(bilangan : integer): Boolean;
    var 
        x, prima: integer;
    begin
      prima := 0;
      for x:=1 to bilangan do
        begin 
            if(bilangan mod x = 0) then
                prima:= prima+1;
        end;
      if(prima = 2) then
        begin
          isPrima := True;
        end
      else
        isPrima := False;
    end;


 begin
    clrscr;
    idx := 0;
    for i:=1 to 15 do
      begin
        if(isPrima(i) = True) then
            begin
                idx:=idx+1; 
                bilanganPrima[idx] := i;
            end;
      end;
    WriteLn('Data Bilangan Prima :');
    for i:= 1 to idx do
      Write(bilanganPrima[i],', ');
    WriteLn;
    Write('Cari  :'); Read(searchPrima);
    indexFound := binarySearch(searchPrima, idx);
    if(indexFound > -1) then
      WriteLn('Bilangan Prima ', searchPrima,' ditemukan pada index ke-',indexFound)
    else
      WriteLn('Bilangan Prima ', searchPrima,' tidak ditemukan');
end.