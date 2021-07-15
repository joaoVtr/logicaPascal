{
    exer 1.12.39 

    Fazer um programa para determinar e escrever o valor do seguinte somatório:
        S = x - x^2 / 3! + x^4 / 5! - x^6 / 7! + ...
    Usando os 20 primeiros termos do somatório. O valor de X é lido como unidade de entrada.
}

var i,xp,aux,aux2,x:longint;
    s,fat:real;

begin
    write('Informe o valor de x: ');
    readln(x);
    i:=0 ; 
    s:=x;
    xp:=2;
    fat:=1;
    aux:=3;
    aux2:=2;
    while(i<=18) do 
    begin
        fat:=fat * aux * aux2;
        if(i mod 2 = 0) then 
            s:= s - exp(xp * ln(x)) / fat
        else 
            s:= s + exp(xp * ln(x)) / fat;
        aux:=aux+2;
        aux2:=aux2+2;
        xp:=xp+2;
        i:=i+1;
    end;
    writeln('Final: ',s);
end. 