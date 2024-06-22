{
Exer 2.26 - P75

//Programa quebrado - Refazer
Na loteria esportiva da década de 80, o jogador tinha que escolher resultado para 16 jogos. 
Esrever um programa que leia os palpites de uma jogador na loteria esportiva e calcule 
o valor a ser pago pelo apostador. O programa deverá ler e imprimir os dados referentes ao teste e
ao revendedor como especificado a seguir 
O valor a ser pago é calculado por: Valor = V * 2 **d * 3 **t
onde: V = Constante a ser lida; D = Número de palpites duplos; T = Número de palpites triplos. 

A estrutura de dados a ser manipulada pelo programa consiste principalmente em duas variáveis compostas 
bidimensionais esquematizadas a seguir: 

A matriz de apostas conterá X na coluna correspondente ao palpite dos apostadores em cada uma 
das linhas correspondente a cada jogo. 

}

program Esportiva; 

var apostas: array[1..3, 1..16] of string[1]; 
nrev: string[12];
napostas: string[24];
nmaq: string[8];
d,i,j,n,nteste,t: integer; 
v, valor: real; 

begin
readln(nteste, nmaq);
readln(nrev, napostas, v);
for j:= 1 to 16 do 
begin
    for i:= 1 to 3 do 
    read(apostas[i,j]);
    readln;
end; 

d:=0;
t:=0; 

for j:=1 to 16 do
begin
    n:= 0; 
    if(apostas[1,j])= 'x'
        then n:= n + 1; 
    if(apostas[2,j])= 'x'
        then n:= n + 1; 
    if(apostas[3,j])= 'x'
        then n:= n + 1;
    if n=3
        then t:= t +1
        else if n = 2 
            then d:= d + 1 
end;

valor := v * exp(d*ln(2) ) * exp (t * ln(3));
writeln('Loteria Esportiva Federal - Teste', nteste);
writeln; 
writeln('Rev ', nrev, ' Maq ', nmaq:8);
writeln('Bilhete N. ', napostas);
writeln; 
writeln(' -Prognosticos - '); 
writeln(' 11111');
writeln(' Jogos 1 até 16');

write('col 2/');
for j:= 1 to 16 do
    if apostas[3,j] = 'x'
        then write(' ', apostas[3, j])
        else write (' ');
writeln; 

write('col x/');
for j:= 1 to 16 do
    if apostas[2,j] = 'x'
        then write(' ', apostas[2, j])
        else write (' ');
writeln; 

write('col 1/');
for j:= 1 to 16 do
    if apostas[1,j] = 'x'
        then write(' ', apostas[1, j])
        else write (' ');
writeln; 

writeln('Valor Pago: ', valor:5:2);

end.
