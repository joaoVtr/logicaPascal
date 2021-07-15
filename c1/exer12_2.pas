{
	1.12.2

	Tem-se um conjunto de dados contendo a altura e o sexo (masculino,
	feminino) de 50 pessoas. Fazer um programa que calcule e escreva:
		-A maior e a menor altura do grupo;
		-A média de altura das mulheres.;
		-O número de homens
}

program Dados;

var sexo:char;
	media:real;
	altura,maiorA,i,total,menorA,homens,mulheres:longint;

begin
	maiorA:=0;
	menorA:=0;
	homens:=0;
	media:=0;
	total:=0;
	mulheres:=0;
	for i:=0 to 4 do
	begin

	write('Sexo: ');
	readln(sexo);
	write('Altura: ');
	readln(altura);
	writeln();

		if i=0 then 
		begin
		maiorA:=altura;
		menorA:=altura;
		end

		else if (altura>maiorA) then
		maiorA:=altura

		else if (altura<menorA) then
		menorA:=altura;

		if sexo='m' then
		homens:=homens+1;

		if sexo = 'f' then
		begin
		mulheres:=mulheres+1;
		total:=altura+total;
		end

	end;
	writeln();
media:=total/mulheres;
writeln('Quantida de homens: ',homens);
writeln('Maior Altura: ',maiorA);
writeln('Menor Altura: ',menorA);
writeln('Media das mulheres: ',media:3:2);
end.
