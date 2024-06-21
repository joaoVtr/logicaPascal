{
Exer 2.25 - P73

Uma certa fábrica produziu dois tipos motores M1 e M2 nos meses de janeiro a dezembro,
e o número de motores foi registrado na tabela a seguir: 

O setor de controle de vendas tem uma tabela do custo e do luibro (em mil reais)
obtidos com cada motor ; 

Fazer um programa que, a partir da produção mensal de motores M1 e M2 e seus 
respectivos custos e lucros, calcule o custo e o lucro de em cada um dos meses e 
o custo e o lucro anuais. Para saber o custo e o lucro em meses de janeiro a dezembro, 
basta que se faça o produto matricula das duas tabelas. 
A multiplicação de duas matrizes A e B só é possível se o número de colunas da 
matriz A for igual ao número de linhas da matriz B. Assim, se A é uma matriz M x N e 
B, matriz N x P, a multiplicaçào será possível, e o produto será uma matriz C, M x P, cujos 
elementos são calculados através da seguinte fórmula:
}

program Curstos; 

var producao{messes}, clm: array[1..4, 1..2] of integer;
valores: array[1..2,1..2] of integer;
cla: array[1..2] of integer;
i,j,k:integer; 
begin
for i:=1 to 4 do 
    for j:= 1 to 2 do 
        begin
            write('Linha: ',i,' coluna: ', j ,' = ');
            readln(producao[i,j]);
        end;
for i:= 1 to 2 do 
    for j:=1 to 2 do 
    begin
        write('Linha: ',i,' coluna: ', j ,' = ');
        readln(valores[i,j]);
    end;

for i:= 1 to 4 do 
    for j:=1 to 2 do 
    begin
        clm[i,j] := 0 ; 
        for k:= 1 to 2 do 
            clm[i,j] := clm[i,j] + producao[i,k] * valores[k,j];
    end;    

for j:=1 to 2 do 
begin
    cla[j] := 0;
    for i:= 1 to 4 do 
        cla[j] := cla[j] + clm[i,j]; 
end;

for i:= 1 to 4 do 
begin 
    for j:= 1 to 2 do 
        write(clm[i,j]:10);
        writeln;
end; 
writeln('Custo Anual: ', cla[1], ' Lucro Anual: ', cla[2]);
end. 