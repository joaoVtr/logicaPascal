{
    exer 1.12.40

    Fazer um programa que: 
    a) Calcule o valor do co-seno de x atrvés de 20 termos da série a seguir:
        co-seno (x) = 1 - x^2/2! + x^4/4! - x^6/6! + x^8/8! ...
    b) Calcule a diferença entre o valor calculado no item A e o valor fornecido pela funcao Cos(X);
    c)Imprima o que foi calculado nos itens A e B.
    obs: O valor de x é fornecido como entrada
}

var 
	fat,coseno,aux1,aux2:real;
	x,i,pot:longint;
begin	
	write('Valor de x: ');
	readln(x);
	coseno:=1;
	pot:=2;
	i:=1;
	fat:=1;
	aux1:=1;
	aux2:=2;
	while(i<=19) do 
	begin
		fat:=fat*aux2*aux1;
		if(i mod 2 = 1 ) then 
		begin
			coseno:=coseno-exp(pot * ln(x)) / fat;
			writeln('I i: ',i);
		end
		else
		begin
			coseno:=coseno + exp(pot * ln(x)) / fat;
			writeln('P i: ',i);
		end;
		i:=i+1;
		pot:=pot+2;
		aux2:=aux2+2;
		aux1:=aux1+2;
	end;
		writeln('Diferenca: ',coseno-Cos(x):3:2);
		writeln('Conseno: ', coseno:3:2);
		writeln('F Cos(x): ',Cos(x):3:2);
end. 