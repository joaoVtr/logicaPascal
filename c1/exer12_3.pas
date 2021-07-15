{
	1.12.3

	A conversão de graus Farenheit para centígrados é obtida por:
	c=5/9(f-32)

	Fazer um programa que calcule e escreva uma tabela de centigrados em
	função de graus farenheit, que variam de 50 a 150 de 1 em 1
}
program Conversao;
var f:longint;
	c:real;
begin


for f:=50 to 150 do 
	begin 
	c:=5/9 * (f-32);
	writeln('F: ',f);
	writeln('C: ',c:3:2);
	writeln();

	end;
end.