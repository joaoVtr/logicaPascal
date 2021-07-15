{
    exeer 1.12.37

    Fazer um programa que calcule e escreva a soma dos 50 primeiros termos da série:
    1!/1 - 2!/3 + 3!/7 + 4!/15 + 5!/31 ...

}
var 
    i,den:longint;
    s,num,fat:real;
begin
    i := 0; 
    num:=1;
    fat:=1;
    den:=1;
    s:=0;

    while (i<50) do 
    begin
        if(i mod 2 = 0) then 
            s:=s+num/den
        else
            s:=s-num/den;
        den:=den*2+1;
        fat:=fat+1;
        num:=num*fat;
        i:=i+1;
    end;
    writeln('Soma: ',s:3:2);
end.