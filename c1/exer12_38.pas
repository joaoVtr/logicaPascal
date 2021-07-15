{
   exer 1.12.38

    Fazer um programa que calcule o valor de e^x através da série:

    e^x = x^0 + x^1 / 1! + x^2 /2! + x^3 / 3! + ...

    De modo que o mesmo difira o valor calculado através da funcção Exp de , no máximo, 0,0001. 
    O valor de X deve ser lido de uma unidade de entrada. O programa deverá escrever o valor de x, o valor calculado
        através da série, o valor dado pela função Exp e o número de termos utilizados da série. 
}

var fat,num ,ex,aux:real;
    x,i:longint;

begin
    write('Valor inicial de x: ');
    readln(x);
    ex:=1;  
    aux:=1;
    fat:=1;
    i:=1;
    num:=1;
    while (aux > 0.0001) do 
    begin
        fat:=fat * i;
        num:=x * num;
        aux:= num / fat; 
        ex:=ex+aux;
        i:=i+1;
    end; 
    writeln('Valor de X: ',x);
    writeln('Valor da serie: ',ex:3:3);
    writeln('Valor da funcao exp: ',exp(x):3:3);
    writeln('Numero de termos utilizados: ',i);
end.