Program Nomor2;
uses crt;
var
    x,y : Integer;
begin
    clrscr;
    x:=5;
    y:=10;  
    // Selama X lebih dari 0
    // Maka lakukan perintah y = y-x dan x = x-1
    // Jika di-breakdown, pada setiap perulangan terdapat proses seperti:
    // y = 10 - 5
    // x = 5-1
    // y = 5 - 4
    // x = 4 - 1
    // y = 1 - 3
    // x = 3 - 1
    // y = -2 - 2
    // x = 2 - 1
    // y = -4 - 1
    // x = 1 - 1
    // Lalu jika x <= 0 maka tampilkan nilai y

    while (x > 0) do 
       begin
            y:=y-x;
            x:=x-1;
       end;
    Write(y);
end.