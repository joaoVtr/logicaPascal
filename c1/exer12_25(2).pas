{
    exer 1.12.25
    Fazer um programa que calcule e resolva a seguinte soma:
    (2^1/50)+(2^2/49)+(2^3/48)...+(2^50/1)
}

var num,deno,poten,aux,soma:longint;
    total:real;
begin
    deno:=50;
    num:=2;
    poten:=1;
    aux:=0;
    soma:=0;
    while (deno > 0) do 
    begin
        aux:=poten;
        while (aux>0) do 
        begin
            soma:=num+soma;
            aux:=aux-1
        end;
        total:=soma/deno;
        poten:=poten+1;
        soma:=0;
        deno:=deno-1;
    end;
    writeln('Valor Final: ',total:3:2);
end.