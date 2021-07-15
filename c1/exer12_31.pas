{
    Fzer um programa para calcular e escrever o valor do número (pi),
    com precisão de 0.0001, usando a série:

    pi = 4 - 4/3 + 4/5 - 4/7 + 4/9 - 4/11 

    *Para obter a precisão desejada, adicionar apenas os termos cujo valor absoluto seja maior ou 
    igual a 0.0001
}

var pi,auxAbs:real;
    deno,aux:longint;

begin 
    pi := 4; 
    aux := 1 ;
    auxAbs:=pi;
    deno := 3;
    while (abs(auxAbs)>0.0001) do 
    begin
        auxAbs := 4 /deno;
        if(aux = 1 ) then 
        begin
            pi := pi - auxAbs ;
            aux := 0
        end
        else if ( aux = 0) then 
        begin
            pi := pi + auxAbs;
            aux:= 1;
        end;
        deno := deno + 2;
        writeln('Pi: ',pi);
    end; 
end.