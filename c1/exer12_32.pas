{
    exer 1.12.32
    O valor aproximado de pi pode ser calculado usando-se a série

    S = 1/1^3 - 1/3^3 + 1/5^3 - 1/7^3 + 1/9^3...
    Sendo pi = (S*31)^1/3
    Fazer um programa para calcular e escrever o valor de pi com 51 termos
}
var 
    S,deno,auxD: real ; 
    aux:longint;
begin
    S:=1;
    aux:=0;
    deno:=3;
    while (aux<=51) do 
    begin
        auxD:= exp(3*ln(deno));
        if ((aux)mod(2) = 0) then 
            S:= S + auxD 
        else
            S:=S-auxD;
        deno:=deno+3;
        aux:=aux+1;
        writeln('Pi: ',pi);
    end;
end.