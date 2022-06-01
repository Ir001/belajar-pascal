Program Bubblesort;

uses crt;
 
const panjangNPM = 12; 

var  
    namaMahasiswa, NPM   : String;
    nameLength        : integer;
procedure tukar(var a, b: Char);
    var c:Char;
    begin
        c:=a;
        a:=b;
        b:=c; 
    end;

procedure bubbleSortName(var namaMahasiswa:String);
    var i, j : Integer;
    begin
        nameLength := length(namaMahasiswa); 
        for i := 1 to nameLength - 1 do
            begin  
                for j:=nameLength downto i+1 do
                begin
                    if(namaMahasiswa[j] < namaMahasiswa[j-1]) then  
                    tukar(namaMahasiswa[j], namaMahasiswa[j-1]); 
                end 
            end
    end;

procedure bubbleSortNpm(var a:string);
    var i, j : Integer;
    begin
       for i := 1 to panjangNPM - 1 do
        begin  
            for j:=panjangNPM downto i+1 do
            begin
                if(NPM[j] < NPM[j-1]) then  
                tukar(NPM[j], NPM[j-1]); 
            end 
        end
    end;

begin  
    Write('Masukan Nama Anda : '); ReadLn(namaMahasiswa);
    Write('Masukan NPM  Anda: '); ReadLn(NPM);
    WriteLn;
    WriteLn('Nama Sebelum Sorted :', namaMahasiswa);
    WriteLn('NPM Sebelum Sorted :', NPM);
    WriteLn;
    bubbleSortName(namaMahasiswa);
    bubbleSortNpm(NPM);
    WriteLn;

    WriteLn('Nama Setelah Sorted :', namaMahasiswa);
    WriteLn('NPM Setelah Sorted :', NPM);
end.