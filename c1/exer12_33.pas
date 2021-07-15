{   
    exer 1.12.33

    Fazer um programa que:
    a) Leia o valor de X de uma unidade de entrada;
    b) Caulcule e escreva o valor do seguinte somatório:

    X^25 / 1 - X^24/2 + X^23 / 3 - X^22/4 + ... + X/25
}
var resp,aux:real; 
    x,deno,pot:longint;
begin
    deno:=1;
    write('Valor desejado: ');
    readln(x);
    pot := 25;
    resp :=0;
    while(deno<=25) do 
    begin
        aux:=exp(pot*ln(x));
        if ((deno)mod(2)= 0 )then 
        begin
            resp:=resp+aux/deno;
            writeln('aux',deno);
        end
        else 
        begin
            resp:=resp-aux/deno;
            writeln('aux',deno);
        end;
        pot:=pot-1;
        deno:=deno+1;
    end;
    writeln('Resposta: ',resp);
end.    