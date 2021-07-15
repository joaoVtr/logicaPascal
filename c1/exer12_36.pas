{
    exer 1.12.36

    Elaborar um programa que:
    a)calcule e escreva o valor da série abaixo com precição menor que um décimo de milionésimo (0,0000001);
    b)indique quantos termos foram usados.

    S= 63 + 61/1! + 59/2! + 57/3! + ...
}

var 
    s,aux:real;
    num,fat,auxFat,total:longint;
begin
    aux:=1;
    num:=63;
    s:=num;
    fat:=1;
    auxFat:=1;
    total:=0;
    while (aux>=0.0000001) do 
    begin
        num:=num-2;
        fat:=fat*auxFat;
        aux:=num/fat;
        s:=s+aux;
        auxFat:=auxFat+1;
        total:=total+1;
        writeln('Tatal de termos: ',total);
    end;
    writeln('Tatal de termos: ',total);
    writeln('Soma Final: ',s:3:2);
end.