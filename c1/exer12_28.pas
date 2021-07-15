{
    exer 1.12.28
    Fazer um programa que calcule e escreva a soma dos 50 primeiros termos da seguinte serie:
    1000/1 - 997/2 + 994/3 - 991/4...
}

var num,deno:longint;
    soma:real;

begin
    num:=1000;
    deno:=1;
    soma:=0;
    while (deno<=50) do 
    begin
        if((deno mod (2) = 0)) then
            soma:=soma + num/deno
        else if((deno mod (2) = 1)) then 
            soma :=soma - num/deno;
        deno:=deno+1;
        num:=num-3;
    end; 
    writeln('Soma: ',soma:3:2);
end.