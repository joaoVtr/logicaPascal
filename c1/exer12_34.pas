{   
    exer 1.12.34

    Fazer um programa que calcule e escreva o valor de S no seguinte somatorio:
    S= 1/225 - 2/196 + 4/ 169 - 8/144 + ... + 16.384/1
}
var 
    deno,nume,aux:longint;
    soma:real;
begin
    deno:=15;
    nume:=1;
    aux:=0;
    soma:=0;
    
    while (deno >= 1) do 
    begin
    if((aux)mod(2) =0 ) then 
    begin
        soma:=soma+ nume / exp(2 * ln(deno));
        aux:=1;
    end
    else
    begin
        soma:=soma -  nume / exp(2 * ln(deno));
        aux:=0;
    end;
    deno :=deno - 1;
    nume:=nume*2;
    end;
    writeln('Resposta Final: ',soma:3:2);
end.