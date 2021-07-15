{
    Fazer um programa que calcule e escreva a soma dos 30 primeiros termos da serie:
    480/10 - 475/11+470/12 - 465/13 + ...
}

var num,deno:longint;
    soma:real;
begin
    soma:=0;
    num:=480;
    deno:=10;

    while(deno<=40) do 
    begin
        if((deno mod (2) = 0))then 
            soma:=soma + num/deno
        else if ((deno mod (2) = 0)) then 
            soma:=soma - num/deno;
        num:=num-5;
        deno:=deno+1;
    end;
    writeln('Soma: ',soma:3:2);
end.