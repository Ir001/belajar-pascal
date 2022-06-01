Program Matrix2;
uses crt;
type
    matrixabc = array[0..2, 0..2] of Integer;
var
    A, B, C : matrixabc;
    i, j : Integer;
begin
    clrscr;
    A[0,0] := 1;
    A[0,1] := 2;
    A[0,2] := 3;
    A[1,0] := 4;
    A[1,1] := 5;
    A[1,2] := 6;
    A[2,0] := 3;
    A[2,1] := 2;
    A[2,2] := 1;

    B[0,0] := 6;
    B[0,1] := 5;
    B[0,2] := 4;
    B[1,0] := 3;
    B[1,1] := 2;
    B[1,2] := 1;
    B[2,0] := 4;
    B[2,1] := 5;
    B[2,2] := 6;
    for i:=0 to 2 do
        begin
          for j:=0 to 2 do
            begin                  
                // Perhitungan Matrix
                C[i,j] := A[i,j] + B[i,j];
                Write(' C[',i,',',j,']','=',C[i,j]);
                Write(' = ');
                Write(' A[',i,',',j,']','=',A[i,j]);
                Write(' + ');
                Write(' B[',i,',',j,']','=',B[i,j]);
                WriteLn();
            end;
        end;
        
end.