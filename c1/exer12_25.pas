{
    exer 1.12.25
    Fazer um programa que calcule e resolva a seguinte soma:
    (2^1/50)+(2^2/49)+(2^3/48)...+(2^50/1)
}

var num,deno,aux:longint;
    total:real;
begin
    deno:=50;
    num:=2;
    aux:=1;
    while (deno > 0) do 
    begin
        total:=(Exp(aux*LN(num))/deno);
        deno:=deno-1;
        aux:=aux+1;
    end;
    writeln('Valor Final: ',total:3:2);
end.