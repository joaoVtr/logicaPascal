{
    Exer 1.12.24
    Fazzer um programa que escreva e calcule  o valor de S:
        S = (1/1) + (3/2) +(5/3) + (7/4) + ... +(90/50)
}
var S:real;
    nume, deno:longint;
begin 
    nume:=1;
    deno:=1;
    while ( deno<=50) do 
    begin
        S:=nume/deno;
        writeln(nume,' / ',deno,' : ',S:3:3);
        nume:=nume+2;
        deno:=deno+1;
    end;
    writeln('Somatorio final: ',S:3:3);
end. 
