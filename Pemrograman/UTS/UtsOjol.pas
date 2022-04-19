Program UtsOjol;
uses crt;
var
    customer:string;
    range,rate:real;
begin
    {  UTS 202143500224 Irwan Antonio P1 S1C 2021 }
    clrscr;
    write('Nama Customer: '); readln(customer);
    write('Jarak yang akan ditempuh (Km): '); readln(range);
    if(range > 4) then
        begin
            rate:=(range-4)*2500+9500;
        end
    else
        begin
            rate:=9500;
        end;
    write('Tarif yang harus dibayar ',customer, ' adalah sebesar ',rate:0:0);
end.
