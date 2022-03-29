Program Nomor3;

uses crt;
var
    xx, yy, baris : Integer;
begin
    clrscr;
    WriteLn('Input jumlah baris :'); 
    ReadLn(baris);
    Write('=========================================');
    WriteLn();
    for xx:=1 to baris do
        begin
           for yy:=1 to xx do
             begin
                if(xx mod 2 = 0 ) then
                    if(yy mod 2 = 0) then 
                        Write('X ')
                    else
                        Write('0 ')
                else 
                    if(yy mod 2 = 0) then 
                        Write('0 ')
                    else
                        Write('X ');                    
             end;
            WriteLn();
        end;
    WriteLn();
    ReadLn
end.