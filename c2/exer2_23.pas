{
    Exer 2.23 - P72

    Escrever um programa que leia uma matriz 4X4, multiplique os elementos
    da diagonal principal por uma constante K, também lida, e escreva a matriz
    resultante. 

    Sejam A a matriz, descriata a seguir K = 3 .

    A = [[1,5,9,13],[2,6,10,14],[3,7,11,15],[4,8,12,16]]
    Diagonal A x K = [[3,5,9,13],[2,18,10,14],[2,7,33,15],[4,8,12,48]]

    Formatar Matriz no console:
        write(a[i,j]:3, ' ');
            writeln(' ');
}

Program Diagonal; 

var a: array[1..4 , 1..4] of integer;
    i, j, k: integer;

begin
    write('Valor da constante: ');
    readln(k);
    for i:=1 to 4 do 
        for j:=1 to 4 do
        begin 
            write('Linha: ',i,' coluna: ', j ,' = ');
            readln(a[i,j]);
        end;
    
    for i:=1 to 4 do 
    begin
        for j:=1 to 4 do
            if(i=j) then 
                a[i,j] := a[i,j] * k  
    end;


    for i:=1 to 4 do 
    begin
        for j:=1 to 4 do
            write(a[i,j]:3, ' ');
            writeln(' ');
    end;
end.