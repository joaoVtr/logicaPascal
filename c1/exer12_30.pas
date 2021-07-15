{
    Escrever um programa para gerar e escrever uma tabela com os valores do seno de um ângulo A em radianos,
    ultiliznado a séir de Mac-Laurin truncada, apresentada a seguir:
    sen A = A - A^3/6 + A^5/120 - A^7/5040;
    Condições: os valores dos ângulos A devem variar de 0.0 a 6.3, inclusive de 0.1 em 0.1
 }
 var senA,A:real;
 begin
     senA:=0;
     A:=0.1;
    while(A<=6.3) do 
    begin
        senA:=A - ((exp(3 * ln(A)))/6) + ((exp(5 * ln(A)))/120) - ((exp(7 * ln(A)))/5040);
        writeln('Angulo: ',A:3:2, ' SenA: ',senA:3:2); 
        A:=A+0.1;
    end;
 end.