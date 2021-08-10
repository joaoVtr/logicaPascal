{
    Exer 2.2.2.2.2
    
    Fazer um programa que efetue um produto matricial. Seja A(m X n) e B (n X m)
    as matrizes-fatores, sendo m<=40 e n<=70. Deverão ser impressas as matrizes A, B e a matriz-produto obtida.
    
}

Program ProdutoMatriz;

var m, n, i, j, k: integer;
    A, B, result : array [1..70, 1..70] of integer;
    aux: integer;
    
begin 
    write('Valor m: ');
    readln(m);
    write('Valor n: ');
    readln(n);

    for i:=1 to m do 
        for j:=1 to n do 
        begin
            write('Matriz A - Linha ',i,' Coluna: ',j,' -: ');
            readln(A[i,j]);
            write('Matriz B - Linha ',j,' Coluna: ',i,' -: ');
            readln(B[j,i]);
        end;
        
     for i:=1 to m do 
        for k:= 1 to m do
        begin
        aux := 0;
            for j:=1 to n do 
            begin
                aux := aux + A[i,j] * B[j ,k];
            end;
        result[i,k] := aux;
        end;
    for i:=1 to m do 
    begin
        for j:=1 to n do
            write(A[i,j]:3, ' ');
            writeln(' ');
    end;
    writeln('----');
    for i:=1 to n do 
    begin
        for j:=1 to m do
            write(B[i,j]:3, ' ');
            writeln(' ');
    end;
    writeln('----');

    writeln('--Resultado--');
    for i:=1 to m do 
    begin
        for j:=1 to m do
            write(result[i,j]:3, ' ');
            writeln(' ');
    end;
    writeln('----');
end.