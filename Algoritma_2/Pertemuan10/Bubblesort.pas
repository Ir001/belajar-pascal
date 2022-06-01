Program Bubblesort;

uses crt;
 
const NPMLength = 12; 

var  
    nameStr, NPMStr   : String;
    nameLength        : integer;
procedure swap(var a, b: Char);
    var c:Char;
    begin
        c:=a;
        a:=b;
        b:=c; 
    end;

procedure bubbleSortNameAsc(var nameStr:String);
    var i, j : Integer;
    begin
        nameLength := length(nameStr); 
        for i := 1 to nameLength - 1 do
            begin  
                for j:=nameLength downto i+1 do
                begin
                    if(nameStr[j] < nameStr[j-1]) then  
                    swap(nameStr[j], nameStr[j-1]); 
                end 
            end
    end;

procedure bubbleSortNpmAsc(var a:string);
    var i, j : Integer;
    begin
       for i := 1 to NPMLength - 1 do
        begin  
            for j:=NPMLength downto i+1 do
            begin
                if(NPMStr[j] < NPMStr[j-1]) then  
                swap(NPMStr[j], NPMStr[j-1]); 
            end 
        end
    end;

begin  
    Write('Input your Name : '); ReadLn(nameStr);
    Write('Input your NPM : '); ReadLn(NPMStr);
    WriteLn('Name Before Sorted :', nameStr);
    WriteLn('NPM Before Sorted :', NPMStr);

    bubbleSortNameAsc(nameStr);
    bubbleSortNpmAsc(NPMStr);

    WriteLn('Name After Sorted :', nameStr);
    WriteLn('NPM After Sorted :', NPMStr);
end.