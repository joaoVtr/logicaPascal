{
    Exer 2.24 - P72

    Dada uma tabela de 4x5 elementos, calcular a soma de cada linha e a soma de 
    todos os elementos:
    Exemplo
        Mat = [[1,0,2,-1,3],[4,3,2,1,0],[1,-2,3,4,5],[8,5,1,3,2]]
        soma das linhas = 5, 10, 11, 19 = 45


    *****************
    Formatar Matriz no console:
        write(a[i,j]:3, ' ');
            writeln(' ');
}


Program SomaMatriz; 

var matriz: array[1..4, 1..5] of integer;
    somaLinha: array[1..4] of integer;
    i,j, somaFinal: integer;
begin 
    somaFinal:=0 ;
    for i:=1 to 4 do
    begin
        for j:=1 to 5 do 
            begin
                write('Linha: ',i,' coluna: ', j ,' = ');
                readLn(matriz[i,j]);
            end;
        somaLinha[i]:=0;
    end;

    for i:=1 to 4 do 
    begin
        for j :=1 to 5 do 
            somaLinha[i]:= somaLinha[i] + matriz[i,j];
        somaFinal:= somaFinal + somaLinha[i];
    end; 
    for i:=1 to 4 do 
        writeln(somaLinha[i]);
    write(somaFinal);
end.