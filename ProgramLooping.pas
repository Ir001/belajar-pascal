Program ProgramLooping;
uses crt;
var
    multiple, limit, i: Integer;
begin
    clrscr;
    writeln('Nama : Irwan Antonio');
    writeln('NPM : 202143500224');
    write('Input angka kelipaan: '); readln(multiple);
    write('Input batasan angka kelipatan: '); readln(limit);
    i :=multiple;
    while(i <= limit) do
      begin
        write(i,' ');
        i:=i+multiple;
      end;
    readln;  
end.
