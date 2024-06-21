{
 Exer 2.24 - P72
Dada uma tabela de 4x5 elementos, calcular a soma de cada linha 
e a soma de todos os elementos. 
A fim de ilutar esse problema, pode-se considerar o seguinte esquema 
}

Program Soma; 

var mat: array[1..4, 1..5] of integer; 
i,j,somaLinha,total: integer; 

begin
    total :=0; 
    for i:=1 to 4 do 
        for j:=1 to 5 do
        begin 
            write('Linha: ',i,' coluna: ', j ,' = ');
            readln(mat[i,j]);
        end; 
    for i:= 1 to 4 do
    begin
        somaLinha := 0; 
        for j:= 1 to 5 do 
        somaLinha := somaLinha + mat[i,j]; 
        writeln('Linha ', i, ': ', somaLinha);
        total := total + somaLinha;
    end; 
    writeln('total = ', total);
end.