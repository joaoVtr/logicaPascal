{
    exer 1.12.27
    Fazer um programa que calcule e escreva o valor de S onde:
    S = 1/1 - 2/4 + 3/9 - 4/16 +5/25 - 6/36 ... -10/100
}
var soma:real;
    num,v_par:longint;
    deno:extended;

begin
    v_par:=2;
    soma:=0;
    num:=1;
    deno:=1;
    while(num<=10) do
    begin
        writeln('-----');
        deno:= Trunc((Exp(2 * LN(num))));
        writeln('Num: ',num); 
        writeln('deno: ' ,deno:3:2);
        if ((v_par mod (2) = 0))then
        begin 
            soma:=soma + num / deno;
            writeln('Soma: ',soma:3:2);
            v_par:=1;
        end
        else if((v_par mod (2) = 1))then
        begin
            soma:= soma - num / deno;
            writeln('Soma: ',soma:3:2);
            v_par:=2;
        end;
        num:=num+1;
       
    end; 
    writeln('Soma Final: ',soma:3:2);
end.