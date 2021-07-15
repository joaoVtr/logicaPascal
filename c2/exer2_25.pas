{
    Exer 2.25 - P73

    Uma certa fábrica produziu dois tipos de motores M1 e M2 nos meses de janeiro
    e dezembro, e o número de motores foi registrado na tabela a seguir:

    M1 = J:30, F:5, M: 7, D:18
    M2 = J:20. F:10, M: 15, D: 25

    O setor de controle de vendas tem uma tabela de custo e lucro (em mil reais)
    obtidos por cada motor:
    M1 = Custo:10, Lucro:3
    M2 = Custo:15, Lucro:2

    Fazer um programa que, a partir da produção mensal de motores M1 e M2 e seus 
    respectivos custos e lucros, calcule o custo e o lucro em cada um dos meses 
    e o custo e o lucro anuais. Para saber o custo e o lucro nos meses de janeiro a 
    dezembro, basta que se faça o produto matricial das duas tabelas.
    A mutiplicação de duas matrizes A e B só é possível se o número de colunas da 
    matriz A for igual ao número de linhas da matriz B. Assim, se A é uma matriz 
    MxN e B, uma matriz NxP, a multiplicação será possível, e o produto será uma
    matriz C, MxP.

    *****************
    Formatar Matriz no console:
        write(a[i,j]:3, ' ');
            writeln(' ');
}

Program Custos; 

var result ,producao : array[1..12, 1..2] of integer; 
    valores: array[1..2, 1..2] of integer;
    tempC, tempL, j, i, k: integer; 

begin
    for i:=1 to 12 do 
        for j:=1 to 2 do 
        begin 
            write('Mes: ', i, ' -  Motor: ', j, ' - Valor: ');
            readln(producao[i,j]);
            result[i,j]:= 0;
        end;
    writeln('Tipo -> Custo 1, Lucro 2');
    for i:=1 to 2 do 
        for j:=1 to 2 do 
        begin
            write('Motor -> ',i , ' Tipo: ',j, ' - Valor: ');
            readln(valores[i,j]);
        end;

    for i:= 1 to 2 do 
    begin
        for j:=1 to 2 do 
            write(valores[i,j], ' ');
            writeln(' ');
    end;
    writeln(' -- ');
    for i:=1 to 12 do
    begin
        for j:=1 to 2 do 
        begin 
            tempL:= 0 ;
            tempC:= 0 ;
            for k:=1 to 2 do 
            begin
                if(i=1) then 
                begin
                    writeln(producao[i,k] , valores[k, 1]);
                    writeln(producao[i,k] , valores[k, 2]);
                end;
                tempC:= tempC + producao[i,k] * valores[k, 1];
                tempL:= tempL + producao[i,k] * valores[k, 2]; 
            
            end;
            if(i=1) then 
            begin
                writeln(tempC);
                writeln(tempL);
            end;
        end;
        result[i,1]:= result[i,1] + tempC;
        result[i,2]:= result[i,2] + tempL;
    end;
    writeln(' -- ');
    for i:= 1 to 12 do 
    begin
        for j:=1 to 2 do 
            write(result[i,j], ' ');
            writeln(' ');
    end;
end.    