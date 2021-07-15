{
    exer 1.12.26 
    Fazer um programa para calcular e escrever a seguinte soma:
    S = (37*38)/1 + (36*37)/2 + (35*36)/3 +...+ 1*2/37
}

var soma :Real;
    deno,num1,num2:longint;

begin
    deno:=1;
    num1:=37;
    num2:=38;
    soma:=0;
    while (deno <=37) do 
    begin
        soma := (num1*num2)/deno;
        num1 := num1 - 1;
        num2 := num2 - 1;
        deno := deno + 1;
    end;
    writeln('Total: ',soma:3:2);
end.