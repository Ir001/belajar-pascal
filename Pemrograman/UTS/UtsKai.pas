Program UtsKai;
uses crt;
var
    classType:string;
    pasenger,rate:real;
begin
    {  UTS 202143500224 Irwan Antonio P1 S1C 2021 }
    clrscr;
    write('Jenis Kelas : '); readln(classType);
    write('Jenis Penumpang : '); readln(pasenger);
    case(classType) of 
        'Ekonomi':
            begin
                if(pasenger > 5) then
                    begin
                        rate:=pasenger*80000;
                    end
                else
                    begin
                        rate:=pasenger*100000;
                    end;
            end;
        'Eksekutif':
            begin
                if(pasenger > 5) then
                    begin
                        rate:=pasenger*400000;
                    end
                else
                    begin
                        rate:=pasenger*500000;
                    end;
            end;
    end;
    write('Total tarif yang harus dibayarkan adalah Rp.',rate:0:0);
end.
