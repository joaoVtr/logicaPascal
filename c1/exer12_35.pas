{
    exer 1.12.36
    Fazer um programa que calcule e escreva a soma dos 20 primeiros termos da série:
    100/0! + 99/1! + 98/2! + 97/3!+...
}

var 
    deno,soma:real;
    nume,aux,auxDeno:longint;
begin
    soma:=0;
    deno:=1;
    nume:=100;
    aux:=1;
    auxDeno:=1;

    while(auxDeno<=20) do 
    begin
        aux:=1;
        deno:=1;
        while(aux<auxDeno) do 
        begin
            deno:=deno*aux;
            aux:=aux+1;
        end;
        writeln('Fat: ',nume,' / ',deno:3:2);
        soma:=soma+nume/deno;
        nume:=nume-1;
        auxDeno:=auxDeno+1;
    end;
    writeln('Soma Final: ',soma:3:2);
end.
